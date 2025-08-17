
# Build a gentoo stage3 / amd64
FROM gentoo/portage:latest AS portage
FROM gentoo/stage3:amd64-nomultilib-openrc AS builder
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
ENV JOB_COUNT=16
# Switch to ~amd64 and build world
RUN echo 'sys-apps/file -seccomp' > /etc/portage/package.use/sys-apps-file.use && echo 'net-libs/nodejs npm' > /etc/portage/net-libs-nodejs.use && echo -e 'FEATURES="-ipc-sandbox -network-sandbox -pid-sandbox"\nLINGUAS="en"\nACCEPT_KEYWORDS="~amd64"' >>/etc/portage/make.conf && emerge -tuqDN --jobs=${JOB_COUNT} @world
# Specific to home-assistant CI/CD : rebuild python with bluetooth
RUN echo -e 'dev-lang/python bluetooth' > /etc/portage/package.use/dev-lang-python.use && emerge --jobs=${JOB_COUNT} -q python:3.13
# Specific to home-assistant CI/CD : prebuild some packages / tools
RUN FEATURES='-usersandbox' emerge --jobs=${JOB_COUNT} -q app-admin/sudo app-eselect/eselect-repository app-misc/jq app-portage/gentoolkit dev-util/pkgcheck dev-util/shellcheck-bin dev-vcs/git dev-libs/boost virtual/fortran dev-lang/lua x11-base/xorg-proto net-libs/nodejs
# Cleanup
RUN emerge -tv --depclean && rm -rf /var/cache/distfiles/* /var/log/*.log && wget "https://www.gentoo.org/dtd/metadata.dtd" -O /var/cache/distfiles/metadata.dtd
# Last sync / update
COPY repos-gentoo.conf /etc/portage/repos.conf/gentoo.conf
RUN rm -rf /var/db/repos/gentoo && emerge --sync && emerge -NDuq --jobs=${JOB_COUNT} @world && ( rm -rf /var/cache/distfiles/* /var/log/*.log || true )
# Cleanup : drop man-pages, an exotic locales
RUN emerge -C sys-apps/man-pages virtual/man && rm -R /usr/share/{man,doc}/ && find /usr/share/locale/ -maxdepth 1 -mindepth 1 \! -name "en*" -print0|xargs -r0 rm -Rv && emerge -tv --depclean

FROM scratch
COPY --from=builder / /
