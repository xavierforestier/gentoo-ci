# Gentoo-CI Dockerfile
[![Create and publish a Docker image for CI](https://github.com/xavierforestier/gentoo-ci/actions/workflows/publish-gentoo-ci-docker.yml/badge.svg)](https://github.com/xavierforestier/gentoo-ci/actions/workflows/publish-gentoo-ci-docker.yml)

This Docker image is for personal CI and testing purposes, mostly for my Icinga Overlay at https://github.com/antonfischl1980/icinga

## Provided packages
* acct-group/audio: System group: audio 
   * 0-r3 
* acct-group/cdrom: System group: cdrom 
   * 0-r3 
* acct-group/cron: A group for sys-process/cronbase 
   * 0-r2 
* acct-group/crontab: System group: crontab 
   * 0-r2 
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
* acct-group/messagebus: System group: messagebus 
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
* acct-user/cron: A user for sys-process/cronbase 
   * 0-r3 
* acct-user/mail: Mail program user 
   * 0-r3 
* acct-user/messagebus: System user: messagebus 
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
* app-admin/metalog: A highly configurable replacement for syslogd/klogd 
   * 20230719 unicode
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
* app-arch/brotli: Generic-purpose lossless compression algorithm 
   * 1.2.0 -debug -python -test
* app-arch/bzip2: A high-quality data compressor used extensively by Gentoo Linux 
   * 1.0.8-r5 -static -static-libs -verify-sig
* app-arch/gzip: Standard GNU compressor 
   * 1.14 -pic -static -verify-sig
* app-arch/libarchive: Multi-format archive and compression library 
   * 3.8.4 acl bzip2 e2fsprogs iconv lzma xattr zstd -blake2 -expat -lz4 -lzo -nettle -static-libs -test -verify-sig
* app-arch/tar: Use this to make tarballs :) 
   * 1.35 acl nls xattr -minimal -selinux -verify-sig
* app-arch/unzip: unzipper for pkzip-compressed files 
   * 6.0_p29 bzip2 unicode -natspec
* app-arch/xz-utils: Utils for managing LZMA compressed files 
   * 5.8.2 extra-filters nls -doc -pgo -static-libs -verify-sig
* app-arch/zstd: zstd fast compression library 
   * 1.5.7-r1 lzma zlib -lz4 -static-libs -test
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
* app-crypt/rhash: Console utility and library for computing and verifying file hash sums 
   * 1.4.6-r1 nls ssl -debug -static-libs
* app-doc/info-manual: Manual for the Info reader in GNU Emacs 
   * 30.2 
* app-editors/nano: GNU GPL'd Pico clone with more functionality 
   * 8.7 ncurses nls spell unicode -debug -justify -magic -minimal
* app-eselect/eselect-iptables: Manages the {,/usr}/sbin/iptables symlink 
   * 20220320 
* app-eselect/eselect-lib-bin-symlink: An eselect library to manage executable symlinks 
   * 0.1.1-r1 
* app-eselect/eselect-lua: Lua eselect module 
   * 4-r1 
* app-eselect/eselect-pinentry: Manage /usr/bin/pinentry symlink 
   * 0.7.4 
* app-eselect/eselect-repository: Manage repos.conf via eselect 
   * 15 git -mercurial -test
* app-eselect/eselect-rust: Eselect module for management of multiple Rust versions 
   * 20210703 
* app-i18n/gnulib-l10n: Localization for gnulib 
   * 20241231 
* app-misc/ca-certificates: Common CA Certificates PEM files 
   * 20240203.3.98 -cacert
* app-misc/editor-wrapper: Wrapper scripts that will execute EDITOR or PAGER 
   * 4-r1 
* app-misc/jq: A lightweight and flexible command-line JSON processor 
   * 1.8.1 oniguruma -static-libs -test
* app-misc/mime-types: Provides /etc/mime.types file 
   * 2.1.54 -nginx
* app-misc/pax-utils: ELF utils that can check files for security relevant properties 
   * 1.3.10 -caps -man -python -seccomp -test
* app-portage/eix: Search and query ebuilds 
   * 0.36.9 nls -debug -doc -sqlite
* app-portage/elt-patches: Collection of patches for libtool.eclass 
   * 20250718 
* app-portage/gemato: Stand-alone Manifest generation & verification tool 
   * 20.11 gpg -pretty-log -test -tools
* app-portage/gentoolkit: Collection of administration scripts for Gentoo 
   * 0.6.11 -test
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
   * 4.4-r3 
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
* app-text/xmlto: Script for converting XML and DocBook documents to a variety of output formats 
   * 0.0.28-r11 -latex -text
* dev-build/autoconf: Used to create autoconfiguration files 
   * 2.72-r5 -verify-sig
* dev-build/autoconf-archive: GNU Autoconf Macro Archive 
   * 2024.10.16-r2 
* dev-build/autoconf-wrapper: Wrapper for autoconf to manage multiple autoconf versions 
   * 20231224 
* dev-build/automake: Used to generate Makefile.in from Makefile.am 
   * 1.18.1 -test -verify-sig
* dev-build/automake-wrapper: Wrapper for automake to manage multiple automake versions 
   * 20250528 
* dev-build/b2: A system for large project software construction, simple to use and powerful 
   * 5.3.3 -examples
* dev-build/cmake: Cross platform Make 
   * 4.2.1 ncurses -dap -doc -gui -test -verify-sig
* dev-build/gtk-doc-am: Automake files from gtk-doc 
   * 1.34.0 
* dev-build/libtool: A shared library tool for developers 
   * 2.5.4 -vanilla
* dev-build/make: Standard tool to compile source trees 
   * 4.4.1-r102 nls -doc -guile -static -test -verify-sig
* dev-build/meson: Open source build system 
   * 1.10.0 -test -test-full -verify-sig
* dev-build/meson-format-array: Format shell expressions into a meson array 
   * 0 
* dev-build/ninja: A small build system similar to make 
   * 1.13.2-r1 -doc -test
* dev-cpp/ada: WHATWG-compliant and fast URL parser written in modern C++ 
   * 3.3.0 
* dev-cpp/eigen: C++ template library for linear algebra 
   * 3.4.0-r3 openmp -adolc -boost -cholmod -clang -cuda -debug -doc -fftw -hip -klu -lapack -mathjax -opengl -pastix -sparsehash -spqr -superlu -test -umfpack
* dev-cpp/simdutf: Unicode validation and transcoding at billions of characters per second 
   * 7.7.1 -doc -test
* dev-db/sqlite: SQL database engine 
   * 3.51.1 readline -debug -doc -icu -secure-delete -static-libs -tcl -test -tools
* dev-lang/lua: A powerful light-weight programming language designed for extending applications 
   * 5.4.8 deprecated readline
* dev-lang/nasm: groovy little assembler 
   * 3.01 -doc
* dev-lang/perl: Larry Wall's Practical Extraction and Report Language 
   * 5.42.0-r1 gdbm -berkdb -doc -minimal
* dev-lang/python: An interpreted, interactive, object-oriented programming language 
   * 3.13.11 bluetooth ensurepip gdbm ncurses readline sqlite ssl -debug -examples -jit -libedit -pgo -test -tk -valgrind -verify-sig
   * 3.14.0_p1 bluetooth ensurepip gdbm ncurses readline sqlite ssl -debug -examples -jit -libedit -pgo -tail-call-interp -test -tk -valgrind -verify-sig
* dev-lang/python-exec: Python script wrapper 
   * 2.4.10 native-symlinks -test
* dev-lang/python-exec-conf: Configuration file for dev-lang/python-exec 
   * 2.4.6 
* dev-lang/rust-bin: Systems programming language from Mozilla 
   * 1.92.0 -big-endian -clippy -doc -prefix -rust-analyzer -rust-src -rustfmt -verify-sig
* dev-libs/boost: Boost Libraries for C++ 
   * 1.88.0-r1 bzip2 context nls stacktrace zlib -debug -doc -icu -lzma -mpi -numpy -python -test -test-full -tools -zstd
* dev-libs/elfutils: Libraries/utilities to handle ELF objects (drop in replacement for libelf) 
   * 0.194 bzip2 lzma nls utils -debuginfod -libarchive -stacktrace -static-libs -test -valgrind -verify-sig -zstd
* dev-libs/ell: Embedded Linux Library provides core, low-level functionality for system daemons 
   * 0.81 -pie -test
* dev-libs/expat: Stream-oriented XML parser library 
   * 2.7.3 unicode -examples -static-libs -test
* dev-libs/glib: The GLib library of C routines 
   * 2.84.4-r1 elf introspection mime xattr -dbus -debug -doc -selinux -static-libs -sysprof -systemtap -test -utils
* dev-libs/gmp: Library for arbitrary-precision arithmetic on different type of numbers 
   * 6.3.0-r1 asm cpudetection cxx -doc -pic -static-libs
* dev-libs/gobject-introspection: Introspection system for GObject-based libraries 
   * 1.84.0-r1 -doctool -gtk-doc -test
* dev-libs/gobject-introspection-common: Build infrastructure for GObject Introspection 
   * 1.84.0 
* dev-libs/icu: International Components for Unicode 
   * 77.1 -debug -doc -examples -static-libs -test -verify-sig
* dev-libs/json-c: A JSON implementation in C 
   * 0.18 -doc -static-libs -test -threads
* dev-libs/jsoncpp: C++ JSON reader and writer 
   * 1.9.6-r2 -doc -test
* dev-libs/libassuan: IPC library used by GnuPG and GPGME 
   * 3.0.0-r1 -verify-sig
* dev-libs/libffi: Portable, high level programming interface to various calling conventions 
   * 3.5.2 exec-static-trampoline -debug -pax-kernel -static-libs -test
* dev-libs/libgcrypt: General purpose crypto library based on the code used in GnuPG 
   * 1.11.2 asm getentropy -doc -static-libs -verify-sig
* dev-libs/libgpg-error: Contains error handling functions used by GnuPG software 
   * 1.58 nls -common-lisp -static-libs -test -verify-sig
* dev-libs/libical: Implementation of basic iCAL protocols 
   * 3.0.20-r2 glib introspection -doc -examples -static-libs -test -vala
* dev-libs/libksba: X.509 and CMS (PKCS#7) library 
   * 1.6.7 -static-libs -verify-sig
* dev-libs/libltdl: A shared library tool for developers 
   * 2.5.4 -static-libs
* dev-libs/libpcre2: Perl-compatible regular expression library 
   * 10.47 bzip2 jit pcre16 pcre32 readline unicode zlib -libedit -static-libs -valgrind -verify-sig
* dev-libs/libtasn1: ASN.1 library 
   * 4.20.0 -static-libs -test -verify-sig
* dev-libs/libunistring: Library for manipulating Unicode and C strings according to Unicode standard 
   * 1.3 -doc -static-libs
* dev-libs/libusb: Userspace access to USB devices 
   * 1.0.29 -debug -doc -examples -static-libs -test -udev
* dev-libs/libuv: Cross-platform asychronous I/O 
   * 1.51.0-r1 -verify-sig
* dev-libs/libxml2: XML C parser and toolkit 
   * 2.15.1 readline -doc -icu -python -static-libs -test
* dev-libs/libxslt: XSLT libraries and tools 
   * 1.1.45 crypt -debug -debugger -examples -python -static-libs
* dev-libs/libyaml: YAML 1.1 parser and emitter written in C 
   * 0.2.5 -doc -static-libs -test
* dev-libs/mpc: A library for multiprecision complex arithmetic with exact rounding 
   * 1.3.1 -static-libs
* dev-libs/mpdecimal: Correctly-rounded arbitrary precision decimal floating point arithmetic 
   * 4.0.1 -cxx -test
* dev-libs/mpfr: Library for multiple-precision floating-point computations with exact rounding 
   * 4.2.2 -static-libs -verify-sig
* dev-libs/nettle: Low-level cryptographic library 
   * 3.10.2 asm gmp -doc -static-libs -verify-sig
* dev-libs/npth: New GNU Portable Threads Library 
   * 1.8 -test
* dev-libs/oniguruma: Regular expression library for different character encodings 
   * 6.9.10 -crnl-as-line-terminator -static-libs
* dev-libs/openssl: Robust, full-featured Open Source Toolkit for the Transport Layer Security (TLS) 
   * 3.5.4 asm quic -fips -ktls -rfc3779 -sctp -static-libs -test -tls-compression -vanilla -verify-sig -weak-ssl-ciphers
* dev-libs/popt: Parse Options - Command line parser 
   * 1.19-r1 nls -static-libs
* dev-libs/simdjson: SIMD accelerated C++ JSON library 
   * 4.2.4 all-impls -test -tools
* dev-libs/tree-sitter: Tree-sitter is a parser generator tool and an incremental parsing library 
   * 0.25.10 
* dev-libs/tree-sitter-bash: Bash grammar for Tree-sitter 
   * 0.25.1 python -debug -test
* dev-libs/xxhash: Extremely fast non-cryptographic hash algorithm 
   * 0.8.3-r1 
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
   * 2019.1.0-r1 -test
* dev-perl/XS-Parse-Keyword: XS functions to assist in parsing keyword syntax 
   * 0.490.0-r1 -test
* dev-perl/YAML-Tiny: Read/Write YAML files with as little code as possible 
   * 1.760.0-r1 -minimal -test
* dev-python/certifi: A certifi hack to use system trust store on Linux/FreeBSD 
   * 3024.7.22 -test
* dev-python/chardet: Universal encoding detector 
   * 5.2.0 -test
* dev-python/charset-normalizer: The Real First Universal Charset Detector 
   * 3.4.4-r1 native-extensions -debug -test -verify-provenance
* dev-python/cython: A Python to C compiler 
   * 3.2.3 -debug -doc -test -test-full
* dev-python/docutils: Python Documentation Utilities (reference reStructuredText impl.) 
   * 0.22.4 
* dev-python/editables: A Python library for creating 'editable wheels' 
   * 0.5 -test
* dev-python/ensurepip-pip: Shared pip wheel for ensurepip Python module 
   * 25.3 test-rust -test
* dev-python/filelock: A platform independent file lock for Python 
   * 3.20.1 -test -verify-provenance
* dev-python/flit-core: Simplified packaging of Python modules (core module) 
   * 3.12.0 -test
* dev-python/fsspec: A specification that python filesystems should adhere to 
   * 2025.12.0 -test
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
* dev-python/jaraco-collections: Models and classes to supplement the stdlib collections module 
   * 5.2.1 -test
* dev-python/jaraco-context: Context managers by jaraco 
   * 6.0.2 -test
* dev-python/jaraco-functools: Additional functions used by other projects by developer jaraco 
   * 4.4.0 -test
* dev-python/jaraco-text: Text utilities used by other projects by developer jaraco 
   * 4.0.0 -test
* dev-python/jinja2: A full-featured template engine for Python 
   * 3.1.6 -doc -test
* dev-python/lazy-object-proxy: A fast and thorough lazy object proxy 
   * 1.12.0 native-extensions -debug -test
* dev-python/librt: Mypyc runtime library 
   * 0.7.5 -debug -test -verify-provenance
* dev-python/lxml: A Pythonic binding for the libxml2 and libxslt libraries 
   * 6.0.2 threads -debug -doc -examples -test
* dev-python/markupsafe: Implements a XML/HTML/XHTML Markup safe string for Python 
   * 3.0.3 native-extensions -debug -test
* dev-python/meson-python: Meson PEP 517 Python build backend 
   * 0.18.0-r1 -test
* dev-python/more-itertools: More routines for operating on iterables, beyond itertools 
   * 10.8.0 -doc
* dev-python/mypy: Optional static typing for Python 
   * 1.19.1 -debug -native-extensions -test
* dev-python/mypy-extensions: Type system extensions for programs checked with mypy 
   * 1.1.0 -test
* dev-python/numpy: Fast array and numerical python library 
   * 2.4.0 cpudetection lapack -big-endian -debug -index64 -test -verify-provenance
* dev-python/olefile: Python package to parse, read and write Microsoft OLE2 files 
   * 0.47 -doc
* dev-python/packaging: Core utilities for Python packages 
   * 25.0 -test
* dev-python/pathspec: Utility library for gitignore style pattern matching of file paths 
   * 0.12.1 
* dev-python/pillow: Python Imaging Library (fork) 
   * 12.0.0 jpeg webp zlib -avif -debug -examples -imagequant -jpeg2k -lcms -test -tiff -tk -truetype -xcb
* dev-python/platformdirs: A small Python module for determining appropriate platform-specific dirs 
   * 4.5.1 -test -verify-provenance
* dev-python/pluggy: Plugin and hook calling mechanisms for Python 
   * 1.6.0 -test
* dev-python/psutil: Retrieve information on running processes and system utilization 
   * 7.2.1 -debug -test
* dev-python/pybind11: AST-based Python refactoring library 
   * 3.0.1 -test
* dev-python/pygments: Pygments is a syntax highlighting package written in Python 
   * 2.19.2 -test
* dev-python/pyproject-metadata: PEP 621 metadata parsing 
   * 0.10.0 -test -verify-provenance
* dev-python/pysocks: SOCKS client module 
   * 1.7.1-r2 
* dev-python/pyyaml: YAML parser and emitter for Python 
   * 6.0.3 -debug -examples -test
* dev-python/regex: Alternative regular expression module to replace re 
   * 2025.11.3 -debug -doc
* dev-python/requests: HTTP library for human beings 
   * 2.32.5 test-rust -socks5 -test
* dev-python/scikit-build-core: Build backend for CMake based projects 
   * 0.11.6 -test
* dev-python/semantic-version: Python library providing a few tools handling SemVer in Python 
   * 2.10.0 -doc -test
* dev-python/setuptools: Collection of extensions to Distutils 
   * 80.9.0-r1 -test
* dev-python/setuptools-rust: A plugin for setuptools to build Rust Python extensions 
   * 1.12.0 -debug -test
* dev-python/setuptools-scm: Manage versions by scm tags via setuptools 
   * 9.2.2 -test -verify-provenance
* dev-python/snakeoil: misc common functionality and useful optimizations 
   * 0.10.11 -test
* dev-python/tqdm: Add a progress meter to your loops in a second 
   * 4.67.1 -examples -test
* dev-python/tree-sitter: Python bindings to the Tree-sitter parsing library 
   * 0.25.2 -debug -test
* dev-python/trove-classifiers: Canonical source for classifiers on PyPI (pypi.org) 
   * 2025.12.1.14 -test -verify-provenance
* dev-python/typing-extensions: Backported and Experimental Type Hints for Python 3.7+ 
   * 4.15.0 -test
* dev-python/urllib3: HTTP library with thread-safe connection pooling, file post, and more 
   * 2.6.2 -brotli -http2 -test -verify-provenance -zstd
* dev-python/wheel: A built-package format for Python 
   * 0.45.1 -test
* dev-util/desktop-file-utils: Command line utilities to work with desktop menu entries 
   * 0.28 
* dev-util/gperf: A perfect hash function generator 
   * 3.3 
* dev-util/maturin: Build and publish crates with pyo3, rust-cpython and cffi bindings 
   * 1.10.2 ssl -debug -doc -test
* dev-util/patchelf: Small utility to modify the dynamic linker and RPATH of ELF executables 
   * 0.18.0 
* dev-util/pkgcheck: pkgcore-based QA utility for ebuild repos 
   * 0.10.37 -emacs -test
* dev-util/pkgconf: pkg-config compatible replacement with no dependencies other than C99 
   * 2.5.1 native-symlinks -test
* dev-util/re2c: Tool for generating C-based recognizers from regular expressions 
   * 3.1 -debug -test
* dev-util/shellcheck-bin: Shell script analysis tool (binary package) 
   * 0.11.0 
* dev-vcs/git: Stupid content tracker: distributed VCS designed for speed and efficiency 
   * 2.52.0 curl gpg iconv nls pcre perl safe-directory webdav -cgi -cvs -doc -highlight -keyring -perforce -rust -selinux -subversion -test -tk -xinetd
* mail-mta/nullmailer: Simple relay-only local mail transport agent 
   * 2.2-r2 ssl -test
* media-fonts/liberation-fonts: A Helvetica/Times/Courier replacement TrueType font set, courtesy of Red Hat 
   * 2.1.5 -X -fontforge
* media-gfx/imagemagick: A collection of tools and libraries for many image formats 
   * 7.1.2.10 bzip2 cxx jpeg openmp png tiff zlib -X -corefonts -djvu -fftw -fontconfig -fpx -graphviz -hardened -hdri -heif -jbig -jpeg2k -jpegxl -lcms -lqr -lzma -opencl -openexr -pango -perl -postscript -q8 -q32 -raw -static-libs -svg -test -truetype -webp -wmf -xml -zip
* media-libs/libjpeg-turbo: MMX, SSE, and SSE2 SIMD accelerated JPEG library 
   * 3.1.3 -java -static-libs -test
* media-libs/libpng: Portable Network Graphics library 
   * 1.6.53 -apng -static-libs -test
* media-libs/libwebp: A lossy image compression format 
   * 1.6.0 jpeg png -gif -opengl -static-libs -swap-16bit-csp -tiff
* media-libs/tiff: Tag Image File Format (TIFF) library 
   * 4.7.0-r1 cxx zlib -jbig -jpeg -lerc -libdeflate -lzma -opengl -static-libs -test -verify-sig -webp -zstd
* net-dns/c-ares: C library that resolves names asynchronously 
   * 1.34.6 -static-libs -test -verify-sig
* net-dns/libidn2: An implementation of the IDNA2008 specifications (RFCs 5890, 5891, 5892, 5893) 
   * 2.3.8 nls -static-libs -verify-sig
* net-firewall/iptables: Linux kernel (2.4+) firewall, NAT and packet mangling tools 
   * 1.8.11-r1 -conntrack -netlink -nftables -pcap -static-libs -test
* net-libs/gnutls: Secure communications library implementing the SSL, TLS and DTLS protocols 
   * 3.8.11 cxx idn nls openssl tls-heartbeat zlib -brotli -dane -doc -examples -pkcs11 -sslv2 -sslv3 -static-libs -test -test-full -tools -verify-sig -zstd
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
   * 1.14.0 
* net-libs/ngtcp2: Implementation of the IETF QUIC Protocol 
   * 1.19.0 gnutls ssl -openssl
* net-libs/nodejs: A JavaScript runtime built on Chrome's V8 JavaScript engine 
   * 24.11.1-r1 icu inspector npm snapshot ssl system-icu system-ssl -corepack -debug -doc -lto -pax-kernel -test
* net-mail/mailbase: MTA layout package 
   * 1.8.1 pam
* net-misc/curl: A Client that groks URLs 
   * 8.17.0-r1 adns alt-svc ftp hsts http2 http3 httpsrr imap openssl pop3 psl quic smtp ssl tftp websockets -brotli -debug -ech -gnutls -gopher -idn -kerberos -ldap -mbedtls -rtmp -rustls -samba -sasl-scram -ssh -static-libs -telnet -test -verify-sig -zstd
* net-misc/dhcpcd: A fully featured, yet light weight RFC2131 compliant DHCP client 
   * 10.3.0 embedded ipv6 udev -debug -privsep
* net-misc/iputils: Network monitoring tools including ping and ping6 
   * 20250605-r1 arping filecaps nls -caps -clockdiff -doc -idn -test -tracepath
* net-misc/netifrc: Gentoo Network Interface Management Scripts 
   * 0.7.13 dhcp
* net-misc/openssh: Port of OpenBSD's free SSH release 
   * 10.2_p1 pam ssl -audit -debug -kerberos -ldns -libedit -livecd -security-key -selinux -static -test -verify-sig
* net-misc/rsync: File transfer program to keep remote files into sync 
   * 3.4.1-r1 acl iconv ssl xattr xxhash -examples -lz4 -rrsync -stunnel -system-zlib -verify-sig -zstd
* net-misc/wget: Network utility to retrieve files from the WWW 
   * 1.25.0-r1 nls pcre ssl zlib -cookie-check -debug -gnutls -idn -libproxy -metalink -ntlm -static -test -uuid -verify-sig
* net-wireless/bluez: Bluetooth Tools and System Daemons for Linux 
   * 5.85 mesh obex readline udev -btpclient -cups -debug -deprecated -doc -experimental -extra-tools -man -midi -selinux -systemd -test -test-programs
* perl-core/File-Temp: File::Temp can be used to create and open temporary files in a safe way 
   * 0.231.100-r1 
* sci-libs/blas-lapack-aux-wrapper: BLAS/LAPACK wrappers for FlexiBLAS 
   * 6 -index64 -test
* sci-libs/flexiblas: A BLAS and LAPACK wrapper library with runtime exchangable backends 
   * 3.5.0 openblas openmp system-blas -blis -index64 -mkl -tbb -test
* sci-libs/lapack: BLAS, CBLAS, LAPACK, LAPACKE reference implementations 
   * 3.12.1-r2 deprecated flexiblas lapacke -doc -eselect-ldso -index64 -test
* sci-libs/openblas: Optimized BLAS library based on GotoBLAS2 
   * 0.3.30-r5 openmp -cpudetection -eselect-ldso -index64 -pthread -relapack -test
* sci-ml/hf_xet: xet client tech, used in huggingface_hub 
   * 1.2.0 -debug
* sci-ml/huggingface_hub: a client library to interact with the Hugging Face Hub 
   * 0.36.0-r1 -test
* sci-ml/safetensors: Simple, safe way to store and distribute tensors 
   * 0.7.0 -debug -test
* sci-ml/tokenizers: Implementation of today's most used tokenizers 
   * 0.22.1 -debug -test
* sci-ml/transformers: State-of-the-art Machine Learning for JAX, PyTorch and TensorFlow 
   * 4.57.3 -test -torch
* sec-keys/openpgp-keys-gentoo-release: OpenPGP keys used for Gentoo releases (snapshots, stages) 
   * 20250806 -test
* sys-apps/acl: Access control list utilities, libraries, and headers 
   * 2.3.2-r2 nls -static-libs
* sys-apps/attr: Extended attributes tools 
   * 2.5.2-r1 nls -debug -static-libs
* sys-apps/baselayout: Filesystem baselayout and init scripts 
   * 2.18 -build -split-usr
* sys-apps/coreutils: Standard GNU utilities (chmod, cp, dd, ls, sort, tr, head, wc, who,...) 
   * 9.9 acl nls openssl xattr -caps -gmp -hostname -kill -multicall -selinux -split-usr -static -test -test-full -vanilla -verify-sig
* sys-apps/dbus: A message bus system, a simple way for applications to talk to each other 
   * 1.16.2 -X -debug -doc -elogind -selinux -static-libs -systemd -test -valgrind
* sys-apps/debianutils: A selection of tools from Debian 
   * 5.14-r1 -static
* sys-apps/diffutils: Tools to make diffs and compare files 
   * 3.12 nls -verify-sig
* sys-apps/file: Identify a file's format by scanning binary data for patterns 
   * 5.46-r3 bzip2 zlib -lzip -lzma -python -seccomp -static-libs -verify-sig -zstd
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
   * 685 pcre -test
* sys-apps/locale-gen: Generate locales based upon the config file /etc/locale.gen 
   * 3.9-r1 
* sys-apps/lsb-release: LSB version query program 
   * 3.3 
* sys-apps/net-tools: Standard Linux networking tools 
   * 2.10 arp hostname ipv6 nls -nis -plipconfig -selinux -slattach -static
* sys-apps/openrc: OpenRC manages the services, startup and shutdown of a host 
   * 0.63 netifrc pam sysvinit unicode -audit -bash -debug -newnet -s6 -selinux -sysv-utils
* sys-apps/pkgcore: a framework for package management 
   * 0.12.30 -test
* sys-apps/portage: The package management and distribution system for Gentoo 
   * 3.0.74 ipc native-extensions rsync-verify xattr -apidoc -build -doc -gentoo-dev -selinux -test
* sys-apps/sandbox: sandbox'd LD_PRELOAD hack 
   * 2.46 nnp
* sys-apps/sed: Super-useful stream editor 
   * 4.9-r1 acl nls -selinux -static -test-full -verify-sig
* sys-apps/shadow: Utilities to deal with user accounts 
   * 4.14.8-r2 acl nls pam xattr -audit -cracklib -selinux -skey -split-usr -su -systemd -verify-sig
* sys-apps/systemd-utils: Utilities split out from systemd for OpenRC users 
   * 256.17 acl kmod tmpfiles udev -boot -kernel-install -secureboot -selinux -split-usr -sysusers -test -ukify
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
   * 2.0.3-r1 
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
   * 1.47.3-r1 nls tools -archive -cron -fuse -static-libs -test
* sys-fs/udev-init-scripts: udev startup scripts for openrc 
   * 35 
* sys-kernel/linux-headers: Linux system headers 
   * 6.18 -headers-only
* sys-libs/gdbm: Standard GNU database libraries 
   * 1.26 berkdb nls readline -static-libs -test -verify-sig
* sys-libs/glibc: GNU libc C library 
   * 2.42-r3 cet multiarch ssp static-libs -audit -caps -compile-locales -custom-cflags -doc -gd -hash-sysv-compat -headers-only -multilib -multilib-bootstrap -nscd -perl -profile -selinux -sframe -stack-realign -suid -systemd -systemtap -test -vanilla -verify-sig
* sys-libs/libcap: POSIX 1003.1e capabilities 
   * 2.77 pam -static-libs -tools
* sys-libs/libxcrypt: Extended crypt library for descrypt, md5crypt, bcrypt, and others 
   * 4.4.38 compat system -headers-only -static-libs -test
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
* sys-process/cronbase: Base for all cron ebuilds 
   * 0.3.7-r10 
* sys-process/cronie: Cronie is a standard UNIX daemon cron based on the original vixie-cron 
   * 1.7.2 anacron inotify pam -selinux
* sys-process/procps: Standard informational utilities and process-handling tools 
   * 4.0.5-r3 kill ncurses nls unicode -elogind -modern-top -selinux -skill -static-libs -systemd -test
* sys-process/psmisc: A set of tools that use the proc filesystem 
   * 23.7 nls -X -apparmor -selinux -test
* virtual/acl: Virtual for acl support (sys/acl.h) 
   * 0-r2 -static-libs
* virtual/blas: Virtual for FORTRAN 77 BLAS implementation 
   * 3.8-r1 flexiblas -eselect-ldso -index64
* virtual/cblas: Virtual for BLAS C implementation 
   * 3.8-r1 flexiblas -eselect-ldso -index64
* virtual/cron: Virtual for cron 
   * 0-r3 
* virtual/dev-manager: Virtual for the device filesystem manager 
   * 0-r2 
* virtual/editor: Virtual for editor 
   * 0-r7 
* virtual/fortran: Virtual for Fortran Compiler 
   * 0-r1 openmp
* virtual/imagemagick-tools: Virtual for imagemagick command line tools 
   * 1 jpeg tiff -perl -png -postscript -svg
* virtual/lapack: Virtual for Linear Algebra Package FORTRAN 77 (LAPACK) implementation 
   * 3.10-r1 flexiblas -eselect-ldso -index64
* virtual/libc: Virtual for the C library 
   * 1-r1 
* virtual/libcrypt: Virtual for libcrypt.so 
   * 2-r1 -static-libs
* virtual/libelf: Virtual for libelf.so.1 provider dev-libs/elfutils 
   * 3-r1 
* virtual/libiconv: Virtual for the GNU conversion library 
   * 0-r2 
* virtual/libintl: Virtual for the GNU Internationalization Library 
   * 0-r2 
* virtual/libudev: Virtual for libudev providers 
   * 251-r2 -systemd
* virtual/libusb: Virtual for libusb 
   * 1-r2 -udev
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
* virtual/ttf-fonts: Virtual for Serif/Sans/Monospace font packages 
   * 1-r2 
* virtual/udev: Virtual to select between different udev daemon providers 
   * 217-r7 -systemd
* virtual/zlib: Virtual for libz.so providers 
   * 1.3.1-r1 -static-libs
* x11-base/xorg-proto: X.Org combined protocol headers 
   * 2025.1 -test
* x11-misc/shared-mime-info: The Shared MIME-info Database specification 
   * 2.4-r3 -test
Found 405 matches
