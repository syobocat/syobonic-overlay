# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	adler-1.0.2
	aho-corasick-0.7.18
	anyhow-1.0.65
	arrayvec-0.5.2
	atty-0.2.14
	autocfg-1.1.0
	base64-0.13.1
	bitflags-1.3.2
	bitmaps-2.1.0
	block-buffer-0.10.3
	bstr-0.2.17
	bytes-1.2.1
	bytesize-1.1.0
	cargo-0.68.0
	cargo-c-0.9.16+cargo-0.68
	cargo-platform-0.1.2
	cargo-util-0.2.3
	cbindgen-0.24.3
	cc-1.0.74
	cfg-if-1.0.0
	clap-3.2.23
	clap-4.1.4
	clap_derive-4.1.0
	clap_lex-0.2.4
	clap_lex-0.3.1
	combine-4.6.6
	commoncrypto-0.2.0
	commoncrypto-sys-0.2.0
	core-foundation-0.9.3
	core-foundation-sys-0.8.3
	cpufeatures-0.2.5
	crates-io-0.35.0
	crc32fast-1.3.2
	crossbeam-utils-0.8.12
	crypto-common-0.1.6
	crypto-hash-0.3.4
	curl-0.4.44
	curl-sys-0.4.59+curl-7.86.0
	digest-0.10.6
	dirs-4.0.0
	dirs-sys-0.3.7
	either-1.8.0
	encoding_rs-0.8.31
	encoding_rs_io-0.1.7
	enum-display-derive-0.1.1
	env_logger-0.9.0
	env_logger-0.10.0
	errno-0.2.8
	errno-dragonfly-0.1.2
	fastrand-1.8.0
	filetime-0.2.18
	flate2-1.0.24
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.1.0
	fwdansi-1.1.0
	generic-array-0.14.6
	getrandom-0.2.7
	git2-0.16.1
	git2-curl-0.17.0
	glob-0.3.0
	globset-0.4.9
	hashbrown-0.12.3
	heck-0.4.0
	hermit-abi-0.1.19
	hermit-abi-0.2.6
	hex-0.3.2
	hex-0.4.3
	hmac-0.12.1
	home-0.5.4
	http-auth-0.1.8
	humantime-2.1.0
	idna-0.3.0
	ignore-0.4.18
	im-rc-15.1.0
	indexmap-1.9.1
	instant-0.1.12
	io-lifetimes-1.0.4
	is-terminal-0.4.2
	itertools-0.10.5
	itoa-1.0.4
	jobserver-0.1.25
	kstring-2.0.0
	lazy_static-1.4.0
	lazycell-1.3.0
	libc-0.2.139
	libgit2-sys-0.14.2+1.5.1
	libnghttp2-sys-0.1.7+1.45.0
	libssh2-sys-0.2.23
	libz-sys-1.1.8
	linux-raw-sys-0.1.4
	log-0.4.17
	memchr-2.5.0
	memmap2-0.5.7
	minimal-lexical-0.2.1
	miniz_oxide-0.5.4
	miow-0.5.0
	nom-7.1.1
	nom8-0.2.0
	num-traits-0.2.15
	once_cell-1.15.0
	opener-0.5.0
	openssl-0.10.42
	openssl-macros-0.1.0
	openssl-probe-0.1.5
	openssl-sys-0.9.77
	ordered-float-2.10.0
	os_info-3.5.1
	os_str_bytes-6.3.1
	pathdiff-0.2.1
	percent-encoding-2.2.0
	pkg-config-0.3.26
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.50
	quote-1.0.20
	rand_core-0.6.4
	rand_xoshiro-0.6.0
	redox_syscall-0.2.15
	redox_users-0.4.3
	regex-1.6.0
	regex-automata-0.1.10
	regex-syntax-0.6.27
	remove_dir_all-0.5.3
	rustc-workspace-hack-1.0.0
	rustfix-0.6.1
	rustix-0.36.7
	ryu-1.0.11
	same-file-1.0.6
	schannel-0.1.20
	semver-1.0.14
	sequence_trie-0.3.6
	serde-1.0.152
	serde-value-0.7.0
	serde_derive-1.0.152
	serde_ignored-0.1.5
	serde_json-1.0.87
	serde_spanned-0.6.1
	sha1-0.10.5
	shell-escape-0.1.5
	sized-chunks-0.6.5
	socket2-0.4.7
	static_assertions-1.1.0
	strip-ansi-escapes-0.1.1
	strsim-0.10.0
	subtle-2.4.1
	syn-1.0.107
	tar-0.4.38
	tempfile-3.3.0
	termcolor-1.1.3
	textwrap-0.16.0
	thiserror-1.0.31
	thiserror-impl-1.0.31
	thread_local-1.1.4
	tinyvec-1.6.0
	tinyvec_macros-0.1.0
	toml-0.5.9
	toml-0.6.0
	toml_datetime-0.5.1
	toml_edit-0.15.0
	toml_edit-0.18.1
	typenum-1.15.0
	unicode-bidi-0.3.8
	unicode-ident-1.0.2
	unicode-normalization-0.1.22
	unicode-width-0.1.10
	unicode-xid-0.2.4
	url-2.3.1
	utf8parse-0.2.0
	vcpkg-0.2.15
	version_check-0.9.4
	vte-0.10.1
	vte_generate_state_changes-0.1.1
	walkdir-2.3.2
	wasi-0.11.0+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.36.1
	windows-sys-0.42.0
	windows_aarch64_gnullvm-0.42.0
	windows_aarch64_msvc-0.36.1
	windows_aarch64_msvc-0.42.0
	windows_i686_gnu-0.36.1
	windows_i686_gnu-0.42.0
	windows_i686_msvc-0.36.1
	windows_i686_msvc-0.42.0
	windows_x86_64_gnu-0.36.1
	windows_x86_64_gnu-0.42.0
	windows_x86_64_gnullvm-0.42.0
	windows_x86_64_msvc-0.36.1
	windows_x86_64_msvc-0.42.0
	xdg-2.4.1
	xkbcommon-0.5.0
"

inherit cargo

DESCRIPTION="C ABIから使う事を目的とした SKK(Simple Kana Kanji henkan)方式のかな漢字変換ライブラリ"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/naokiri/cskk"
SRC_URI="https://github.com/naokiri/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
		 $(cargo_crate_uris)"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 GPL-3+ MIT MPL-2.0 MPL-2.0+ Unicode-DFS-2016 Unlicense ZLIB"
SLOT="3"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="dev-util/cargo-c
		 dev-util/cbindgen
		 x11-libs/libxkbcommon"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo cinstall --release --prefix="${D}/usr" --pkgconfigdir="${D}/usr/share/pkgconfig"
	sed -i "s%${D}%%" ${D}/usr/share/pkgconfig/cskk.pc
}
