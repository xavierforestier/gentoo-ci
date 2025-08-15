FROM gentoo/portage:latest as portage

FROM gentoo/stage3:amd64-nomultilib-openrc as builder
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo

RUN echo 'FEATURES="-ipc-sandbox -network-sandbox -pid-sandbox"' >>/etc/portage/make.conf && \
    echo -e 'LINGUAS="en"\nACCEPT_KEYWORDS="~amd64"' >>/etc/portage/make.conf && \
    emerge -tuqDN --jobs @world && \
    emerge -C sys-apps/man-pages virtual/man && \
    rm -R /usr/share/{man,doc}/ && \
    emerge -tv --depclean && \
    echo -e 'dev-lang/python bluetooth' >>/etc/portage/package.use/dev-lang-python.use && \
	emerge --jobs -q python  && \
    find /usr/share/locale/ -maxdepth 1 -mindepth 1 \! -name "en*" -print0|xargs -r0 rm -Rv && \
    FEATURES='-usersandbox' emerge --jobs -q \
	app-admin/sudo \
	app-eselect/eselect-repository \
	app-misc/jq \
	app-portage/gentoolkit \
	dev-util/pkgcheck \
	dev-util/shellcheck-bin \
	dev-vcs/git \
 	dev-libs/boost virtual/fortran dev-lang/lua	x11-base/xorg-proto \
	&& \
    emerge -tv --depclean && \
    rm -rf /var/cache/distfiles/* /var/log/*.log && \
    wget "https://www.gentoo.org/dtd/metadata.dtd" -O /var/cache/distfiles/metadata.dtd

COPY repos-gentoo.conf /etc/portage/repos.conf/gentoo.conf

RUN rm -rf /var/db/repos/gentoo && emerge --sync

FROM scratch
COPY --from=builder / /
CMD [ "bash" ]
