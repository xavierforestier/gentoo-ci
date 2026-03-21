
# Build a gentoo stage3 / amd64
FROM gentoo/portage:latest AS portage
FROM gentoo/stage3:amd64-nomultilib-openrc AS builder
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
ENV JOB_COUNT=16
# Switch to ~amd64 and build world
RUN echo -e 'FEATURES="-ipc-sandbox -network-sandbox -pid-sandbox"\nLINGUAS="en"\nACCEPT_KEYWORDS="~amd64"' >>/etc/portage/make.conf
RUN FEATURES='-usersandbox' emerge --jobs=${JOB_COUNT} -q app-eselect/eselect-repository app-eselect/eselect-python portage app-portage/gentoolkit app-admin/sudo dev-vcs/git dev-libs/boost virtual/fortran dev-lang/lua x11-base/xorg-proto net-libs/nodejs dev-lang/rust-bin
# Cleanup
RUN emerge -t --depclean && rm -rf /var/cache/distfiles/* /var/log/*.log && wget "https://www.gentoo.org/dtd/metadata.dtd" -O /var/cache/distfiles/metadata.dtd
# Last sync / update
RUN eselect repository remove -f gentoo 
RUN rm -rf /var/db/repos/gentoo || true
RUN eselect repository add gentoo git https://github.com/gentoo-mirror/gentoo
RUN emerge --sync 
RUN emerge -NDuq --jobs-tmpdir-require-free-gb=0 --jobs=${JOB_COUNT} @world
# upgrade python
RUN mkdir -p /etc/portage/package.use
# Activate Python 3.14 when possible, and let python 3.13 as default
RUN eselect python update
RUN echo -e "*/* PYTHON_TARGETS: -* python3_13 python3_14\n*/* PYTHON_SINGLE_TARGET: -* python3_14" > /etc/portage/package.use/zzz.use
RUN emerge -q --jobs=${JOB_COUNT} --verbose-conflicts --deep --with-bdeps=y --newuse --jobs-tmpdir-require-free-gb=0 --update -q --backtrack=300 \ 
          --autounmask=y --autounmask-continue=y --autounmask-write=y --autounmask-license=y --autounmask-backtrack=y --autounmask-use=y --autounmask-keep-masks=n --autounmask-keep-keywords=n \
          world --changed-use --with-bdeps=y
# Try to disable the most python 3.13
RUN echo -e "*/* PYTHON_TARGETS: -* python3_14\n*/* PYTHON_SINGLE_TARGET: -* python3_14" > /etc/portage/package.use/zzz.use
RUN emerge -q --jobs=${JOB_COUNT} --verbose-conflicts --deep --with-bdeps=y --newuse --jobs-tmpdir-require-free-gb=0 --update -q --backtrack=300 \
          --autounmask=y --autounmask-continue=y --autounmask-write=y --autounmask-license=y --autounmask-backtrack=y --autounmask-use=y --autounmask-keep-masks=n --autounmask-keep-keywords=n \
          world --changed-use --with-bdeps=y
# Rename python specifics deps USE flags with a clearer name
RUN mv /etc/portage/package.use/zzz.use /etc/portage/package.use/python.use
# Cleanup : drop man-pages, an exotic locales
RUN emerge -C sys-apps/man-pages virtual/man && rm -R /usr/share/{man,doc}/ && find /usr/share/locale/ -maxdepth 1 -mindepth 1 \! -name "en*" -print0|xargs -r0 rm -Rv && emerge -t --depclean
RUN rm -rf /var/cache/distfiles/* /var/log/*.log || true 
FROM scratch
COPY --from=builder / /
