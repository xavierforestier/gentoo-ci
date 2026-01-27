 Gentoo-CI Dockerfile

[![Create and publish a Docker image for CI](https://github.com/xavierforestier/gentoo-ci/actions/workflows/publish-gentoo-ci-docker.yml/badge.svg)](https://github.com/xavierforestier/gentoo-ci/actions/workflows/publish-gentoo-ci-docker.yml)

Based on https://github.com/antonfischl1980/icinga thanks

## Provided packages
* acct-group/audio: System group: audio 
   * 0-r3 
* acct-group/cdrom: System group: cdrom 
   * 0-r3 
* acct-group/dialout: System group: dialout 
   * 0-r3 
* acct-group/disk: System group: disk 
   * 0-r3 
* acct-group/floppy: System group: floppy 
   * 0-r1 
* acct-group/input: System group: input 
   * 0-r3 
* acct-group/jobserver: Access to system-wide jobservers 
   * 0 
* acct-group/kmem: System group: kmem 
   * 0-r3 
* acct-group/kvm: System group: kvm 
   * 0-r3 
* acct-group/lp: System group: lp 
   * 0-r3 
* acct-group/mail: Mail program group 
   * 0-r3 
* acct-group/nullmail: A group for the nullmailer 
   * 0-r2 
* acct-group/portage: System group: portage 
   * 0-r2 
* acct-group/render: System group: render 
   * 0-r3 
* acct-group/root: System group: root 
   * 0-r2 
* acct-group/sgx: System group: used for SGX enclaves 
   * 0-r2 
* acct-group/shadow: System group: shadow 
   * 0 
* acct-group/sshd: System group: sshd 
   * 0-r3 
* acct-group/tape: System group: tape 
   * 0-r3 
* acct-group/tty: System group: tty 
   * 0-r3 
* acct-group/usb: System group: usb 
   * 0-r3 
* acct-group/video: System group: video 
   * 0-r3 
* acct-user/mail: Mail program user 
   * 0-r3 
* acct-user/nullmail: A user for the nullmailer 
   * 0-r2 
* acct-user/portage: System user: portage 
   * 0-r4 
* acct-user/postmaster: Postmaster user 
   * 0-r3 
* acct-user/sshd: User for ssh 
   * 0-r3 
* app-admin/eselect: Gentoo's multi-purpose configuration and management tool 
   * 1.4.31 -doc -emacs -vim-syntax
* app-admin/metalog: Highly configurable replacement for syslogd/klogd 
   * 20260105 unicode zlib
* app-admin/perl-cleaner: User land tool for cleaning up old perl installs 
   * 2.31-r2 -pkgcore
* app-admin/sudo: Allows users or groups to run commands as other users 
   * 1.9.17_p2 nls pam secure-path sendmail ssl -gcrypt -ldap -offensive -sasl -selinux -skey -sssd -verify-sig
* app-alternatives/awk: /bin/awk and /usr/bin/awk symlinks 
   * 4 gawk -busybox -mawk -nawk -split-usr
* app-alternatives/bzip2: bzip2 symlink 
   * 1 reference -lbzip2 -pbzip2 -split-usr
* app-alternatives/gpg: gpg symlink 
   * 1-r3 nls reference ssl -freepg -sequoia
* app-alternatives/gzip: gzip symlinks 
   * 1 reference -pigz -split-usr
* app-alternatives/lex: lex symlinks 
   * 0-r1 flex -reflex
* app-alternatives/ninja: ninja symlinks 
   * 1 reference -samurai
* app-alternatives/sh: /bin/sh (POSIX shell) symlink 
   * 0 bash -busybox -dash -ksh -lksh -mksh
* app-alternatives/tar: Tar symlink 
   * 0 gnu -libarchive -split-usr
* app-alternatives/yacc: yacc symlinks 
   * 1-r2 bison -byacc -reference
* app-arch/bzip2: A high-quality data compressor used extensively by Gentoo Linux 
   * 1.0.8-r5 -static -static-libs -verify-sig
* app-arch/gzip: Standard GNU compressor 
   * 1.14 -pic -static -verify-sig
* app-arch/tar: Use this to make tarballs :) 
   * 1.35 acl nls xattr -minimal -selinux -verify-sig
* app-arch/unzip: unzipper for pkzip-compressed files 
   * 6.0_p29 bzip2 unicode -natspec
* app-arch/xz-utils: Utils for managing LZMA compressed files 
   * 5.8.2 extra-filters nls -doc -pgo -static-libs -verify-sig
* app-arch/zstd: zstd fast compression library 
   * 1.5.7-r1 lzma zlib -lz4 -static-libs -test -verify-sig
* app-crypt/gnupg: The GNU Privacy Guard, a GPL OpenPGP implementation 
   * 2.5.16-r1 alternatives bzip2 nls readline smartcard ssl tofu -doc -ldap -selinux -test -tools -tpm -usb -user-socket -verify-sig -wks-server
* app-crypt/gpgme: GnuPG Made Easy is a library for making GnuPG easier to use 
   * 2.0.1-r1 -common-lisp -static-libs -test -verify-sig
* app-crypt/libb2: C library providing BLAKE2b, BLAKE2s, BLAKE2bp, BLAKE2sp 
   * 0.98.1-r3 openmp -native-cflags -static-libs
* app-crypt/libmd: Message Digest functions from BSD systems 
   * 1.1.0 
* app-crypt/pinentry: Simple passphrase entry dialogs which utilize the Assuan protocol 
   * 1.3.2-r1 ncurses -X -caps -efl -emacs -gtk -keyring -qt6 -verify-sig -wayland
* app-doc/info-manual: Manual for the Info reader in GNU Emacs 
   * 30.2 
* app-editors/nano: GNU GPL'd Pico clone with more functionality 
   * 8.7-r1 ncurses nls spell unicode -debug -justify -magic -minimal -verify-sig
* app-eselect/eselect-iptables: Manages the {,/usr}/sbin/iptables symlink 
   * 20220320 
* app-eselect/eselect-lib-bin-symlink: An eselect library to manage executable symlinks 
   * 0.1.1-r1 
* app-eselect/eselect-pinentry: Manage /usr/bin/pinentry symlink 
   * 0.7.4 
* app-eselect/eselect-repository: Manage repos.conf via eselect 
   * 15 git -mercurial -test
* app-i18n/gnulib-l10n: Localization for gnulib 
   * 20241231 
* app-misc/ca-certificates: Common CA Certificates PEM files 
   * 20240203.3.98 -cacert
* app-misc/editor-wrapper: Wrapper scripts that will execute EDITOR or PAGER 
   * 4-r1 
* app-misc/mime-types: Provides /etc/mime.types file 
   * 2.1.54 -nginx
* app-misc/pax-utils: ELF utils that can check files for security relevant properties 
   * 1.3.10 -caps -man -python -seccomp -test
* app-portage/eix: Search and query ebuilds 
   * 0.36.9 nls -debug -doc -sqlite
* app-portage/elt-patches: Collection of patches for libtool.eclass 
   * 20250718 
* app-portage/gemato: Stand-alone Manifest generation & verification tool 
   * 20.12 gpg -pretty-log -test -tools
* app-portage/gentoolkit: Collection of administration scripts for Gentoo 
   * 0.7.1 -test
* app-portage/getuto: Standalone Gentoo gpg trust anchor generation tool for binpkgs 
   * 1.15-r1 -test
* app-portage/portage-utils: Small and fast Portage helper tools written in C 
   * 0.97 openmp qmanifest -static
* app-shells/bash: The standard GNU Bourne again shell 
   * 5.3_p9 net nls readline -afs -bashlogger -examples -mem-scramble -pgo -plugins -verify-sig
* app-shells/push: A POSIX shell function to treat a variable like an array, quoting args 
   * 3.4 
* app-shells/quoter: Quote arguments or standard input for usage in POSIX shell by eval 
   * 4.2 
* app-text/build-docbook-catalog: DocBook XML catalog auto-updater 
   * 2.4 
* app-text/docbook-xml-dtd: Docbook DTD for XML 
   * 4.1.2-r7 
   * 4.2-r3 
   * 4.5-r2 
* app-text/docbook-xsl-ns-stylesheets: XSL Stylesheets for Docbook 
   * 1.79.1 -ruby
* app-text/docbook-xsl-stylesheets: XSL Stylesheets for Docbook 
   * 1.79.1-r4 -ruby
* app-text/opensp: A free, object-oriented toolkit for SGML parsing and entity management 
   * 1.5.2-r10 nls -doc -static-libs -test
* app-text/po4a: Tools to ease the translation of documentation 
   * 0.74-r1 -test
* app-text/scdoc: Standalone tool for generating man pages with a simple syntax 
   * 1.11.4 
* app-text/sgml-common: Base ISO character entities and utilities for SGML 
   * 0.6.3-r7 
* dev-build/autoconf: Used to create autoconfiguration files 
   * 2.72-r6 -verify-sig
* dev-build/autoconf-archive: GNU Autoconf Macro Archive 
   * 2024.10.16-r2 
* dev-build/autoconf-wrapper: Wrapper for autoconf to manage multiple autoconf versions 
   * 20231224 
* dev-build/automake: Used to generate Makefile.in from Makefile.am 
   * 1.18.1 -test -verify-sig
* dev-build/automake-wrapper: Wrapper for automake to manage multiple automake versions 
   * 20250528 
* dev-build/gtk-doc-am: Automake files from gtk-doc 
   * 1.34.0 
* dev-build/libtool: A shared library tool for developers 
   * 2.5.4 -vanilla
* dev-build/make: Standard tool to compile source trees 
   * 4.4.1-r102 nls -doc -guile -static -test -verify-sig
* dev-build/meson: Open source build system 
   * 1.10.1 -test -test-full -verify-sig
* dev-build/meson-format-array: Format shell expressions into a meson array 
   * 0 
* dev-build/ninja: A small build system similar to make 
   * 1.13.2-r1 -doc -test
* dev-db/sqlite: SQL database engine 
   * 3.51.2 readline -debug -doc -icu -secure-delete -static-libs -tcl -test -tools
* dev-lang/perl: Larry Wall's Practical Extraction and Report Language 
   * 5.42.0-r1 gdbm -berkdb -doc -minimal
* dev-lang/python: An interpreted, interactive, object-oriented programming language 
   * 3.13.11 ensurepip gdbm ncurses readline sqlite ssl -bluetooth -debug -examples -jit -libedit -pgo -test -tk -valgrind -verify-sig
   * 3.14.2 ensurepip gdbm ncurses readline sqlite ssl -bluetooth -debug -examples -jit -libedit -pgo -tail-call-interp -test -tk -valgrind -verify-sig
* dev-lang/python-exec: Python script wrapper 
   * 2.4.10 native-symlinks -test
* dev-lang/python-exec-conf: Configuration file for dev-lang/python-exec 
   * 2.4.6 
* dev-libs/expat: Stream-oriented XML parser library 
   * 2.7.3 unicode -examples -static-libs -test
* dev-libs/gmp: Library for arbitrary-precision arithmetic on different type of numbers 
   * 6.3.0-r1 asm cpudetection cxx -doc -pic -static-libs -verify-sig
* dev-libs/libassuan: IPC library used by GnuPG and GPGME 
   * 3.0.0-r1 -verify-sig
* dev-libs/libffi: Portable, high level programming interface to various calling conventions 
   * 3.5.2 exec-static-trampoline -debug -pax-kernel -static-libs -test
* dev-libs/libgcrypt: General purpose crypto library based on the code used in GnuPG 
   * 1.11.2-r1 asm getentropy -doc -static-libs -verify-sig
* dev-libs/libgpg-error: Contains error handling functions used by GnuPG software 
   * 1.58 nls -common-lisp -static-libs -test -verify-sig
* dev-libs/libksba: X.509 and CMS (PKCS#7) library 
   * 1.6.7 -static-libs -verify-sig
* dev-libs/libpcre2: Perl-compatible regular expression library 
   * 10.47 bzip2 jit pcre16 pcre32 readline unicode zlib -libedit -static-libs -valgrind -verify-sig
* dev-libs/libtasn1: ASN.1 library 
   * 4.21.0 -static-libs -verify-sig
* dev-libs/libunistring: Library for manipulating Unicode and C strings according to Unicode standard 
   * 1.3 -doc -static-libs
* dev-libs/libxml2: XML C parser and toolkit 
   * 2.15.1 readline -doc -icu -python -static-libs -test
* dev-libs/libxslt: XSLT libraries and tools 
   * 1.1.45 crypt -debug -debugger -examples -python -static-libs
* dev-libs/mpc: A library for multiprecision complex arithmetic with exact rounding 
   * 1.3.1 -static-libs -verify-sig
* dev-libs/mpdecimal: Correctly-rounded arbitrary precision decimal floating point arithmetic 
   * 4.0.1 -cxx -test
* dev-libs/mpfr: Library for multiple-precision floating-point computations with exact rounding 
   * 4.2.2 -static-libs -verify-sig
* dev-libs/nettle: Low-level cryptographic library 
   * 3.10.2 asm gmp -doc -static-libs -verify-sig
* dev-libs/npth: New GNU Portable Threads Library 
   * 1.8 -test -verify-sig
* dev-libs/openssl: Robust, full-featured Open Source Toolkit for the Transport Layer Security (TLS) 
   * 3.5.4 asm quic -fips -ktls -rfc3779 -sctp -static-libs -test -tls-compression -vanilla -verify-sig -weak-ssl-ciphers
* dev-libs/popt: Parse Options - Command line parser 
   * 1.19-r1 nls -static-libs
* dev-libs/xxhash: Extremely fast non-cryptographic hash algorithm 
   * 0.8.3-r2 -static-libs
* dev-perl/Authen-SASL: Perl SASL interface 
   * 2.190.0 -kerberos -test
* dev-perl/Capture-Tiny: Capture STDOUT and STDERR from Perl, XS, or external programs 
   * 0.500.0-r1 -examples -test
* dev-perl/Class-Inspector: Provides information about Classes 
   * 1.360.0 -test
* dev-perl/Config-AutoConf: Module to implement some of AutoConf macros in pure perl 
   * 0.320.0 -test
* dev-perl/Crypt-URandom: Provide non blocking randomness 
   * 0.540.0 -test
* dev-perl/Digest-HMAC: Keyed Hashing for Message Authentication 
   * 1.50.0 -test
* dev-perl/Error: Error/exception handling in an OO-ish way 
   * 0.170.300-r1 -test
* dev-perl/Exporter-Tiny: An exporter with the features of Sub::Exporter but only core dependencies 
   * 1.6.2 -examples -test
* dev-perl/ExtUtils-CChecker: Configure-time utilities for using C headers 
   * 0.120.0-r1 -test
* dev-perl/File-ShareDir: Locate per-dist and per-module shared files 
   * 1.118.0-r1 -minimal -test
* dev-perl/File-ShareDir-Install: Install shared files 
   * 0.140.0 -test
* dev-perl/File-Slurper: A simple, sane and efficient module to slurp a file 
   * 0.14.0-r1 -examples -minimal -test
* dev-perl/IO-Socket-SSL: Nearly transparent SSL encapsulation for IO::Socket::INET 
   * 2.95.0 -examples -idn -test
* dev-perl/List-MoreUtils: Provide the missing functionality from List::Util 
   * 0.430.0 xs -test
* dev-perl/List-MoreUtils-XS: Compiled List::MoreUtils functions 
   * 0.430.0-r1 -test
* dev-perl/Locale-gettext: A Perl module for accessing the GNU locale utilities 
   * 1.70.0_p20181130 -test
* dev-perl/MIME-Charset: Charset Informations for MIME 
   * 1.13.1 -test
* dev-perl/MailTools: Manipulation of electronic mail addresses 
   * 2.220.0 -examples -test
* dev-perl/Module-Build: Build and install Perl modules 
   * 0.423.400-r5 -test
* dev-perl/Net-SSLeay: Perl extension for using OpenSSL 
   * 1.940.0-r1 -examples -minimal -test
* dev-perl/Params-Util: Utility functions to aid in parameter checking 
   * 1.102.0 -test
* dev-perl/PerlIO-utf8_strict: Fast and correct UTF-8 IO 
   * 0.10.0 -test
* dev-perl/Pod-Parser: POD filters and translators 
   * 1.660.0 -test
* dev-perl/SGMLSpm: Perl library for parsing the output of nsgmls 
   * 1.1-r2 -test
* dev-perl/Syntax-Keyword-Try: A try/catch/finally syntax for Perl 
   * 0.310.0 -test
* dev-perl/TermReadKey: Change terminal modes, and perform non-blocking reads 
   * 2.380.0-r1 -examples -test
* dev-perl/Text-CharWidth: Get number of occupied columns of a string on terminal 
   * 0.40.0-r2 -test
* dev-perl/Text-WrapI18N: Internationalized substitute of Text::Wrap 
   * 0.60.0-r3 -test
* dev-perl/TimeDate: A Date/Time Parsing Perl Module 
   * 2.330.0-r1 -test
* dev-perl/Unicode-LineBreak: UAX #14 Unicode Line Breaking Algorithm 
   * 2019.1.0-r2 -test
* dev-perl/XS-Parse-Keyword: XS functions to assist in parsing keyword syntax 
   * 0.490.0-r1 -test
* dev-perl/YAML-Tiny: Read/Write YAML files with as little code as possible 
   * 1.760.0-r1 -minimal -test
* dev-python/certifi: A certifi hack to use system trust store on Linux/FreeBSD 
   * 3024.7.22 -test
* dev-python/charset-normalizer: The Real First Universal Charset Detector 
   * 3.4.4-r1 native-extensions -debug -test -verify-provenance
* dev-python/cython: A Python to C compiler 
   * 3.2.4 -debug -doc -test -test-full
* dev-python/editables: A Python library for creating 'editable wheels' 
   * 0.5 -test
* dev-python/ensurepip-pip: Shared pip wheel for ensurepip Python module 
   * 25.3 test-rust -test
* dev-python/flit-core: Simplified packaging of Python modules (core module) 
   * 3.12.0 -test
* dev-python/gentoo-common: Common files shared by Python implementations in Gentoo 
   * 1 
* dev-python/gpep517: A backend script to aid installing Python packages in Gentoo 
   * 19 -test
* dev-python/hatch-vcs: Hatch plugin for versioning with your preferred VCS 
   * 0.5.0 -test
* dev-python/hatchling: Modern, extensible Python build backend 
   * 1.28.0 -test
* dev-python/idna: Internationalized Domain Names in Applications (IDNA) 
   * 3.11 
* dev-python/installer: A library for installing Python wheels 
   * 0.7.0 -test
* dev-python/jaraco-context: Context managers by jaraco 
   * 6.1.0 -test
* dev-python/jaraco-functools: Additional functions used by other projects by developer jaraco 
   * 4.4.0 -test
* dev-python/jaraco-text: Text utilities used by other projects by developer jaraco 
   * 4.0.0 -test
* dev-python/jinja2: A full-featured template engine for Python 
   * 3.1.6 -doc -test
* dev-python/librt: Mypyc runtime library 
   * 0.7.8 -debug -test -verify-provenance
* dev-python/lxml: A Pythonic binding for the libxml2 and libxslt libraries 
   * 6.0.2 threads -debug -doc -examples -test
* dev-python/markupsafe: Implements a XML/HTML/XHTML Markup safe string for Python 
   * 3.0.3 native-extensions -debug -test
* dev-python/more-itertools: More routines for operating on iterables, beyond itertools 
   * 10.8.0 -doc
* dev-python/mypy: Optional static typing for Python 
   * 1.19.1 -debug -native-extensions -test
* dev-python/mypy-extensions: Type system extensions for programs checked with mypy 
   * 1.1.0 -test
* dev-python/packaging: Core utilities for Python packages 
   * 26.0 -test -verify-provenance
* dev-python/pathspec: Utility library for gitignore style pattern matching of file paths 
   * 1.0.3 -verify-provenance
* dev-python/platformdirs: A small Python module for determining appropriate platform-specific dirs 
   * 4.5.1 -test -verify-provenance
* dev-python/pluggy: Plugin and hook calling mechanisms for Python 
   * 1.6.0 -test
* dev-python/psutil: Retrieve information on running processes and system utilization 
   * 7.2.1 -debug -test
* dev-python/pysocks: SOCKS client module 
   * 1.7.1-r2 
* dev-python/requests: HTTP library for human beings 
   * 2.32.5 test-rust -socks5 -test
* dev-python/setuptools: Collection of extensions to Distutils 
   * 80.10.2 -test
* dev-python/setuptools-scm: Manage versions by scm tags via setuptools 
   * 9.2.2 -test -verify-provenance
* dev-python/trove-classifiers: Canonical source for classifiers on PyPI (pypi.org) 
   * 2026.1.14.14 -test -verify-provenance
* dev-python/typing-extensions: Backported and Experimental Type Hints for Python 3.7+ 
   * 4.15.0 -test
* dev-python/urllib3: HTTP library with thread-safe connection pooling, file post, and more 
   * 2.6.3 -brotli -http2 -test -verify-provenance -zstd
* dev-python/wheel: A built-package format for Python 
   * 0.46.3 -test -verify-provenance
* dev-util/gperf: A perfect hash function generator 
   * 3.3 
* dev-util/patchelf: Small utility to modify the dynamic linker and RPATH of ELF executables 
   * 0.18.0 
* dev-util/pkgconf: pkg-config compatible replacement with no dependencies other than C99 
   * 2.5.1 native-symlinks -test
* dev-util/re2c: Tool for generating C-based recognizers from regular expressions 
   * 3.1 -debug -test
* dev-vcs/git: Stupid content tracker: distributed VCS designed for speed and efficiency 
   * 2.52.0 curl gpg iconv nls pcre perl safe-directory webdav -cgi -cvs -doc -highlight -keyring -perforce -rust -selinux -subversion -test -tk -xinetd
* mail-mta/nullmailer: Simple relay-only local mail transport agent 
   * 2.2-r2 ssl -test
* net-dns/c-ares: C library that resolves names asynchronously 
   * 1.34.6 -static-libs -test -verify-sig
* net-dns/libidn2: An implementation of the IDNA2008 specifications (RFCs 5890, 5891, 5892, 5893) 
   * 2.3.8 nls -static-libs -verify-sig
* net-firewall/iptables: Linux kernel (2.4+) firewall, NAT and packet mangling tools 
   * 1.8.11-r1 -conntrack -netlink -nftables -pcap -static-libs -test
* net-libs/gnutls: Secure communications library implementing the SSL, TLS and DTLS protocols 
   * 3.8.11 cxx idn nls openssl tls-heartbeat zlib -brotli -dane -doc -examples -pkcs11 -sslv2 -sslv3 -static-libs -systemtap -test -test-full -tools -verify-sig -zstd
* net-libs/libmnl: Minimalistic netlink library 
   * 1.0.5 -examples -verify-sig
* net-libs/libnsl: Public client interface for NIS(YP) in a IPv6 ready version 
   * 2.0.1 -static-libs
* net-libs/libpsl: C library for the Public Suffix List 
   * 0.21.5 idn -icu -static-libs -test
* net-libs/libtirpc: Transport Independent RPC library (SunRPC replacement) 
   * 1.3.7-r2 -kerberos -static-libs
* net-libs/nghttp2: HTTP/2 C Library 
   * 1.68.0 -debug -hpack-tools -jemalloc -systemd -test -utils -xml
* net-libs/nghttp3: HTTP/3 library written in C 
   * 1.15.0 
* net-mail/mailbase: MTA layout package 
   * 1.8.1 pam
* net-misc/curl: A Client that groks URLs 
   * 8.18.0 adns alt-svc ftp hsts http2 http3 httpsrr imap openssl pop3 psl quic smtp ssl tftp websockets -brotli -debug -ech -gnutls -gopher -idn -kerberos -ldap -mbedtls -rtmp -rustls -samba -sasl-scram -ssh -static-libs -telnet -test -verify-sig -zstd
* net-misc/dhcpcd: A fully featured, yet light weight RFC2131 compliant DHCP client 
   * 10.3.0 embedded ipv6 udev -debug -privsep
* net-misc/iputils: Network monitoring tools including ping and ping6 
   * 20250605-r1 arping filecaps nls -caps -clockdiff -doc -idn -test -tracepath -verify-sig
* net-misc/netifrc: Gentoo Network Interface Management Scripts 
   * 0.7.13 dhcp
* net-misc/openssh: Port of OpenBSD's free SSH release 
   * 10.2_p1 pam ssl -audit -debug -kerberos -ldns -libedit -livecd -security-key -selinux -static -test -verify-sig
* net-misc/rsync: File transfer program to keep remote files into sync 
   * 3.4.1-r1 acl iconv ssl xattr xxhash -examples -lz4 -rrsync -stunnel -system-zlib -verify-sig -zstd
* net-misc/wget: Network utility to retrieve files from the WWW 
   * 1.25.0-r1 nls pcre ssl zlib -cookie-check -debug -gnutls -idn -libproxy -metalink -ntlm -static -test -uuid -verify-sig
* perl-core/File-Temp: File::Temp can be used to create and open temporary files in a safe way 
   * 0.231.100-r1 
* sec-keys/openpgp-keys-gentoo-release: OpenPGP keys used for Gentoo releases (snapshots, stages) 
   * 20260125 -test
* sys-apps/acl: Access control list utilities, libraries, and headers 
   * 2.3.2-r2 nls -static-libs
* sys-apps/attr: Extended attributes tools 
   * 2.5.2-r1 nls -debug -static-libs
* sys-apps/baselayout: Filesystem baselayout and init scripts 
   * 2.18-r1 -build -split-usr
* sys-apps/coreutils: Standard GNU utilities (chmod, cp, dd, ls, sort, tr, head, wc, who,...) 
   * 9.9-r12 acl nls openssl xattr -caps -gmp -hostname -kill -multicall -selinux -split-usr -static -test -test-full -vanilla -verify-sig
* sys-apps/diffutils: Tools to make diffs and compare files 
   * 3.12 nls -verify-sig
* sys-apps/file: Identify a file's format by scanning binary data for patterns 
   * 5.46-r3 bzip2 seccomp zlib -lzip -lzma -python -static-libs -verify-sig -zstd
* sys-apps/findutils: GNU utilities for finding files 
   * 4.10.0 nls -selinux -static -test -test-full -verify-sig
* sys-apps/gawk: GNU awk pattern-matching language 
   * 5.3.2 mpfr nls readline -pma -verify-sig
* sys-apps/gentoo-functions: Base functions required by all Gentoo systems 
   * 1.7.4 -test
* sys-apps/grep: GNU regular expression matcher 
   * 3.12 egrep-fgrep nls pcre -static -test-full -verify-sig
* sys-apps/help2man: GNU utility to convert program --help output to a man page 
   * 1.49.3 nls
* sys-apps/install-xattr: Wrapper to coreutils install to preserve Filesystem Extended Attributes 
   * 0.10-r1 
* sys-apps/iproute2: kernel routing and traffic control utilities 
   * 6.18.0 iptables -atm -berkdb -bpf -caps -elf -minimal -nfs -selinux
* sys-apps/kbd: Keyboard and console utilities 
   * 2.9.0-r1 bzip2 nls pam zlib -lzma -selinux -test -zstd
* sys-apps/kmod: Library and tools for managing linux kernel modules 
   * 34.2 lzma tools zlib zstd -debug -doc -pkcs7
* sys-apps/less: Excellent text file viewer 
   * 691 pcre -test -verify-sig
* sys-apps/locale-gen: Generate locales based upon the config file /etc/locale.gen 
   * 3.10 
* sys-apps/net-tools: Standard Linux networking tools 
   * 2.10 arp hostname ipv6 nls -nis -plipconfig -selinux -slattach -static
* sys-apps/openrc: OpenRC manages the services, startup and shutdown of a host 
   * 0.63 netifrc pam sysvinit unicode -audit -bash -debug -newnet -s6 -selinux -sysv-utils
* sys-apps/portage: The package management and distribution system for Gentoo 
   * 3.0.77 ipc native-extensions rsync-verify xattr -apidoc -build -doc -gentoo-dev -selinux -test
* sys-apps/sandbox: sandbox'd LD_PRELOAD hack 
   * 2.46 nnp
* sys-apps/sed: Super-useful stream editor 
   * 4.9-r1 acl nls -selinux -static -test-full -verify-sig
* sys-apps/shadow: Utilities to deal with user accounts 
   * 4.19.2 acl nls pam xattr -audit -selinux -skey -split-usr -su -systemd -test -verify-sig
* sys-apps/systemd-utils: Utilities split out from systemd for OpenRC users 
   * 259-r2 acl kmod tmpfiles udev -boot -kernel-install -secureboot -selinux -split-usr -sysusers -test -ukify
* sys-apps/sysvinit: /sbin/init - parent of all processes 
   * 3.15 nls -ibm -selinux -static -verify-sig
* sys-apps/texinfo: The GNU info program and utilities 
   * 7.2-r4 nls standalone -static
* sys-apps/util-linux: Various useful Linux utilities 
   * 2.41.3 cramfs hardlink logger ncurses nls pam readline su suid unicode -audit -build -caps -cryptsetup -fdformat -kill -magic -python -rtas -selinux -slang -static-libs -systemd -test -tty-helpers -udev -uuidd -verify-sig
* sys-apps/which: Prints out location of specified executables that are in your path 
   * 2.23 
* sys-auth/pambase: PAM base configuration files 
   * 20251104-r1 nullok passwdqc yescrypt -caps -debug -elogind -gnome-keyring -homed -minimal -mktemp -pam_krb5 -pam_ssh -pwhistory -pwquality -securetty -selinux -sha512 -sssd -systemd
* sys-auth/passwdqc: Password strength checking library (and PAM module) 
   * 2.0.3-r1 -verify-sig
* sys-devel/binutils: Tools necessary to build programs 
   * 2.45.1 cet nls plugins zstd -debuginfod -doc -gprofng -hardened -multitarget -pgo -static-libs -test -vanilla -xxhash
* sys-devel/binutils-config: Utility to change the binutils version being used 
   * 5.6 native-symlinks
* sys-devel/bison: A general-purpose (yacc-compatible) parser generator 
   * 3.8.2-r3 nls -examples -static -test -verify-sig
* sys-devel/flex: The Fast Lexical Analyzer 
   * 2.6.4-r6 nls -static -test
* sys-devel/gcc: The GNU Compiler Collection 
   * 15.2.1_p20251122 cet cxx default-stack-clash-protection default-znow fortran nls openmp pie sanitize ssp zstd -ada -cobol -custom-cflags -d -debug -doc -fixed-point -go -graphite -hardened -ieee-long-double -jit -libgdiagnostics -libssp -lto -modula2 -multilib -objc -objc++ -objc-gc -pch -pgo -rust -systemtap -test -time64 -valgrind -vanilla -vtv
* sys-devel/gcc-config: Utility to manage compilers 
   * 2.12.2 cc-wrappers native-symlinks
* sys-devel/gettext: GNU locale utilities 
   * 0.23.2 acl cxx ncurses nls openmp xattr -doc -emacs -git -java -static-libs -verify-sig
* sys-devel/gnuconfig: Updated config.sub and config.guess file from GNU 
   * 20250710 
* sys-devel/m4: GNU macro processor 
   * 1.4.20 nls -examples -verify-sig
* sys-devel/patch: Utility to apply diffs to files 
   * 2.8-r1 xattr -static -test -verify-sig
* sys-fs/e2fsprogs: Standard EXT2/EXT3/EXT4 filesystem utilities 
   * 1.47.3-r1 nls tools -archive -cron -fuse -static-libs -test -verify-sig
* sys-fs/udev-init-scripts: udev startup scripts for openrc 
   * 35 
* sys-kernel/linux-headers: Linux system headers 
   * 6.18 -headers-only
* sys-libs/gdbm: Standard GNU database libraries 
   * 1.26 berkdb nls readline -static-libs -test -verify-sig
* sys-libs/glibc: GNU libc C library 
   * 2.42-r5 cet multiarch ssp static-libs -audit -caps -compile-locales -custom-cflags -doc -gd -hash-sysv-compat -headers-only -multilib -multilib-bootstrap -nscd -perl -profile -selinux -sframe -stack-realign -suid -systemd -systemtap -test -vanilla -verify-sig
* sys-libs/libcap: POSIX 1003.1e capabilities 
   * 2.77 pam -static-libs -tools
* sys-libs/libseccomp: High level interface to Linux seccomp filter 
   * 2.6.0-r3 -debug -python -static-libs -test -verify-sig
* sys-libs/libxcrypt: Extended crypt library for descrypt, md5crypt, bcrypt, and others 
   * 4.4.38-r1 compat system -headers-only -static-libs -test
* sys-libs/ncurses: Console display library 
   * 6.5_p20251220 cxx tinfo -ada -debug -doc -gpm -minimal -profile -split-usr -stack-realign -static-libs -test -trace -verify-sig
* sys-libs/pam: Linux-PAM (Pluggable Authentication Modules) 
   * 1.7.1-r2 nls -audit -berkdb -debug -elogind -examples -nis -selinux -systemd -verify-sig
* sys-libs/readline: Another cute console display library 
   * 8.3_p3 unicode -static-libs -utils -verify-sig
* sys-libs/timezone-data: Timezone data (/usr/share/zoneinfo) and utilities (tzselect/zic/zdump) 
   * 2025c nls -leaps-timezone -zic-slim
* sys-libs/zlib: Standard (de)compression library 
   * 1.3.1-r1 -minizip -static-libs -verify-sig
* sys-process/procps: Standard informational utilities and process-handling tools 
   * 4.0.5-r4 kill ncurses nls unicode -elogind -modern-top -selinux -skill -static-libs -systemd -test
* sys-process/psmisc: A set of tools that use the proc filesystem 
   * 23.7 nls -X -apparmor -selinux -test
* virtual/acl: Virtual for acl support (sys/acl.h) 
   * 0-r2 -static-libs
* virtual/dev-manager: Virtual for the device filesystem manager 
   * 0-r2 
* virtual/editor: Virtual for editor 
   * 0-r7 
* virtual/libc: Virtual for the C library 
   * 1-r1 
* virtual/libcrypt: Virtual for libcrypt.so 
   * 2-r1 -static-libs
* virtual/libiconv: Virtual for the GNU conversion library 
   * 0-r2 
* virtual/libintl: Virtual for the GNU Internationalization Library 
   * 0-r2 
* virtual/logger: Virtual for system loggers 
   * 0-r2 -systemd
* virtual/mta: Virtual for Message Transfer Agents 
   * 1-r2 
* virtual/openssh: Virtual for net-misc/openssh and variants 
   * 0-r1 ssl
* virtual/os-headers: Virtual for operating system headers 
   * 0-r2 
* virtual/package-manager: Virtual for the package manager 
   * 2 
* virtual/pager: Virtual for command-line pagers 
   * 0-r1 
* virtual/perl-CPAN: Virtual for CPAN 
   * 2.380.0 
* virtual/perl-CPAN-Meta: Virtual for CPAN-Meta 
   * 2.150.10-r11 
* virtual/perl-Carp: Virtual for Carp 
   * 1.540.0-r2 
* virtual/perl-Data-Dumper: Virtual for Data-Dumper 
   * 2.192.0 
* virtual/perl-Digest-MD5: Virtual for Digest-MD5 
   * 2.590.0 
* virtual/perl-Digest-SHA: Virtual for Digest-SHA 
   * 6.40.0-r2 
* virtual/perl-Encode: Virtual for Encode 
   * 3.210.0-r2 
* virtual/perl-Exporter: Virtual for Exporter 
   * 5.790.0 
* virtual/perl-ExtUtils-CBuilder: Virtual for ExtUtils-CBuilder 
   * 0.280.242-r2 
* virtual/perl-ExtUtils-MakeMaker: Virtual for ExtUtils-MakeMaker 
   * 7.760.0 
* virtual/perl-ExtUtils-ParseXS: Virtual for ExtUtils-ParseXS 
   * 3.570.0 
* virtual/perl-File-Path: Virtual for File-Path 
   * 2.180.0-r4 
* virtual/perl-File-Spec: Virtual for File-Spec 
   * 3.940.0 
* virtual/perl-File-Temp: Virtual for File-Temp 
   * 0.231.100-r1 
* virtual/perl-IO: Virtual for IO 
   * 1.550.0-r1 
* virtual/perl-JSON-PP: Virtual for JSON-PP 
   * 4.160.0-r3 
* virtual/perl-Math-BigInt: Virtual for Math-BigInt 
   * 2.5.2 
* virtual/perl-Module-Metadata: Virtual for Module-Metadata 
   * 1.0.38-r1 
* virtual/perl-Scalar-List-Utils: Virtual for Scalar::Util and List::Util, also distributed as Scalar::List::Utils 
   * 1.680.100_rc 
* virtual/perl-Test-Harness: Virtual for Test-Harness 
   * 3.500.0-r1 
* virtual/perl-Text-ParseWords: Virtual for Text-ParseWords 
   * 3.310.0-r4 
* virtual/perl-XSLoader: Virtual for XSLoader 
   * 0.320.0-r2 
* virtual/perl-libnet: Virtual for libnet 
   * 3.150.0-r2 ssl
* virtual/perl-podlators: Virtual for podlators 
   * 6.0.2 
* virtual/perl-version: Virtual for version 
   * 0.993.300 
* virtual/pkgconfig: Virtual for the pkg-config implementation 
   * 3 native-symlinks
* virtual/service-manager: Virtual for various service managers 
   * 2 -systemd
* virtual/ssh: Virtual for SSH client and server 
   * 0-r2 -minimal
* virtual/tmpfiles: Virtual to select between different tmpfiles.d handlers 
   * 0-r5 -systemd
* virtual/udev: Virtual to select between different udev daemon providers 
   * 217-r7 -systemd
* virtual/zlib: Virtual for libz.so providers 
   * 1.3.1-r1 -static-libs
Found 307 matches
