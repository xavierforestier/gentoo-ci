 Gentoo-CI Dockerfile

[![Create and publish a Docker image for CI](https://github.com/xavierforestier/gentoo-ci/actions/workflows/publish-gentoo-ci-docker.yml/badge.svg)](https://github.com/xavierforestier/gentoo-ci/actions/workflows/publish-gentoo-ci-docker.yml)

Based on https://github.com/antonfischl1980/icinga thanks

## Provided packages
### app-admin: Non-core applications which relate to system administration
* eselect: Gentoo's multi-purpose configuration and management tool 
   * 1.4.32 -doc -emacs -vim-syntax
* metalog: Highly configurable replacement for syslogd/klogd 
   * 20260902 unicode zlib
* perl-cleaner: User land tool for cleaning up old perl installs 
   * 2.31-r3 -pkgcore
* sudo: Allows users or groups to run commands as other users 
   * 1.9.17_p2-r1 nls pam secure-path sendmail ssl -gcrypt -ldap -offensive -sasl -selinux -skey -sssd -verify-sig
Found 4 matches
### app-alternatives: Packages providing symlinks linking different available implementations for various executables
* awk: /bin/awk and /usr/bin/awk symlinks 
   * 4 gawk -busybox -mawk -nawk -split-usr
* bzip2: bzip2 symlink 
   * 1 reference -lbzip2 -pbzip2 -split-usr
* gpg: gpg symlink 
   * 1-r3 nls reference ssl -freepg -sequoia
* gzip: gzip symlinks 
   * 1 reference -pigz -split-usr
* lex: lex symlinks 
   * 0-r1 flex -reflex
* ninja: ninja symlinks 
   * 1 reference -samurai
* sh: /bin/sh (POSIX shell) symlink 
   * 0 bash -busybox -dash -ksh -lksh -mksh
* tar: Tar symlink 
   * 0 gnu -libarchive -split-usr
* yacc: yacc symlinks 
   * 1-r2 bison -byacc -reference
Found 9 matches
### app-arch: Tools for archiving, compressing and uncompressing files or groups of files
* brotli: Generic-purpose lossless compression algorithm 
   * 1.2.1 -debug -python -test
* bzip2: A high-quality data compressor used extensively by Gentoo Linux 
   * 1.0.8-r5 -static -static-libs -verify-sig
* gzip: Standard GNU compressor 
   * 1.15 -pic -static -verify-sig
* libarchive: Multi-format archive and compression library 
   * 3.8.11 acl bzip2 e2fsprogs iconv lzma xattr zstd -blake2 -expat -lz4 -lzo -nettle -static-libs -test -verify-sig
* tar: Use this to make tarballs :) 
   * 1.35-r1 acl nls xattr -minimal -selinux -test -verify-sig
* unzip: unzipper for pkzip-compressed files 
   * 6.0_p31 bzip2 unicode -natspec
* xz-utils: Utils for managing LZMA compressed files 
   * 5.8.4 extra-filters nls -doc -pgo -static-libs -verify-sig
* zstd: zstd fast compression library 
   * 1.5.7-r1 lzma zlib -lz4 -static-libs -test -verify-sig
Found 8 matches
### app-crypt: Cryptographic (encryption, decryption, steganography and signing) software
* gnupg: The GNU Privacy Guard, a GPL OpenPGP implementation 
   * 2.5.24-r2 alternatives bzip2 nls readline smartcard ssl tofu -doc -ldap -selinux -test -tools -tpm -usb -user-socket -verify-sig -wks-server
* gpgme: GnuPG Made Easy is a library for making GnuPG easier to use 
   * 2.3.1 -common-lisp -static-libs -test -verify-sig
* libb2: C library providing BLAKE2b, BLAKE2s, BLAKE2bp, BLAKE2sp 
   * 0.98.1-r3 openmp -native-cflags -static-libs
* libmd: Message Digest functions from BSD systems 
   * 1.3.0 -verify-sig
* pinentry: Simple passphrase entry dialogs which utilize the Assuan protocol 
   * 1.3.3 ncurses -X -caps -efl -emacs -gtk -keyring -qt6 -selinux -verify-sig -wayland
* rhash: Console utility and library for computing and verifying file hash sums 
   * 1.4.6-r1 nls ssl -debug -static-libs
Found 6 matches
### app-doc: Various miscellaneous documentation collections
* info-manual: Manual for the Info reader in GNU Emacs 
   * 31.1 
### app-editors: Text editors
* nano: GNU GPL'd Pico clone with more functionality 
   * 9.3 ncurses nls spell unicode -debug -justify -magic -minimal -verify-sig
### app-eselect: Modules for the eselect configuration and administration tool
* eselect-iptables: Manages the {,/usr}/sbin/iptables symlink 
   * 20220320 
* eselect-lib-bin-symlink: An eselect library to manage executable symlinks 
   * 0.1.1-r1 
* eselect-lua: Lua eselect module 
   * 4-r3 
* eselect-pinentry: Manage /usr/bin/pinentry symlink 
   * 0.7.5 
* eselect-repository: Manage repos.conf via eselect 
   * 15 git -mercurial -test
* eselect-rust: Eselect module for management of multiple Rust versions 
   * 20210703 
Found 6 matches
### app-i18n: Internationalisation-related packages
* gnulib-l10n: Localization for gnulib 
   * 20241231 
### app-misc: Various miscellaneous application packages which don't belong anywhere else
* ca-certificates: Common CA Certificates PEM files 
   * 20260816.3.131.1-r1 -cacert
* editor-wrapper: Wrapper scripts that will execute EDITOR or PAGER 
   * 4-r1 
* jq: A lightweight and flexible command-line JSON processor 
   * 1.8.2 oniguruma -static-libs -test
* mime-types: Provides /etc/mime.types file 
   * 2.1.54 -nginx
* pax-utils: ELF utils that can check files for security relevant properties 
   * 1.3.11 -caps -man -python -seccomp -test
* yq: Command-line YAML processor - jq wrapper for YAML documents 
   * 4.4.5 yq-symlink -test
Found 6 matches
### app-portage: Software which works with portage or ebuilds
* eix: Search and query ebuilds 
   * 0.36.9 nls -debug -doc -sqlite
* elt-patches: Collection of patches for libtool.eclass 
   * 20250718 
* gemato: Stand-alone Manifest generation & verification tool 
   * 20.15 gpg -pretty-log -test -tools
* gentoolkit: Collection of administration scripts for Gentoo 
   * 0.8.2 -test
* getuto: Standalone Gentoo gpg trust anchor generation tool for binpkgs 
   * 2.0 -test
* portage-utils: Small and fast Portage helper tools written in C 
   * 0.97.1 openmp qmanifest -static
Found 6 matches
### app-shells: Shells and their extensions
* bash: The standard GNU Bourne again shell 
   * 5.3_p20-r1 net nls readline -afs -bashlogger -examples -mem-scramble -pgo -plugins -verify-sig
* push: A POSIX shell function to treat a variable like an array, quoting args 
   * 3.4 
* quoter: Quote arguments or standard input for usage in POSIX shell by eval 
   * 4.2 
Found 3 matches
### app-text: Tools for working with human-language text files
* build-docbook-catalog: DocBook XML catalog auto-updater 
   * 2.4 
* docbook-xml-dtd: Docbook DTD for XML 
   * 4.1.2-r7 
   * 4.2-r3 
   * 4.5-r2 
* docbook-xsl-ns-stylesheets: XSL Stylesheets for Docbook 
   * 1.79.1 -ruby
* docbook-xsl-stylesheets: XSL Stylesheets for Docbook 
   * 1.79.1-r4 -ruby
* opensp: A free, object-oriented toolkit for SGML parsing and entity management 
   * 1.5.2-r10 nls -doc -static-libs -test
* po4a: Tools to ease the translation of documentation 
   * 0.74-r1 -test
* scdoc: Standalone tool for generating man pages with a simple syntax 
   * 1.11.5 
* sgml-common: Base ISO character entities and utilities for SGML 
   * 0.6.3-r7 
Found 8 matches
### dev-build: "Build systems and related tools
* autoconf: Used to create autoconfiguration files 
   * 2.73-r2 -verify-sig
* autoconf-archive: GNU Autoconf Macro Archive 
   * 2024.10.16-r2 
* autoconf-wrapper: Wrapper for autoconf to manage multiple autoconf versions 
   * 20260320 
* automake: Used to generate Makefile.in from Makefile.am 
   * 1.20 -test -verify-sig
* automake-wrapper: Wrapper for automake to manage multiple automake versions 
   * 20261107 
* b2: A system for large project software construction, simple to use and powerful 
   * 5.6.1 -examples
* cmake: Cross platform Make 
   * 4.3.6 ncurses -dap -doc -gui -test -verify-sig
* gtk-doc-am: Automake files from gtk-doc 
   * 1.36.1 
* libtool: A shared library tool for developers 
   * 2.6.2 -vanilla -verify-sig
* make: Standard tool to compile source trees 
   * 4.4.1-r102 nls -doc -guile -static -test -verify-sig
* meson: Open source build system 
   * 1.12.1 -test -test-full -verify-sig
* ninja: A small build system similar to make 
   * 1.13.2-r1 -doc -test
Found 12 matches
### dev-cpp: Libraries and utilities relevant to the c++ programming language
* ada: WHATWG-compliant and fast URL parser written in modern C++ 
   * 4.0.0 
* simdutf: Unicode validation and transcoding at billions of characters per second 
   * 9.3.3 -doc -test
Found 2 matches
### dev-db: Libraries and utilities for database related programming
* sqlite: SQL database engine 
   * 3.54.1 readline -debug -doc -icu -secure-delete -static-libs -tcl -test -test-full -tools
### dev-lang: Various programming language implementations and related tools
* lua: A powerful light-weight programming language designed for extending applications 
   * 5.4.8 deprecated readline
* perl: Larry Wall's Practical Extraction and Report Language 
   * 5.44.0 gdbm -berkdb -doc -minimal
* python: An interpreted, interactive, object-oriented programming language 
   * 3.14.10_p1 ensurepip gdbm ncurses readline sqlite ssl -bluetooth -build -debug -examples -libedit -pgo -tail-call-interp -test -tk -valgrind -verify-sig
   * 3.15.2_p1 ensurepip gdbm ncurses readline sqlite ssl -bluetooth -build -debug -examples -jit -libedit -pgo -tail-call-interp -test -tk -valgrind -verify-sig
* python-exec: Python script wrapper 
   * 2.4.10 native-symlinks -test
* python-exec-conf: Configuration file for dev-lang/python-exec 
   * 2.4.6 
* rust-bin: Systems programming language from Mozilla 
   * 1.100.0 clippy rustfmt -big-endian -doc -prefix -rust-analyzer -rust-src -rustc-dev -verify-sig
Found 6 matches
### dev-libs: Various miscellaneous programming libraries
* boost: Boost Libraries for C++ 
   * 1.91.0-r4 bzip2 context nls stacktrace zlib -debug -doc -icu -lzma -mpi -numpy -python -test -test-full -tools -zstd
* elfutils: Libraries/utilities to handle ELF objects (drop in replacement for libelf) 
   * 0.197 bzip2 debuginfod libarchive lzma nls utils -libpfm -stackprof -static-libs -test -threads -valgrind -verify-sig -zstd
* expat: Stream-oriented XML parser library 
   * 2.10.0 unicode -examples -static-libs -test
* gmp: Library for arbitrary-precision arithmetic on different type of numbers 
   * 6.3.0-r2 asm cpudetection cxx -doc -pic -static-libs -verify-sig
* icu: International Components for Unicode 
   * 78.3 -debug -doc -examples -static-libs -test -verify-sig
* json-c: A JSON implementation in C 
   * 0.19-r3 -static-libs -test -threads
* jsoncpp: C++ JSON reader and writer 
   * 1.9.8 -doc -test
* leancrypto: Lean cryptographic library usable for bare-metal environments 
   * 1.8.0 asm -test -tools -verify-sig
* libassuan: IPC library used by GnuPG and GPGME 
   * 3.0.0-r1 -verify-sig
* libffi: Portable, high level programming interface to various calling conventions 
   * 3.8.1 exec-static-trampoline -debug -pax-kernel -static-libs -test
* libgcrypt: General purpose crypto library based on the code used in GnuPG 
   * 1.12.4 asm getentropy -doc -static-libs -verify-sig
* libgpg-error: Contains error handling functions used by GnuPG software 
   * 1.61 nls -common-lisp -static-libs -test -verify-sig
* libksba: X.509 and CMS (PKCS#7) library 
   * 1.9.1 -static-libs -verify-sig
* libpcre2: Perl-compatible regular expression library 
   * 10.49 bzip2 jit pcre16 pcre32 readline unicode zlib -libedit -static-libs -valgrind -verify-sig
* libtasn1: ASN.1 library 
   * 4.21.0 -static-libs -verify-sig
* libunistring: Library for manipulating Unicode and C strings according to Unicode standard 
   * 1.4.2 -doc -static-libs
* libuv: Cross-platform asynchronous I/O 
   * 1.53.0 -verify-sig
* libxml2: XML C parser and toolkit 
   * 2.15.4 readline -doc -icu -python -static-libs -test
* libxslt: XSLT libraries and tools 
   * 1.1.45-r1 crypt -debug -debugger -examples -python -static-libs
* libyaml: YAML 1.1 parser and emitter written in C 
   * 0.2.5 -doc -static-libs -test
* mpc: A library for multiprecision complex arithmetic with exact rounding 
   * 1.4.1 -static-libs -verify-sig
* mpdecimal: Correctly-rounded arbitrary precision decimal floating point arithmetic 
   * 4.0.1 -cxx -test
* mpfr: Library for multiple-precision floating-point computations with exact rounding 
   * 4.2.2 -static-libs -verify-sig
* nettle: Low-level cryptographic library 
   * 3.10.2 asm gmp -doc -static-libs -verify-sig
* npth: New GNU Portable Threads Library 
   * 1.8 -test -verify-sig
* oniguruma: Regular expression library for different character encodings 
   * 6.9.10 -crnl-as-line-terminator -static-libs
* openssl: Robust, full-featured Open Source Toolkit for the Transport Layer Security (TLS) 
   * 4.1.0 asm quic -fips -ktls -rfc3779 -sctp -static-libs -test -tls-compression -vanilla -verify-sig -weak-ssl-ciphers
* popt: Parse Options - Command line parser 
   * 1.19-r1 nls -static-libs
* simdjson: SIMD accelerated C++ JSON library 
   * 5.1.1 all-impls -nan -test -tools
* xxhash: Extremely fast non-cryptographic hash algorithm 
   * 0.8.4 -static-libs
Found 30 matches
### dev-perl: Libraries and utilities relevant to the Perl programming language
* Authen-SASL: Perl SASL interface 
   * 2.200.0 -kerberos -test
* Capture-Tiny: Capture STDOUT and STDERR from Perl, XS, or external programs 
   * 0.500.0-r1 -examples -test
* Class-Inspector: Provides information about Classes 
   * 1.360.0 -test
* Config-AutoConf: Module to implement some of AutoConf macros in pure perl 
   * 0.320.0 -test
* Crypt-URandom: Provide non blocking randomness 
   * 0.550.0 -test
* Digest-HMAC: Keyed Hashing for Message Authentication 
   * 1.50.0 -test
* Error: Error/exception handling in an OO-ish way 
   * 0.170.300-r1 -test
* Exporter-Tiny: An exporter with the features of Sub::Exporter but only core dependencies 
   * 1.6.3 -examples -test
* ExtUtils-CChecker: Configure-time utilities for using C headers 
   * 0.120.0-r1 -test
* File-ShareDir: Locate per-dist and per-module shared files 
   * 1.118.0-r1 -minimal -test
* File-ShareDir-Install: Install shared files 
   * 0.140.0 -test
* File-Slurper: A simple, sane and efficient module to slurp a file 
   * 0.14.0-r1 -examples -minimal -test
* IO-Socket-SSL: Nearly transparent SSL encapsulation for IO::Socket::INET 
   * 2.95.0 -examples -idn -test
* List-MoreUtils: Provide the missing functionality from List::Util 
   * 0.430.0 xs -test
* List-MoreUtils-XS: Compiled List::MoreUtils functions 
   * 0.430.0-r1 -test
* Locale-gettext: A Perl module for accessing the GNU locale utilities 
   * 1.70.0_p20181130 -test
* MIME-Charset: Charset Informations for MIME 
   * 1.13.1 -test
* MailTools: Manipulation of electronic mail addresses 
   * 2.220.0 -examples -test
* Module-Build: Build and install Perl modules 
   * 0.423.400-r5 -test
* Net-SSLeay: Perl extension for using OpenSSL 
   * 1.960.0-r1 -examples -minimal -test
* Params-Util: Utility functions to aid in parameter checking 
   * 1.102.0 -test
* PerlIO-utf8_strict: Fast and correct UTF-8 IO 
   * 0.10.0 -test
* Pod-Parser: POD filters and translators 
   * 1.660.0 -test
* SGMLSpm: Perl library for parsing the output of nsgmls 
   * 1.1-r2 -test
* Syntax-Keyword-Try: A try/catch/finally syntax for Perl 
   * 0.310.0 -test
* TermReadKey: Change terminal modes, and perform non-blocking reads 
   * 2.380.0-r1 -examples -test
* Text-CharWidth: Get number of occupied columns of a string on terminal 
   * 0.40.0-r2 -test
* Text-WrapI18N: Internationalized substitute of Text::Wrap 
   * 0.60.0-r3 -test
* TimeDate: A Date/Time Parsing Perl Module 
   * 2.330.0-r1 -test
* Unicode-LineBreak: UAX #14 Unicode Line Breaking Algorithm 
   * 2019.1.0-r2 -test
* XS-Parse-Keyword: XS functions to assist in parsing keyword syntax 
   * 0.490.0-r1 -test
* YAML-Tiny: Read/Write YAML files with as little code as possible 
   * 1.760.0-r1 -minimal -test
Found 32 matches
### dev-python: Packages whose primary purpose is to provide Python modules, extensions and bindings, as well as tools and utilities useful for development in the Python programming language
* argcomplete: Bash tab completion for argparse 
   * 3.7.2 -test -verify-provenance
* certifi: A certifi hack to use system trust store on Linux/FreeBSD 
   * 3024.7.22 -test
* charset-normalizer: The Real First Universal Charset Detector 
   * 3.5.2 -debug -native-extensions -test -verify-provenance
* cython: A Python to C compiler 
   * 3.3.1 -debug -test -test-full
* editables: A Python library for creating 'editable wheels' 
   * 0.6 -test
* ensurepip-pip: Shared pip wheel for ensurepip Python module 
   * 26.3 test-rust -test
* flit-core: Simplified packaging of Python modules (core module) 
   * 4.2.0 -test -verify-provenance
* gentoo-common: Common files shared by Python implementations in Gentoo 
   * 1 
* gpep517: A backend script to aid installing Python packages in Gentoo 
   * 23 -test
* hatch-vcs: Hatch plugin for versioning with your preferred VCS 
   * 0.5.0 -test
* hatchling: Modern, extensible Python build backend 
   * 1.33.0 -test
* idna: Internationalized Domain Names in Applications (IDNA) 
   * 3.20 -test -verify-provenance
* installer: A library for installing Python wheels 
   * 1.1.0 -test -verify-provenance
* jaraco-context: Context managers by jaraco 
   * 6.1.2 -test
* jaraco-functools: Additional functions used by other projects by developer jaraco 
   * 4.6.0 -test
* jaraco-text: Text utilities used by other projects by developer jaraco 
   * 4.3.0 -test
* jinja2: A full-featured template engine for Python 
   * 3.1.6 -doc -test -verify-provenance
* lxml: A Pythonic binding for the libxml2 and libxslt libraries 
   * 6.1.3 threads -debug -doc -examples -test
* markupsafe: Implements a XML/HTML/XHTML Markup safe string for Python 
   * 3.0.4 native-extensions -debug -test -verify-provenance
* more-itertools: More routines for operating on iterables, beyond itertools 
   * 11.2.1 -doc
* packaging: Core utilities for Python packages 
   * 26.3 -test -verify-provenance
* pathspec: Utility library for gitignore style pattern matching of file paths 
   * 1.1.1 -verify-provenance
* platformdirs: A small Python module for determining appropriate platform-specific dirs 
   * 4.14.8 -test -verify-provenance
* pluggy: Plugin and hook calling mechanisms for Python 
   * 1.7.0 -test -verify-provenance
* pysocks: SOCKS client module 
   * 1.7.1-r2 
* pyyaml: YAML parser and emitter for Python 
   * 6.0.4 -debug -examples -test
* requests: HTTP library for human beings 
   * 2.34.2 test-rust -socks5 -test -verify-provenance
* setuptools: Collection of extensions to Distutils 
   * 84.2.1 -test
* setuptools-scm: Manage versions by scm tags via setuptools 
   * 10.3.4 -test -verify-provenance
* tomlkit: Style preserving TOML library 
   * 0.15.2 -test
* trove-classifiers: Canonical source for classifiers on PyPI (pypi.org) 
   * 2026.9.21.13 -test -verify-provenance
* urllib3: HTTP library with thread-safe connection pooling, file post, and more 
   * 2.8.0 -brotli -http2 -test -verify-provenance -zstd
* vcs-versioning: Core VCS versioning functionality from setuptools-scm 
   * 2.6.0 -test -verify-provenance
* wheel: A built-package format for Python 
   * 0.48.0 -test -verify-provenance
* xmltodict: Makes working with XML feel like you are working with JSON 
   * 1.0.4 -test -verify-provenance
Found 35 matches
### dev-util: Various miscellaneous development utilities
* debugedit: Create debuginfo and source file distributions 
   * 5.4 -test -verify-sig
* gperf: A perfect hash function generator 
   * 3.3 
* pkgconf: pkg-config compatible replacement with no dependencies other than C99 
   * 3.0.11 native-symlinks
* re2c: Tool for generating C-based recognizers from regular expressions 
   * 3.1 -debug -test
Found 4 matches
### dev-vcs: Utilities focused on version control
* git: Stupid content tracker: distributed VCS designed for speed and efficiency 
   * 2.56.1 curl gpg iconv nls pcre perl rust safe-directory webdav -cgi -cvs -debug -doc -highlight -keyring -perforce -selinux -subversion -test -tk -xinetd
### mail-mta: Mail transport agent packages
* nullmailer: Simple relay-only local mail transport agent 
   * 2.2-r2 ssl -test
### net-dns: DNS (Domain Name Service) related software
* c-ares: C library that resolves names asynchronously 
   * 1.34.9 -static-libs -test -verify-sig
* libidn2: An implementation of the IDNA2008 specifications (RFCs 5890, 5891, 5892, 5893) 
   * 2.3.8 nls -static-libs -verify-sig
Found 2 matches
### net-firewall: Network firewall software
* iptables: Linux kernel (2.4+) firewall, NAT and packet mangling tools 
   * 1.8.13 -conntrack -netlink -nftables -pcap -static-libs -test -verify-sig
### net-libs: Libraries that are network-related
* gnutls: Secure communications library implementing the SSL, TLS and DTLS protocols 
   * 3.8.14 cxx idn nls openssl post-quantum tls-heartbeat zlib -brotli -dane -doc -examples -pkcs11 -sslv2 -sslv3 -static-libs -systemtap -test -test-full -tools -verify-sig -zstd
* libmicrohttpd: Small C library to run an HTTP server as part of another application 
   * 1.0.5 epoll eventfd ssl thread-names -debug -static-libs -test -verify-sig
* libmnl: Minimalistic netlink library 
   * 1.0.5 -examples -verify-sig
* libnsl: Public client interface for NIS(YP) in a IPv6 ready version 
   * 2.0.1 -static-libs
* libpsl: C library for the Public Suffix List 
   * 0.23.3 idn -icu -static-libs -test
* libtirpc: Transport Independent RPC library (SunRPC replacement) 
   * 1.3.7-r2 -kerberos -static-libs
* nghttp2: HTTP/2 C Library 
   * 1.71.0 -debug -hpack-tools -systemd -test -utils -verify-sig -xml
* nghttp3: HTTP/3 library written in C 
   * 1.19.0 -verify-sig
* ngtcp2: Implementation of the IETF QUIC Protocol 
   * 1.26.0 openssl ssl -gnutls -verify-sig
* nodejs: A JavaScript runtime built on Chrome's V8 JavaScript engine 
   * 24.22.3-r1 icu inspector npm snapshot ssl system-icu system-ssl -corepack -debug -doc -lto -pax-kernel -test
Found 10 matches
### net-mail: Various email-related utilities
* mailbase: MTA layout package 
   * 1.8.1 pam
### net-misc: Various miscellaneous networking tools and utilities
* curl: A Client that groks URLs 
   * 8.23.0-r1 adns alt-svc ftp hsts http2 http3 httpsrr imap openssl pop3 psl quic smtp ssl tftp websockets -brotli -debug -ech -gnutls -gopher -idn -kerberos -ldap -mbedtls -rustls -sasl-scram -ssh -static-libs -telnet -test -verify-sig -zstd
* dhcpcd: A fully featured, yet light weight RFC2131 compliant DHCP client 
   * 10.5.2 embedded ipv6 udev -debug -privsep -verify-sig
* iputils: Network monitoring tools including ping and ping6 
   * 20250605-r4 arping caps filecaps nls suid -clockdiff -doc -idn -test -tracepath -verify-sig
* netifrc: Gentoo Network Interface Management Scripts 
   * 0.7.14-r1 dhcp -systemd
* openssh: Port of OpenBSD's free SSH release 
   * 10.6_p2 pam seccomp ssl -audit -debug -kerberos -ldns -libedit -livecd -security-key -selinux -static -test -verify-sig
* rsync: File transfer program to keep remote files into sync 
   * 3.5.2-r1 acl iconv ssl xattr xxhash -examples -idn -lz4 -rrsync -stunnel -system-zlib -test -verify-sig -zstd
* wget: Network utility to retrieve files from the WWW 
   * 1.25.0-r3 nls pcre psl ssl zlib -debug -gnutls -idn -libproxy -metalink -ntlm -static -test -uuid -verify-sig
Found 7 matches
### perl-core: Libraries and utilities relevant to the Perl programming language which correspond to parts of core 
* File-Temp: File::Temp can be used to create and open temporary files in a safe way 
   * 0.231.200 -test
### sec-keys: Cryptographic key bundles such as OpenPGP keys used by upstream to sign distfiles
* openpgp-keys-gentoo-release: OpenPGP keys used for Gentoo releases (snapshots, stages) 
   * 20260125 -test
### sys-apps: Various core system applications, and some non-core system applications which have not yet been moved out into other sys- categories
* acl: Access control list utilities, libraries, and headers 
   * 2.4.0-r2 nls -static-libs -verify-sig
* attr: Extended attributes tools 
   * 2.6.0 nls -debug -static-libs -verify-sig
* baselayout: Filesystem baselayout and init scripts 
   * 2.18-r1 -build -split-usr
* coreutils: Standard GNU utilities (chmod, cp, dd, ls, sort, tr, head, wc, who,...) 
   * 9.12 acl nls openssl xattr -caps -gmp -hostname -kill -multicall -selinux -split-usr -static -test -test-full -vanilla -verify-sig
* diffutils: Tools to make diffs and compare files 
   * 3.12 nls -verify-sig
* file: Identify a file's format by scanning binary data for patterns 
   * 5.48 bzip2 seccomp zlib -lzip -lzma -python -static-libs -verify-sig -zstd
* findutils: GNU utilities for finding files 
   * 4.11.0 nls -selinux -static -test -test-full -verify-sig
* gawk: GNU awk pattern-matching language 
   * 5.4.2 mpfr nls readline -pma -verify-sig
* gentoo-functions: Base functions required by all Gentoo systems 
   * 1.7.7 -test
* grep: GNU regular expression matcher 
   * 3.12 egrep-fgrep nls pcre -static -test-full -verify-sig
* help2man: GNU utility to convert program --help output to a man page 
   * 1.49.3 nls
* install-xattr: Wrapper to coreutils install to preserve Filesystem Extended Attributes 
   * 0.13 
* iproute2: kernel routing and traffic control utilities 
   * 7.3.0 iptables -atm -berkdb -bpf -caps -elf -minimal -nfs -selinux
* kbd: Keyboard and console utilities 
   * 2.10.0 bzip2 nls pam zlib -lzma -selinux -test -xkb -zstd
* kmod: Library and tools for managing linux kernel modules 
   * 34.2 lzma tools zlib zstd -debug -doc -pkcs7
* less: Excellent text file viewer 
   * 710 pcre -test -verify-sig
* locale-gen: Generate locales based upon the config file /etc/locale.gen 
   * 3.10 
* lsb-release: LSB version query program 
   * 3.3 
* net-tools: Standard Linux networking tools 
   * 2.10 arp hostname ipv6 nls -nis -plipconfig -selinux -slattach -static
* openrc: OpenRC manages the services, startup and shutdown of a host 
   * 0.64.1-r1 netifrc pam sysvinit unicode -audit -bash -debug -newnet -s6 -selinux -sysv-utils
* portage: The package management and distribution system for Gentoo 
   * 3.0.83-r1 ipc native-extensions rsync-verify xattr -apidoc -build -doc -gentoo-dev -selinux -test
* sandbox: sandbox'd LD_PRELOAD hack 
   * 2.51 nnp
* sed: Super-useful stream editor 
   * 4.10-r1 acl nls xattr -selinux -static -test-full -verify-sig
* shadow: Utilities to deal with user accounts 
   * 4.20.2 acl nls pam -audit -selinux -skey -split-usr -su -systemd -test -verify-sig
* systemd-utils: Utilities split out from systemd for OpenRC users 
   * 262 acl kmod sysctl tmpfiles udev -boot -kernel-install -secureboot -selinux -split-usr -sysusers -test -ukify
* sysvinit: /sbin/init - parent of all processes 
   * 3.18 nls -ibm -selinux -static -verify-sig
* texinfo: The GNU info program and utilities 
   * 7.3 nls standalone -static -test -verify-sig
* util-linux: Various useful Linux utilities 
   * 2.42.4 cramfs hardlink logger ncurses nls pam readline su suid unicode -audit -build -caps -cryptsetup -fdformat -kill -magic -python -rtas -selinux -slang -static-libs -systemd -test -tty-helpers -udev -uuidd -verify-sig
* which: Prints out location of specified executables that are in your path 
   * 2.23 
Found 29 matches
### sys-auth: Applications and libraries to support authentication and authorization facilities. Here belongs PAM modules, NSS modules and login apps
* pam_xdg: PAM module that manages XDG Base Directories 
   * 0.8.5 
* pambase: PAM base configuration files 
   * 20260730 nullok passwdqc yescrypt -caps -debug -elogind -gnome-keyring -homed -minimal -mktemp -pam_krb5 -pam_ssh -pwhistory -pwquality -securetty -selinux -sha512 -sssd -systemd -turnstile
* passwdqc: Password strength checking library (and PAM module) 
   * 2.1.0-r1 -audit -verify-sig
Found 3 matches
### sys-devel: Various core system development tools and libraries
* binutils: Tools necessary to build programs 
   * 2.47 cet debuginfod nls plugins zstd -doc -gprofng -hardened -multitarget -pgo -static-libs -test -vanilla -verify-sig -xxhash
* binutils-config: Utility to change the binutils version being used 
   * 5.6 native-symlinks
* bison: A general-purpose (yacc-compatible) parser generator 
   * 3.8.2-r3 nls -examples -static -test -verify-sig
* flex: The Fast Lexical Analyzer 
   * 2.6.4-r6 nls -static -test
* gcc: The GNU Compiler Collection 
   * 16.2.1_p20260926 cet cxx default-stack-clash-protection default-znow fortran nls openmp pie sanitize ssp zstd -ada -algol68 -cobol -custom-cflags -d -debug -doc -fixed-point -go -graphite -hardened -ieee-long-double -jit -libgdiagnostics -libssp -lto -modula2 -multilib -objc -objc++ -objc-gc -pch -pgo -rust -systemtap -test -time64 -valgrind -vanilla -vtv
* gcc-config: Utility to manage compilers 
   * 2.12.2 cc-wrappers native-symlinks
* gettext: GNU locale utilities 
   * 0.23.2 acl cxx ncurses nls openmp xattr -doc -emacs -git -java -static-libs -verify-sig
* gnuconfig: Updated config.sub and config.guess file from GNU 
   * 20260517 
* m4: GNU macro processor 
   * 1.4.21 nls -examples -verify-sig
* patch: Utility to apply diffs to files 
   * 2.8.1 xattr -static -test -verify-sig
Found 10 matches
### sys-fs: Filesystem tools and utilities
* e2fsprogs: Standard EXT2/EXT3/EXT4 filesystem utilities 
   * 1.47.4 nls tools -archive -cron -fuse -static-libs -test -verify-sig
* udev-init-scripts: udev startup scripts for openrc 
   * 35 
Found 2 matches
### sys-kernel: Kernel source ebuilds and kernel-related tools
* linux-headers: Linux system headers 
   * 7.1 -headers-only
### sys-libs: Various system-level libraries
* gdbm: Standard GNU database libraries 
   * 1.26 berkdb nls readline -static-libs -test -verify-sig
* glibc: GNU libc C library 
   * 2.44-r4 cet multiarch ssp static-libs -audit -caps -clang -compile-locales -custom-cflags -doc -gd -hash-sysv-compat -headers-only -multilib -multilib-bootstrap -nscd -old-kernel -perl -profile -selinux -sframe -stack-realign -suid -systemd -systemtap -test -vanilla -verify-sig
* libcap: POSIX 1003.1e capabilities 
   * 2.78 pam -static-libs -tools
* libseccomp: High level interface to Linux seccomp filter 
   * 2.6.1 -debug -python -static-libs -test -verify-sig
* libxcrypt: Extended crypt library for descrypt, md5crypt, bcrypt, and others 
   * 4.5.2-r1 compat system -headers-only -static-libs -test
* ncurses: Console display library 
   * 6.5_p20251220 cxx tinfo -ada -debug -doc -gpm -minimal -profile -split-usr -stack-realign -static-libs -test -trace -verify-sig
* pam: Linux-PAM (Pluggable Authentication Modules) 
   * 1.7.3 nls -audit -berkdb -debug -elogind -examples -nis -selinux -systemd -verify-sig
* readline: Another cute console display library 
   * 8.3_p6-r2 unicode -static-libs -utils -verify-sig
* timezone-data: Timezone data (/usr/share/zoneinfo) and utilities (tzselect/zic/zdump) 
   * 2026f nls -leaps-timezone -verify-sig -zic-slim
* zlib: Standard (de)compression library 
   * 1.4 -minizip -static-libs -verify-sig
Found 10 matches
### sys-process: Packages which query or manipulate processes. The 'cron' daemons are included in this
* procps: Standard informational utilities and process-handling tools 
   * 4.0.6 kill ncurses nls unicode -elogind -modern-top -selinux -skill -static-libs -systemd -test -verify-sig
* psmisc: A set of tools that use the proc filesystem 
   * 23.7 nls -X -apparmor -selinux -test -verify-sig
Found 2 matches
### virtual: Packages which satisfy virtual dependencies
* acl: Virtual for acl support (sys/acl.h) 
   * 2.4.0 -static-libs
* dev-manager: Virtual for the device filesystem manager 
   * 0-r2 
* editor: Virtual for editor 
   * 0-r8 
* fortran: Virtual for Fortran Compiler 
   * 0-r1 openmp
* libc: Virtual for the C library 
   * 1-r1 
* libcrypt: Virtual for libcrypt.so 
   * 2-r1 -static-libs
* libiconv: Virtual for the GNU conversion library 
   * 0-r2 
* libintl: Virtual for the GNU Internationalization Library 
   * 0-r2 
* logger: Virtual for system loggers 
   * 0-r3 -systemd
* mta: Virtual for Message Transfer Agents 
   * 1-r2 
* openssh: Virtual for net-misc/openssh and variants 
   * 0-r2 ssl
* os-headers: Virtual for operating system headers 
   * 0-r2 
* package-manager: Virtual for the package manager 
   * 2 
* pager: Virtual for command-line pagers 
   * 0-r1 
* perl-CPAN: Virtual for CPAN 
   * 2.380.0-r1 
* perl-CPAN-Meta: Virtual for CPAN-Meta 
   * 2.150.13 
* perl-Carp: Virtual for Carp 
   * 1.540.0-r3 
* perl-Data-Dumper: Virtual for Data-Dumper 
   * 2.192.0-r1 
* perl-Digest-MD5: Virtual for Digest-MD5 
   * 2.590.0-r1 
* perl-Digest-SHA: Virtual for Digest-SHA 
   * 6.40.0-r3 
* perl-Encode: Virtual for Encode 
   * 3.240.0 
* perl-Exporter: Virtual for Exporter 
   * 5.790.0-r1 
* perl-ExtUtils-CBuilder: Virtual for ExtUtils-CBuilder 
   * 0.280.243 
* perl-ExtUtils-MakeMaker: Virtual for ExtUtils-MakeMaker 
   * 7.780.0 
* perl-ExtUtils-ParseXS: Virtual for ExtUtils-ParseXS 
   * 3.630.0 
* perl-File-Path: Virtual for File-Path 
   * 2.180.0-r5 
* perl-File-Spec: Virtual for File-Spec 
   * 3.950.0 
* perl-File-Temp: Virtual for File-Temp 
   * 0.231.200 
* perl-IO: Virtual for IO 
   * 1.560.0 
* perl-JSON-PP: Virtual for JSON-PP 
   * 4.160.0-r4 
* perl-Math-BigInt: Virtual for Math-BigInt 
   * 2.5.3 
* perl-Module-Metadata: Virtual for Module-Metadata 
   * 1.0.39 
* perl-Scalar-List-Utils: Virtual for Scalar::Util and List::Util, also distributed as Scalar::List::Utils 
   * 1.700.0 
* perl-Test-Harness: Virtual for Test-Harness 
   * 3.520.0 
* perl-Text-ParseWords: Virtual for Text-ParseWords 
   * 3.310.0-r5 
* perl-XSLoader: Virtual for XSLoader 
   * 0.320.0-r3 
* perl-libnet: Virtual for libnet 
   * 3.150.0-r3 ssl
* perl-podlators: Virtual for podlators 
   * 6.0.2-r1 
* perl-version: Virtual for version 
   * 0.993.400 
* pkgconfig: Virtual for the pkg-config implementation 
   * 3 native-symlinks
* service-manager: Virtual for various service managers 
   * 3 -systemd
* ssh: Virtual for SSH client and server 
   * 0-r2 -minimal
* tmpfiles: Virtual to select between different tmpfiles.d handlers 
   * 0-r7 -systemd
* udev: Virtual to select between different udev daemon providers 
   * 217-r7 -systemd
* zlib: Virtual for libz.so providers 
   * 1.3.1-r1 -static-libs
Found 45 matches
### x11-base: Various X11 base implementations
* xorg-proto: X.Org combined protocol headers 
   * 2026.1 -test
