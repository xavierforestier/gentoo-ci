
# Build a gentoo stage3 / amd64
FROM gentoo/portage:latest AS portage
FROM gentoo/stage3:amd64-nomultilib-openrc AS builder
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
ENV JOB_COUNT=16
# Switch to ~amd64 and build world
RUN echo 'sys-apps/file -seccomp' > /etc/portage/package.use/sys-apps-file.use
RUN echo 'net-libs/nodejs npm' > /etc/portage/package.use/net-libs-nodejs.use 
RUN echo -e 'virtual/imagemagick-tools jpeg tiff\nmedia-gfx/imagemagick jpeg tiff' > /etc/portage/package.use/virtual-imagemagick-tools.use 
RUN echo 'dev-python/pillow webp' > /etc/portage/package.use/dev-python-pillow.use 
RUN echo -e 'FEATURES="-ipc-sandbox -network-sandbox -pid-sandbox"\nLINGUAS="en"\nACCEPT_KEYWORDS="~amd64"' >>/etc/portage/make.conf
# Specific to home-assistant CI/CD : rebuild python with bluetooth
RUN echo -e 'dev-lang/python bluetooth' > /etc/portage/package.use/dev-lang-python.use
# Last sync / update
COPY repos-gentoo.conf /etc/portage/repos.conf/gentoo.conf
RUN emerge dev-vcs/git && emerge --sync 
RUN emerge -tNDuq --jobs=${JOB_COUNT} @world
RUN FEATURES='-usersandbox' emerge --jobs=${JOB_COUNT} --jobs-tmpdir-require-free-gb=0 -q app-admin/sudo app-eselect/eselect-repository app-misc/jq app-portage/gentoolkit dev-util/pkgcheck dev-util/shellcheck-bin dev-vcs/git \
    dev-libs/boost virtual/fortran dev-lang/lua x11-base/xorg-proto net-libs/nodejs app-eselect/eselect-rust dev-lang/rust-bin sci-ml/transformers \ 
    virtual/imagemagick-tools virtual/lapack virtual/cblas virtual/blas virtual/ttf-fonts virtual/libusb virtual/cron virtual/libudev sci-ml/caffe2 sci-ml/onnyx media-video/ffmpeg  
# Cleanup
RUN emerge -t --depclean && rm -rf /var/cache/distfiles/* /var/log/*.log && wget "https://www.gentoo.org/dtd/metadata.dtd" -O /var/cache/distfiles/metadata.dtd
# Cleanup : drop man-pages, an exotic locales
RUN emerge -C sys-apps/man-pages virtual/man && rm -R /usr/share/{man,doc}/ && find /usr/share/locale/ -maxdepth 1 -mindepth 1 \! -name "en*" -print0|xargs -r0 rm -Rv && emerge -t --depclean
RUN rm -rf /var/cache/distfiles/* /var/log/*.log || true 
RUN rm -rf /var/db/repos/gentoo
FROM scratch
COPY --from=builder / /
