
# Build a gentoo stage3 / amd64
FROM gentoo/portage:latest AS portage
FROM gentoo/stage3:amd64-nomultilib-openrc AS builder
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
ENV JOB_COUNT=16
# Switch to ~amd64 and build world
RUN echo -e 'FEATURES="-ipc-sandbox -network-sandbox -pid-sandbox"\nLINGUAS="en"\nACCEPT_KEYWORDS="~amd64"' >>/etc/portage/make.conf
COPY repos-gentoo.conf /etc/portage/repos.conf/gentoo.conf
RUN FEATURES='-usersandbox' emerge --jobs=${JOB_COUNT} -q dev-vcs/git portage app-portage/gentoolkit app-admin/sudo
# Cleanup
RUN emerge -t --depclean && rm -rf /var/cache/distfiles/* /var/log/*.log && wget "https://www.gentoo.org/dtd/metadata.dtd" -O /var/cache/distfiles/metadata.dtd
# Last sync / update
#COPY repos-gentoo.conf /etc/portage/repos.conf/gentoo.conf
#RUN rm -rf /var/db/repos/gentoo && cd /var/db/repos/ && git clone https://github.com/gentoo-mirror/gentoo.git
RUN emerge --sync 
RUN emerge -NDuq --jobs-tmpdir-require-free-gb=0 --jobs=${JOB_COUNT} @world
# Cleanup : drop man-pages, an exotic locales
RUN emerge -C sys-apps/man-pages virtual/man && rm -R /usr/share/{man,doc}/ && find /usr/share/locale/ -maxdepth 1 -mindepth 1 \! -name "en*" -print0|xargs -r0 rm -Rv && emerge -t --depclean
RUN rm -rf /var/cache/distfiles/* /var/log/*.log || true 
FROM scratch
COPY --from=builder / /
