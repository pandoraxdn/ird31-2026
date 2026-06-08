if [ -n "$PS1" ] && [ -e $HOME/.bashrc ]; then
    source $HOME/.bashrc;
fi

shopt -u expand_aliases
PATH=${PATH:-}
nix_saved_PATH="$PATH"
XDG_DATA_DIRS=${XDG_DATA_DIRS:-}
nix_saved_XDG_DATA_DIRS="$XDG_DATA_DIRS"
declare -a unpackCmdHooks=('_defaultUnpack' )
NIX_CC='/nix/store/qd70v8g0561vm8m33kmnp79z00cgyi5n-gcc-wrapper-15.2.0'
export NIX_CC
NIX_BUILD_CORES='4'
export NIX_BUILD_CORES
PATH='/nix/store/4bwbk4an4bx7cb8xwffghvjjyfyl7m2i-bash-interactive-5.3p9/bin:/nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env/bin:/nix/store/knapjl9j737i3ghq7iswryp6gcni5j32-pyright-1.1.409/bin:/nix/store/6sirsgrlw5wpjb61v07sbgs4sfsfdwx6-libxml2-2.15.1-dev/bin:/nix/store/2b9b04irbcmasriarwwgqhby01mzzwr1-libxml2-2.15.1-bin/bin:/nix/store/f4329v3zm2p5ggkvh5ymv9jphvrpf6ad-libxslt-1.1.45-dev/bin:/nix/store/8vc0mlapmdi36pxcid7ll1808lhm25vz-libxslt-1.1.45-bin/bin:/nix/store/2di90l89y2ygdy3rbws7dhg9nrvd3pnx-openssl-3.6.1-bin/bin:/nix/store/67cm7qx8s210dwkq64vqbf3q9z62ddyg-sqlite-3.51.2-bin/bin:/nix/store/ndr1qrjb4y4p66b51sf49x95mymmvr2l-harfbuzz-12.3.0-dev/bin:/nix/store/qik1sfr8z8w4ffrd21yv76z2nvwyhmn5-graphite2-1.3.14/bin:/nix/store/fga8simmllr8rlxql3qfb41620yh3n3p-icu4c-76.1-dev/bin:/nix/store/v70k3ch8rcw9b0la3axqb34dkyxqnx2s-libjpeg-turbo-3.1.4-bin/bin:/nix/store/h176f4dhbcpj4lpf8sn28vdqp1mks5jk-libpng-apng-1.6.56-dev/bin:/nix/store/k1cm26fb7bsxif6lcwpzi7iyccvrv4f1-pcre2-10.46-dev/bin:/nix/store/lpzr2b7izm6d80b4hjc062fl0ylimr2x-pcre2-10.46-bin/bin:/nix/store/91jddg4g6788ilnk3kww8j8jhxhzk6d3-zstd-1.5.7-bin/bin:/nix/store/k0rqiflg1vkn1kj96br5pfxj40p3srz4-zstd-1.5.7/bin:/nix/store/82agk4mh225wblcdyv6yq3a852w7lxsn-md4c-0.5.2/bin:/nix/store/lmw2c8802x4618h0pmnv5140sgfqriqi-libproxy-0.5.12/bin:/nix/store/yanmwp5f435ing2nbhwa4v0gdmpl2an1-dbus-1.16.2-lib/bin:/nix/store/g6a7agib4hbnvqcny05fk8dfjplw8nkb-dbus-1.16.2/bin:/nix/store/kw0yjwbvw6arwgwaa3p8rz46qsgy4626-glib-2.86.3-dev/bin:/nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0/bin:/nix/store/b9jcqjd8gnxr87p7wc91lmbyd90kzlc1-glib-2.86.3-bin/bin:/nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14/bin:/nix/store/9rpism89x6lyjcwzzkp6kana25rs03nn-systemd-260.1/bin:/nix/store/g9h37kjrpvyzhsq4a79v2qkrpl4y1s7k-util-linux-2.42-bin/bin:/nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7/bin:/nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21/bin:/nix/store/8w64dm3sny77mnf8jm5n1n57d1fk25x4-libselinux-3.10-bin/bin:/nix/store/hb9zkpgafixyxc52dcj8sfknqpmfdpk6-libsepol-3.10-bin/bin:/nix/store/5xr74grdnd43gd0ngkbkcrc3bhidxyng-lttng-ust-2.14.0-bin/bin:/nix/store/sqvm6lz2lbn43zflil7rgn9p0d86gpfd-libdrm-2.4.131-bin/bin:/nix/store/gdx3ay9ms54qyivhbdmcrbcb778ww7wf-libdatrie-2019-12-20-bin/bin:/nix/store/r7bp82svf04jqw3x7wnjlyr951jkf85k-freetype-2.14.2-dev/bin:/nix/store/zj6r42syyswkhrr174bzppj3n7xhq936-bzip2-1.0.8-bin/bin:/nix/store/mj1k1nsdqr0mp9wsnkg7blgh3xf5wssv-brotli-1.2.0/bin:/nix/store/v18drszzvspk1wlq06r68nxgpn2b4cvd-fontconfig-2.17.1-bin/bin:/nix/store/0c0xdj7xpilqfy2p33l1jm407f01652w-libxkbcommon-1.13.1/bin:/nix/store/g4hxm4rk504vm7py42h4m0309j98da71-cups-2.4.16-dev/bin:/nix/store/82ijqnr2xdzw65vsbjvgcbb7s0xrzh81-cups-2.4.16/bin:/nix/store/pkh91qil9ai3jjslkp590xij6ymxsa6g-wayland-scanner-1.24.0-bin/bin:/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0/bin:/nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0/bin:/nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0/bin:/nix/store/1wdnr6g4xpxj6vk64lw5pkdi0syw7ql8-qttools-6.11.0-dev/bin:/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0/bin:/nix/store/v7mjkia7ki79s5i24ldbzq1khalhgzk0-pkg-config-wrapper-0.29.2/bin:/nix/store/66lksljlljdd5ppgvfk8g89y8xgqcxd7-patchelf-0.15.2/bin:/nix/store/qd70v8g0561vm8m33kmnp79z00cgyi5n-gcc-wrapper-15.2.0/bin:/nix/store/sanx9fg8mry8mq92zhlm5qvb83qlxrlx-gcc-15.2.0/bin:/nix/store/pf30k3mg7n6bibc1k6609gyq7glk00k2-glibc-2.42-61-bin/bin:/nix/store/jjxngswsb214vb58qx485jhmilf0kxxy-coreutils-9.10/bin:/nix/store/kfwagnh6i1mysf7vxq679rzh30z9zj3g-binutils-wrapper-2.46/bin:/nix/store/p2vkw5s89ff1fs2d2rxqxiqil9s0jpcm-binutils-2.46/bin:/nix/store/jjxngswsb214vb58qx485jhmilf0kxxy-coreutils-9.10/bin:/nix/store/vhsirn9m1ifmnw5g1qczzhvqkx6lw1if-findutils-4.10.0/bin:/nix/store/hx084k7pgz4n0vgkvil9gbcnl8y6p1xf-diffutils-3.12/bin:/nix/store/af4a8i43kc2ss4rnmf0swkk2mprsw6xq-gnused-4.9/bin:/nix/store/wf7lr2hf43546jc5kwqh3dbxnpcnw1mn-gnugrep-3.12/bin:/nix/store/lakv43kv98sl6h0ba6wnyg513mcq61vl-gawk-5.4.0/bin:/nix/store/rnvb7bvp53v2dw7pcwh9xb89x5z4rjib-gnutar-1.35/bin:/nix/store/9lhr1c3l9qzv8pzp3idmii1nwvxxjys3-gzip-1.14/bin:/nix/store/zj6r42syyswkhrr174bzppj3n7xhq936-bzip2-1.0.8-bin/bin:/nix/store/yvrwcs1a45rj8142n0l2w9q9s6akamjr-gnumake-4.4.1/bin:/nix/store/i27rhb3nr65rkrwz36bchkwmav6ggsmn-bash-5.3p9/bin:/nix/store/zj7mxwji29zvj9vl70iip7gw4h6ljfam-patch-2.8/bin:/nix/store/2nm5c858fh52s6mhcffm07s3biaxys44-xz-5.8.3-bin/bin:/nix/store/iscmg3ivhx7z67dz14lrg7p77gnsa4dw-file-5.45/bin'
export PATH
cmakeFlags=' -DQT_OPTIONAL_TOOLS_PATH=/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0 -DQT_OPTIONAL_TOOLS_PATH=/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0 -DQT_OPTIONAL_TOOLS_PATH=/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0'
export cmakeFlags
declare -a envBuildHostHooks=('qmakePathHook' 'qtToolsHook' 'addQtModulePrefix' 'addXMLCatalogs' 'gettextDataDirsHook' )
phases='buildPhase'
export phases
propagatedNativeBuildInputs=''
export propagatedNativeBuildInputs
CONFIG_SHELL='/nix/store/i27rhb3nr65rkrwz36bchkwmav6ggsmn-bash-5.3p9/bin/bash'
export CONFIG_SHELL
system='x86_64-linux'
export system
DEVENV_ROOT='/home/najimi/public_html/ird31/02062026/pyside/.devenv'
export DEVENV_ROOT
declare -a fixupOutputHooks=('if [ -z "${dontPatchELF-}" ]; then patchELF "$prefix"; fi' 'if [[ -z "${noAuditTmpdir-}" && -e "$prefix" ]]; then auditTmpdir "$prefix"; fi' 'if [ -z "${dontGzipMan-}" ]; then compressManPages "$prefix"; fi' '_moveLib64' '_moveSbin' '_moveSystemdUserUnits' 'patchShebangsAuto' '_pruneLibtoolFiles' '_doStrip' )
out='/nix/store/6b3rg76d2r1m1s1yz3bh9spvy5p7i3zk-devenv-shell-env'
export out
AS='as'
export AS
defaultNativeBuildInputs='/nix/store/66lksljlljdd5ppgvfk8g89y8xgqcxd7-patchelf-0.15.2 /nix/store/9vv51km72lpngs6aixxplrr3c88q4c3c-update-autotools-gnu-config-scripts-hook /nix/store/0y5xmdb7qfvimjwbq7ibg1xdgkgjwqng-no-broken-symlinks.sh /nix/store/cv1d7p48379km6a85h4zp6kr86brh32q-audit-tmpdir.sh /nix/store/85clx3b0xkdf58jn161iy80y5223ilbi-compress-man-pages.sh /nix/store/p3l1a5y7nllfyrjn2krlwgcc3z0cd3fq-make-symlinks-relative.sh /nix/store/5yzw0vhkyszf2d179m0qfkgxmp5wjjx4-move-docs.sh /nix/store/fyaryjvghbkpfnsyw97hb3lyb37s1pd6-move-lib64.sh /nix/store/kd4xwxjpjxi71jkm6ka0np72if9rm3y0-move-sbin.sh /nix/store/pag6l61paj1dc9sv15l7bm5c17xn5kyk-move-systemd-user-units.sh /nix/store/cmzya9irvxzlkh7lfy6i82gbp0saxqj3-multiple-outputs.sh /nix/store/x8c40nfigps493a07sdr2pm5s9j1cdc0-patch-shebangs.sh /nix/store/cickvswrvann041nqxb0rxilc46svw1n-prune-libtool-files.sh /nix/store/xyff06pkhki3qy1ls77w10s0v79c9il0-reproducible-builds.sh /nix/store/z7k98578dfzi6l3hsvbivzm7hfqlk0zc-set-source-date-epoch-to-latest.sh /nix/store/pilsssjjdxvdphlg2h19p0bfx5q0jzkn-strip.sh /nix/store/qd70v8g0561vm8m33kmnp79z00cgyi5n-gcc-wrapper-15.2.0'
NIX_BINTOOLS_WRAPPER_TARGET_HOST_x86_64_unknown_linux_gnu='1'
export NIX_BINTOOLS_WRAPPER_TARGET_HOST_x86_64_unknown_linux_gnu
preConfigurePhases=' updateAutotoolsGnuConfigScriptsPhase'
NIX_STORE='/nix/store'
export NIX_STORE
LINENO='79'
depsBuildBuildPropagated=''
export depsBuildBuildPropagated
declare -a envTargetTargetHooks=()
STRINGS='strings'
export STRINGS
LD='ld'
export LD
HOSTTYPE='x86_64'
outputDevdoc='REMOVE'
declare -a postFixupHooks=('noBrokenSymlinksInAllOutputs' '_makeSymlinksRelative' '_multioutPropagateDev' )
NIX_HARDENING_ENABLE='bindnow format fortify fortify3 libcxxhardeningfast pic relro stackclashprotection stackprotector strictflexarrays1 strictoverflow zerocallusedregs'
export NIX_HARDENING_ENABLE
outputs='out'
export outputs
configureFlags=''
export configureFlags
doInstallCheck=''
export doInstallCheck
declare -a propagatedBuildDepFiles=('propagated-build-build-deps' 'propagated-native-build-inputs' 'propagated-build-target-deps' )
hardeningDisable=''
export hardeningDisable
depsHostHost=''
export depsHostHost
patches=''
export patches
prefix='/nix/store/6b3rg76d2r1m1s1yz3bh9spvy5p7i3zk-devenv-shell-env'
READELF='readelf'
export READELF
outputDoc='out'
__nix_qtbase='/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0'
mesonFlags=''
export mesonFlags
PKG_CONFIG='pkg-config'
export PKG_CONFIG
MACHTYPE='x86_64-pc-linux-gnu'
propagatedBuildInputs=''
export propagatedBuildInputs
declare -a pkgsTargetTarget=()
outputBin='out'
declare -a preFixupHooks=('_moveToShare' '_multioutDocs' '_multioutDevs' )
role_post='_FOR_BUILD'
shell='/nix/store/i27rhb3nr65rkrwz36bchkwmav6ggsmn-bash-5.3p9/bin/bash'
export shell
XDG_DATA_DIRS='/nix/store/4bwbk4an4bx7cb8xwffghvjjyfyl7m2i-bash-interactive-5.3p9/share:/nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env/share:/nix/store/7k5706vhxnidhqn0vzdn0x70x0g746ky-pyside6-6.11.0/share:/nix/store/8vc0mlapmdi36pxcid7ll1808lhm25vz-libxslt-1.1.45-bin/share:/nix/store/3yl2s5r3yph88imzbgbdrh8pbs9rcjcs-zlib-1.3.2-dev/share:/nix/store/ixhlv41i2wpl84xgjcks061dz4yssbg3-zlib-1.3.2/share:/nix/store/qdyra8ii6kpvwx8cqvg7fradkydxjmyd-vulkan-headers-1.4.341.0/share:/nix/store/ndr1qrjb4y4p66b51sf49x95mymmvr2l-harfbuzz-12.3.0-dev/share:/nix/store/qik1sfr8z8w4ffrd21yv76z2nvwyhmn5-graphite2-1.3.14/share:/nix/store/fga8simmllr8rlxql3qfb41620yh3n3p-icu4c-76.1-dev/share:/nix/store/0dmcpvbp2rvz8a7p2yhsrkpcb41kr6wl-icu4c-76.1/share:/nix/store/k0rqiflg1vkn1kj96br5pfxj40p3srz4-zstd-1.5.7/share:/nix/store/xq5q2y828igkiwyq25lhrhhv424y3aza-libproxy-0.5.12-dev/share:/nix/store/lmw2c8802x4618h0pmnv5140sgfqriqi-libproxy-0.5.12/share:/nix/store/g6a7agib4hbnvqcny05fk8dfjplw8nkb-dbus-1.16.2/share:/nix/store/kw0yjwbvw6arwgwaa3p8rz46qsgy4626-glib-2.86.3-dev/share:/nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0/share:/nix/store/b9jcqjd8gnxr87p7wc91lmbyd90kzlc1-glib-2.86.3-bin/share:/nix/store/zcmsivndca5wmam9nwnbjrm0zkgykwfz-glib-2.86.3/share:/nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14/share:/nix/store/490b2y1f8lz3jfns1zf7l0g7bh4kncbh-systemd-260.1-dev/share:/nix/store/9rpism89x6lyjcwzzkp6kana25rs03nn-systemd-260.1/share:/nix/store/g9h37kjrpvyzhsq4a79v2qkrpl4y1s7k-util-linux-2.42-bin/share:/nix/store/4iazbvz8d907sdvbq6x9s39qcmi7bqi2-util-linux-2.42-lib/share:/nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21/share:/nix/store/5xr74grdnd43gd0ngkbkcrc3bhidxyng-lttng-ust-2.14.0-bin/share:/nix/store/gkdgy79sz0xsyipy6g0arivxnk7hlwc4-lttng-ust-2.14.0/share:/nix/store/6bhki1k3ck0azd4dlfpb1qs8fcb0a3qs-libthai-0.1.30/share:/nix/store/sqvm6lz2lbn43zflil7rgn9p0d86gpfd-libdrm-2.4.131-bin/share:/nix/store/1jx6xl1bn80av3xmiarlb8lnavmc4grs-libdrm-2.4.131/share:/nix/store/gdx3ay9ms54qyivhbdmcrbcb778ww7wf-libdatrie-2019-12-20-bin/share:/nix/store/qc2r5wx0k5dh6ypwqjq4pfy6314npgaj-systemd-minimal-libs-260.1-dev/share:/nix/store/r7bp82svf04jqw3x7wnjlyr951jkf85k-freetype-2.14.2-dev/share:/nix/store/mj1k1nsdqr0mp9wsnkg7blgh3xf5wssv-brotli-1.2.0/share:/nix/store/zr22ggqbv79yv4y4wv06r4grla9h59yx-freetype-2.14.2/share:/nix/store/v18drszzvspk1wlq06r68nxgpn2b4cvd-fontconfig-2.17.1-bin/share:/nix/store/bg6ms0vw071g1fdbx2my6bbzsk62p6vd-fontconfig-2.17.1-lib/share:/nix/store/mvyxqkpyj2mgymljzj9bqi9bmz7ca5fk-xorgproto-2025.1/share:/nix/store/5m91jqg1526jzsahrgmd37k4ml3nc5l4-libx11-1.8.13/share:/nix/store/b47r32di2p2alprjnylsk9wg3m2gjd21-libxfixes-6.0.2/share:/nix/store/x0cqnqvf0v9lain5bkkkq11f0089whvr-libxcomposite-0.4.7/share:/nix/store/2krkc90x3ch0mgkk48fxlglq14nqapdr-libxau-1.0.12/share:/nix/store/0c0xdj7xpilqfy2p33l1jm407f01652w-libxkbcommon-1.13.1/share:/nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5/share:/nix/store/7cyfjdf16s9fwny90wa7ybdmpbq5fgd4-cups-2.4.16-lib/share:/nix/store/82ijqnr2xdzw65vsbjvgcbb7s0xrzh81-cups-2.4.16/share:/nix/store/97xaplx9nwxxxsp954sdpia89jqvyz4v-wayland-scanner-1.24.0-dev/share:/nix/store/jp2k2qal08z06glmgpiwracq0bwi1bzg-wayland-scanner-1.24.0/share:/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0/share:/nix/store/v7mjkia7ki79s5i24ldbzq1khalhgzk0-pkg-config-wrapper-0.29.2/share:/nix/store/66lksljlljdd5ppgvfk8g89y8xgqcxd7-patchelf-0.15.2/share'
export XDG_DATA_DIRS
name='devenv-shell-env'
export name
NIX_PYTHONPATH='/nix/store/n2im20ms01xyg1kjq554fy1l1yx22grz-devenv-profile/lib/python3.13/site-packages'
export NIX_PYTHONPATH
declare -a pkgsBuildHost=('/nix/store/5bs057cgp4nxqff22jg0k1svs121z6a8-bash-interactive-5.3p9-dev' '/nix/store/4bwbk4an4bx7cb8xwffghvjjyfyl7m2i-bash-interactive-5.3p9' '/nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env' '/nix/store/knapjl9j737i3ghq7iswryp6gcni5j32-pyright-1.1.409' '/nix/store/7k5706vhxnidhqn0vzdn0x70x0g746ky-pyside6-6.11.0' '/nix/store/7cbpfajskn4hni009h34bg7i99ha79gv-shiboken6-6.11.0' '/nix/store/hksq1dd4i8hp42q0y6ndhas4s3kscmb6-qtbase-6.11.0-dev' '/nix/store/6sirsgrlw5wpjb61v07sbgs4sfsfdwx6-libxml2-2.15.1-dev' '/nix/store/1wlc0gp4sp9rdd68j0ya1s5d27r2fszr-find-xml-catalogs-hook' '/nix/store/2b9b04irbcmasriarwwgqhby01mzzwr1-libxml2-2.15.1-bin' '/nix/store/ygkyaqnzsz3pf7ly1g7ggh1bp5h86mcp-libxml2-2.15.1' '/nix/store/f4329v3zm2p5ggkvh5ymv9jphvrpf6ad-libxslt-1.1.45-dev' '/nix/store/8vc0mlapmdi36pxcid7ll1808lhm25vz-libxslt-1.1.45-bin' '/nix/store/97cl9bqalmjfr07z0q85bb86896rw965-libxslt-1.1.45' '/nix/store/dy64cxaygvmjfznysgxk501yds8jij6s-openssl-3.6.1-dev' '/nix/store/2di90l89y2ygdy3rbws7dhg9nrvd3pnx-openssl-3.6.1-bin' '/nix/store/wbyqkb1vpm41s4jb8pv0i9h4jv08xdrv-openssl-3.6.1' '/nix/store/jphqqkgn7swnppi4dgwxavd3fac51bvx-sqlite-3.51.2-dev' '/nix/store/67cm7qx8s210dwkq64vqbf3q9z62ddyg-sqlite-3.51.2-bin' '/nix/store/5087xk8l09k90gddzw8y9b4yypyn23a5-sqlite-3.51.2' '/nix/store/3yl2s5r3yph88imzbgbdrh8pbs9rcjcs-zlib-1.3.2-dev' '/nix/store/ixhlv41i2wpl84xgjcks061dz4yssbg3-zlib-1.3.2' '/nix/store/crnjlpi5fymlsdiynhi5wdgzc6a9f75a-libglvnd-1.7.0-dev' '/nix/store/fdqacryg2w9kiwb94c9rzfsyff4im8xj-libglvnd-1.7.0' '/nix/store/qdyra8ii6kpvwx8cqvg7fradkydxjmyd-vulkan-headers-1.4.341.0' '/nix/store/jmjmp6wkg646s4ii5znac68zxdj1p55h-vulkan-loader-1.4.341.0-dev' '/nix/store/zs7y2aadk71bawprdcn000az9y05s8nf-vulkan-loader-1.4.341.0' '/nix/store/ndr1qrjb4y4p66b51sf49x95mymmvr2l-harfbuzz-12.3.0-dev' '/nix/store/6fbbmfpp3j9yd8yi4g1j2ajy987splhi-graphite2-1.3.14-dev' '/nix/store/qik1sfr8z8w4ffrd21yv76z2nvwyhmn5-graphite2-1.3.14' '/nix/store/rpd86021fc7q0mnzjrbcdnyi62qarql9-harfbuzz-12.3.0' '/nix/store/fga8simmllr8rlxql3qfb41620yh3n3p-icu4c-76.1-dev' '/nix/store/0dmcpvbp2rvz8a7p2yhsrkpcb41kr6wl-icu4c-76.1' '/nix/store/b63lk3n7piwf7a790c4cy0zinqi184fs-libjpeg-turbo-3.1.4-dev' '/nix/store/v70k3ch8rcw9b0la3axqb34dkyxqnx2s-libjpeg-turbo-3.1.4-bin' '/nix/store/lsln4vpc8spwmb96vjjmg4yd0krd2r7c-libjpeg-turbo-3.1.4' '/nix/store/h176f4dhbcpj4lpf8sn28vdqp1mks5jk-libpng-apng-1.6.56-dev' '/nix/store/gsn3vddway3289p6mzy5shd1paly8dp4-libpng-apng-1.6.56' '/nix/store/k1cm26fb7bsxif6lcwpzi7iyccvrv4f1-pcre2-10.46-dev' '/nix/store/lpzr2b7izm6d80b4hjc062fl0ylimr2x-pcre2-10.46-bin' '/nix/store/khhzkpj9169ydnyg7jjrjx7s5ygdkcas-pcre2-10.46' '/nix/store/vbqakw4shfcbmdxs6kkp3jmp9k5br94y-zstd-1.5.7-dev' '/nix/store/91jddg4g6788ilnk3kww8j8jhxhzk6d3-zstd-1.5.7-bin' '/nix/store/k0rqiflg1vkn1kj96br5pfxj40p3srz4-zstd-1.5.7' '/nix/store/9wv94c4wzy3fpfa516qjp4b1bfiymrhy-libb2-0.98.1' '/nix/store/mm2abhg9j26xcz4mbzi0k2zxqf1924bd-md4c-0.5.2-dev' '/nix/store/y694ganxnxk9n25ggagb6izr1s86i77v-md4c-0.5.2-lib' '/nix/store/82agk4mh225wblcdyv6yq3a852w7lxsn-md4c-0.5.2' '/nix/store/jc55bix1lk4v4d646s78gs6pvliks9jw-double-conversion-3.3.1-dev' '/nix/store/rddcn5m5v9k7n3xrchvqdg5grcr8ax1n-double-conversion-3.3.1' '/nix/store/xq5q2y828igkiwyq25lhrhhv424y3aza-libproxy-0.5.12-dev' '/nix/store/lmw2c8802x4618h0pmnv5140sgfqriqi-libproxy-0.5.12' '/nix/store/6xzs85s04k598dchdp1jmyia35ajwn6l-dbus-1.16.2-dev' '/nix/store/yanmwp5f435ing2nbhwa4v0gdmpl2an1-dbus-1.16.2-lib' '/nix/store/g6a7agib4hbnvqcny05fk8dfjplw8nkb-dbus-1.16.2' '/nix/store/kw0yjwbvw6arwgwaa3p8rz46qsgy4626-glib-2.86.3-dev' '/nix/store/lg8kfrcxy4bcwnlwbfn6x3s48k4aawba-libffi-3.5.2-dev' '/nix/store/hyai3q7gvdfppw4ky7s2mvhxvfyp5bh7-libffi-3.5.2' '/nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0' '/nix/store/5722rfnbamx35h5df4wlvlqrmvmaan7i-glibc-iconv-2.42' '/nix/store/b9jcqjd8gnxr87p7wc91lmbyd90kzlc1-glib-2.86.3-bin' '/nix/store/zcmsivndca5wmam9nwnbjrm0zkgykwfz-glib-2.86.3' '/nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14' '/nix/store/f2qrafl07iyfggddmw44bd9z0isn77jg-psqlodbc-17.00.0008' '/nix/store/mzf14h3p86kb5ik5f2b9c857i9465c1h-sqlite-connector-odbc-0.99991' '/nix/store/mr1ghgw331ncp06bv7kcra1wdpg8qdab-mariadb-connector-odbc-3.2.6' '/nix/store/490b2y1f8lz3jfns1zf7l0g7bh4kncbh-systemd-260.1-dev' '/nix/store/9rpism89x6lyjcwzzkp6kana25rs03nn-systemd-260.1' '/nix/store/80s9hhm2wyb053v2q55iz91hccxw0w47-util-linux-2.42-dev' '/nix/store/g9h37kjrpvyzhsq4a79v2qkrpl4y1s7k-util-linux-2.42-bin' '/nix/store/4iazbvz8d907sdvbq6x9s39qcmi7bqi2-util-linux-2.42-lib' '/nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7' '/nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21' '/nix/store/1bkcpa0lhy8dw3h6sz5b9742bihb9290-libselinux-3.10-dev' '/nix/store/8w64dm3sny77mnf8jm5n1n57d1fk25x4-libselinux-3.10-bin' '/nix/store/kdlv714j07803x3ynn2w4a44xi84bh0c-libselinux-3.10' '/nix/store/hrbmsxk0jl93igyrmlhns5a8jfvc96b3-libsepol-3.10-dev' '/nix/store/hb9zkpgafixyxc52dcj8sfknqpmfdpk6-libsepol-3.10-bin' '/nix/store/lf8iwryhabj1ifjg3kjyidvl9nakib4p-libsepol-3.10' '/nix/store/p3459sn6kfj0lxvy6r1nlcgc249bqmvl-lttng-ust-2.14.0-dev' '/nix/store/cmvpl03c604f718hhnazghiwb5dbn32a-liburcu-0.15.6-dev' '/nix/store/aaz4ykc5rh1kbfqk2s7lr9iqcq6fj02h-liburcu-0.15.6' '/nix/store/5xr74grdnd43gd0ngkbkcrc3bhidxyng-lttng-ust-2.14.0-bin' '/nix/store/gkdgy79sz0xsyipy6g0arivxnk7hlwc4-lttng-ust-2.14.0' '/nix/store/6h473sgnn2glbvgjd6sj242144zmllvj-libthai-0.1.30-dev' '/nix/store/6bhki1k3ck0azd4dlfpb1qs8fcb0a3qs-libthai-0.1.30' '/nix/store/n80alrbrr59n9b2qnj8z52yj0zn1gcwm-libdrm-2.4.131-dev' '/nix/store/sqvm6lz2lbn43zflil7rgn9p0d86gpfd-libdrm-2.4.131-bin' '/nix/store/1jx6xl1bn80av3xmiarlb8lnavmc4grs-libdrm-2.4.131' '/nix/store/9434wg73ynb25zfq3gvr5vij9rn3p9wh-mesa-libgbm-26.0.3' '/nix/store/1cg9syf0w509d5prxya2ak7k1pizrbi4-libdatrie-2019-12-20-dev' '/nix/store/gdx3ay9ms54qyivhbdmcrbcb778ww7wf-libdatrie-2019-12-20-bin' '/nix/store/p9v9m9k1yinv56mi1c1w5xjrl5asw6sh-libdatrie-2019-12-20-lib' '/nix/store/qc2r5wx0k5dh6ypwqjq4pfy6314npgaj-systemd-minimal-libs-260.1-dev' '/nix/store/i3p4h70l0qq32lizw0i4px8afn1y7g8w-systemd-minimal-libs-260.1' '/nix/store/gjg4aagfcn6r96c73rz4rwbclbdqqc6v-fontconfig-2.17.1-dev' '/nix/store/r7bp82svf04jqw3x7wnjlyr951jkf85k-freetype-2.14.2-dev' '/nix/store/bh64ycxf96cc4v43m77nszmpvbs0pfv7-bzip2-1.0.8-dev' '/nix/store/zj6r42syyswkhrr174bzppj3n7xhq936-bzip2-1.0.8-bin' '/nix/store/2amncb4zvr32gm5d2i8m6gz29c02cn61-bzip2-1.0.8' '/nix/store/1x1msj33z37b65vlxbs51l7i4j92qn9h-brotli-1.2.0-dev' '/nix/store/7ff90dag7i173s49c5m614wny2lpps1l-brotli-1.2.0-lib' '/nix/store/mj1k1nsdqr0mp9wsnkg7blgh3xf5wssv-brotli-1.2.0' '/nix/store/zr22ggqbv79yv4y4wv06r4grla9h59yx-freetype-2.14.2' '/nix/store/v18drszzvspk1wlq06r68nxgpn2b4cvd-fontconfig-2.17.1-bin' '/nix/store/bg6ms0vw071g1fdbx2my6bbzsk62p6vd-fontconfig-2.17.1-lib' '/nix/store/4303g76pqhl7r8a2xvci0b4bj47bfbjz-libx11-1.8.13-dev' '/nix/store/mvyxqkpyj2mgymljzj9bqi9bmz7ca5fk-xorgproto-2025.1' '/nix/store/5m91jqg1526jzsahrgmd37k4ml3nc5l4-libx11-1.8.13' '/nix/store/qfim6c146wnyszb7ij8cfx7glagx2m1a-libxcomposite-0.4.7-dev' '/nix/store/8bx5rrc94g1wl124n13gk5vrprpbrxn1-libxfixes-6.0.2-dev' '/nix/store/b47r32di2p2alprjnylsk9wg3m2gjd21-libxfixes-6.0.2' '/nix/store/x0cqnqvf0v9lain5bkkkq11f0089whvr-libxcomposite-0.4.7' '/nix/store/1kx6y7spy0q6372hqrvib7mw21gaq5bq-libxext-1.3.7-dev' '/nix/store/hd6i8dzybk2jqwqh6frarw30w15yqq9b-libxau-1.0.12-dev' '/nix/store/2krkc90x3ch0mgkk48fxlglq14nqapdr-libxau-1.0.12' '/nix/store/n1ykqk7ibmp4h5r4x5fng4cn9wjlgj9y-libxext-1.3.7' '/nix/store/gs34fdhbiw5ndp1akqbib2zsry53vi13-libxi-1.8.2-dev' '/nix/store/wnl69g3p3cb415xxxz09hfvrj624fg18-libxi-1.8.2' '/nix/store/94m0129pm3jlbg4fj8py92j1vi870m9c-libxrender-0.9.12-dev' '/nix/store/dwavjjnzjmp7901n2s61kw40qw8c5rfc-libxrender-0.9.12' '/nix/store/x44m80ahg51pz32dr0j39yzsr7bn7d5v-libxcb-1.17.0-dev' '/nix/store/fc1g44pg3i10wfzh3gb4m54pfgclsn76-libxcb-1.17.0' '/nix/store/s11qidhaq78zrwnd6jc2plxhbmv6y9b9-libxkbcommon-1.13.1-dev' '/nix/store/0c0xdj7xpilqfy2p33l1jm407f01652w-libxkbcommon-1.13.1' '/nix/store/9ag3dbrwgbf1pzzbrhcyk6kqss2h9qgz-libxcb-util-0.4.1-dev' '/nix/store/4857xql43q38d3wxd4d45p687g51w1wl-libxcb-util-0.4.1' '/nix/store/7i4fyg0w0kbdvb22gpnvjdxivjgc0nij-libxcb-image-0.4.1-dev' '/nix/store/p97g8g8fhzav86hj250kjfzqd9qbk619-libxcb-image-0.4.1' '/nix/store/yihma6aw528nj48ddwm835f8yg3jjb7p-libxcb-keysyms-0.4.1-dev' '/nix/store/58rwpsgflsp215rad9i2nq942jrg4bzi-libxcb-keysyms-0.4.1' '/nix/store/286wksf4n6hknrnljjs7z0wqnbsjwpnr-libxcb-render-util-0.3.10-dev' '/nix/store/sdr6iybvx2jaybmwv9s0rrxg9cylfvl0-libxcb-render-util-0.3.10' '/nix/store/zba0kgibxmp87ddlnnvwxrlfbc85w4cy-libxcb-wm-0.4.2-dev' '/nix/store/606k51my6ih6g7j15q5cdfkdspjzqs5v-libxcb-wm-0.4.2' '/nix/store/sz4fx21lyp3gwmvnm000v1fk4nyfbmdr-libxdmcp-1.1.5-dev' '/nix/store/yr83qw7bdfdxf5lb2xmfs70qb5hap0hj-libxdmcp-1.1.5' '/nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5' '/nix/store/8yvsggi3lyxvly1d24dppc3l3ccn3n1a-libxcb-cursor-0.1.6-dev' '/nix/store/7r5k0wr047sffnn9irdalqi3igfbrhpd-libxcb-cursor-0.1.6' '/nix/store/xf5sljv7paqfjc6j62kmns4xxva1kwsd-libepoxy-1.5.10-dev' '/nix/store/f8yff1anpl5dr3bsrq40dq5x9yfz56hs-libepoxy-1.5.10' '/nix/store/g4hxm4rk504vm7py42h4m0309j98da71-cups-2.4.16-dev' '/nix/store/jzm7j0y2ph7dc1bdfdwdaa653b9mr3m8-gmp-with-cxx-6.3.0-dev' '/nix/store/1agm3iac17cykdmabxck60vwk5sjk4wc-gmp-with-cxx-6.3.0' '/nix/store/7cyfjdf16s9fwny90wa7ybdmpbq5fgd4-cups-2.4.16-lib' '/nix/store/82ijqnr2xdzw65vsbjvgcbb7s0xrzh81-cups-2.4.16' '/nix/store/lzy227gr54781r8nwws22cw95rl3ji9k-wayland-1.24.0-dev' '/nix/store/ysbyz6zabjcg078ssp4l58mhgbr57pbz-wayland-1.24.0' '/nix/store/97xaplx9nwxxxsp954sdpia89jqvyz4v-wayland-scanner-1.24.0-dev' '/nix/store/pkh91qil9ai3jjslkp590xij6ymxsa6g-wayland-scanner-1.24.0-bin' '/nix/store/jp2k2qal08z06glmgpiwracq0bwi1bzg-wayland-scanner-1.24.0' '/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0' '/nix/store/4kxlcy7r9y47p4mpadjik707gfyrqw6b-qtdeclarative-6.11.0-dev' '/nix/store/fj8p3gghc4195sja8gw8pmv23lmh54mv-qtlanguageserver-6.11.0-dev' '/nix/store/l73rdqg0ycwyhiplbl31pc4p7c3p2zvx-qtlanguageserver-6.11.0' '/nix/store/mnhibmxz4vabpx838q73gg364vaxba38-qtshadertools-6.11.0-dev' '/nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0' '/nix/store/qriil2zh2r8n9p76x3z4admfsipc6mr3-qtsvg-6.11.0-dev' '/nix/store/anjilsbn2zq0i36z0m67w2djvsvc7lzg-qtsvg-6.11.0' '/nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0' '/nix/store/1wdnr6g4xpxj6vk64lw5pkdi0syw7ql8-qttools-6.11.0-dev' '/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0' '/nix/store/v7mjkia7ki79s5i24ldbzq1khalhgzk0-pkg-config-wrapper-0.29.2' '/nix/store/66lksljlljdd5ppgvfk8g89y8xgqcxd7-patchelf-0.15.2' '/nix/store/9vv51km72lpngs6aixxplrr3c88q4c3c-update-autotools-gnu-config-scripts-hook' '/nix/store/0y5xmdb7qfvimjwbq7ibg1xdgkgjwqng-no-broken-symlinks.sh' '/nix/store/cv1d7p48379km6a85h4zp6kr86brh32q-audit-tmpdir.sh' '/nix/store/85clx3b0xkdf58jn161iy80y5223ilbi-compress-man-pages.sh' '/nix/store/p3l1a5y7nllfyrjn2krlwgcc3z0cd3fq-make-symlinks-relative.sh' '/nix/store/5yzw0vhkyszf2d179m0qfkgxmp5wjjx4-move-docs.sh' '/nix/store/fyaryjvghbkpfnsyw97hb3lyb37s1pd6-move-lib64.sh' '/nix/store/kd4xwxjpjxi71jkm6ka0np72if9rm3y0-move-sbin.sh' '/nix/store/pag6l61paj1dc9sv15l7bm5c17xn5kyk-move-systemd-user-units.sh' '/nix/store/cmzya9irvxzlkh7lfy6i82gbp0saxqj3-multiple-outputs.sh' '/nix/store/x8c40nfigps493a07sdr2pm5s9j1cdc0-patch-shebangs.sh' '/nix/store/cickvswrvann041nqxb0rxilc46svw1n-prune-libtool-files.sh' '/nix/store/xyff06pkhki3qy1ls77w10s0v79c9il0-reproducible-builds.sh' '/nix/store/z7k98578dfzi6l3hsvbivzm7hfqlk0zc-set-source-date-epoch-to-latest.sh' '/nix/store/pilsssjjdxvdphlg2h19p0bfx5q0jzkn-strip.sh' '/nix/store/qd70v8g0561vm8m33kmnp79z00cgyi5n-gcc-wrapper-15.2.0' '/nix/store/kfwagnh6i1mysf7vxq679rzh30z9zj3g-binutils-wrapper-2.46' )
_substituteStream_has_warned_replace_deprecation='false'
declare -a envHostHostHooks=('make_glib_find_gsettings_schemas' 'pkgConfigWrapper_addPkgConfigPath' 'ccWrapper_addCVars' 'bintoolsWrapper_addLDVars' )
NIX_ENFORCE_NO_NATIVE='1'
export NIX_ENFORCE_NO_NATIVE
OSTYPE='linux-gnu'
QMAKE='/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0/bin/qmake'
export QMAKE
qtQmlPrefix='lib/qt-6/qml'
depsTargetTargetPropagated=''
export depsTargetTargetPropagated
depsHostHostPropagated=''
export depsHostHostPropagated
DEVENV_PROFILE='/nix/store/n2im20ms01xyg1kjq554fy1l1yx22grz-devenv-profile'
export DEVENV_PROFILE
PS4='+ '
DEVENV_STATE='/home/najimi/public_html/ird31/02062026/pyside/.devenv/.devenv/state'
export DEVENV_STATE
BASH='/nix/store/i27rhb3nr65rkrwz36bchkwmav6ggsmn-bash-5.3p9/bin/bash'
__structuredAttrs=''
export __structuredAttrs
SOURCE_DATE_EPOCH='315532800'
export SOURCE_DATE_EPOCH
dontAddPythonPath='1'
export dontAddPythonPath
IN_NIX_SHELL='impure'
export IN_NIX_SHELL
GETTEXTDATADIRS_FOR_BUILD='/nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0/share/gettext:/nix/store/zcmsivndca5wmam9nwnbjrm0zkgykwfz-glib-2.86.3/share/gettext'
export GETTEXTDATADIRS_FOR_BUILD
NIX_BINTOOLS='/nix/store/kfwagnh6i1mysf7vxq679rzh30z9zj3g-binutils-wrapper-2.46'
export NIX_BINTOOLS
qttoolsPathSeen='/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0'
depsBuildBuild=''
export depsBuildBuild
CXX='g++'
export CXX
depsTargetTarget=''
export depsTargetTarget
declare -a envHostTargetHooks=('make_glib_find_gsettings_schemas' 'pkgConfigWrapper_addPkgConfigPath' 'ccWrapper_addCVars' 'bintoolsWrapper_addLDVars' )
AR='ar'
export AR
CC='gcc'
export CC
PYTHONPATH='/nix/store/njasaglkcsdppwmnfn01lvcgpika7ncb-sitecustomize.py'
export PYTHONPATH
stdenv='/nix/store/w708nqm6lvvikrq8d3x45g96hzfij0r8-stdenv-linux'
export stdenv
qtPluginPrefix='lib/qt-6/plugins'
declare -a postInstallHooks=('glibPostInstallHook' )
NIX_PKG_CONFIG_WRAPPER_TARGET_HOST_x86_64_unknown_linux_gnu='1'
export NIX_PKG_CONFIG_WRAPPER_TARGET_HOST_x86_64_unknown_linux_gnu
pkg='/nix/store/qd70v8g0561vm8m33kmnp79z00cgyi5n-gcc-wrapper-15.2.0'
HOST_PATH='/nix/store/jjxngswsb214vb58qx485jhmilf0kxxy-coreutils-9.10/bin:/nix/store/vhsirn9m1ifmnw5g1qczzhvqkx6lw1if-findutils-4.10.0/bin:/nix/store/hx084k7pgz4n0vgkvil9gbcnl8y6p1xf-diffutils-3.12/bin:/nix/store/af4a8i43kc2ss4rnmf0swkk2mprsw6xq-gnused-4.9/bin:/nix/store/wf7lr2hf43546jc5kwqh3dbxnpcnw1mn-gnugrep-3.12/bin:/nix/store/lakv43kv98sl6h0ba6wnyg513mcq61vl-gawk-5.4.0/bin:/nix/store/rnvb7bvp53v2dw7pcwh9xb89x5z4rjib-gnutar-1.35/bin:/nix/store/9lhr1c3l9qzv8pzp3idmii1nwvxxjys3-gzip-1.14/bin:/nix/store/zj6r42syyswkhrr174bzppj3n7xhq936-bzip2-1.0.8-bin/bin:/nix/store/yvrwcs1a45rj8142n0l2w9q9s6akamjr-gnumake-4.4.1/bin:/nix/store/i27rhb3nr65rkrwz36bchkwmav6ggsmn-bash-5.3p9/bin:/nix/store/zj7mxwji29zvj9vl70iip7gw4h6ljfam-patch-2.8/bin:/nix/store/2nm5c858fh52s6mhcffm07s3biaxys44-xz-5.8.3-bin/bin:/nix/store/iscmg3ivhx7z67dz14lrg7p77gnsa4dw-file-5.45/bin'
export HOST_PATH
initialPath='/nix/store/jjxngswsb214vb58qx485jhmilf0kxxy-coreutils-9.10 /nix/store/vhsirn9m1ifmnw5g1qczzhvqkx6lw1if-findutils-4.10.0 /nix/store/hx084k7pgz4n0vgkvil9gbcnl8y6p1xf-diffutils-3.12 /nix/store/af4a8i43kc2ss4rnmf0swkk2mprsw6xq-gnused-4.9 /nix/store/wf7lr2hf43546jc5kwqh3dbxnpcnw1mn-gnugrep-3.12 /nix/store/lakv43kv98sl6h0ba6wnyg513mcq61vl-gawk-5.4.0 /nix/store/rnvb7bvp53v2dw7pcwh9xb89x5z4rjib-gnutar-1.35 /nix/store/9lhr1c3l9qzv8pzp3idmii1nwvxxjys3-gzip-1.14 /nix/store/zj6r42syyswkhrr174bzppj3n7xhq936-bzip2-1.0.8-bin /nix/store/yvrwcs1a45rj8142n0l2w9q9s6akamjr-gnumake-4.4.1 /nix/store/i27rhb3nr65rkrwz36bchkwmav6ggsmn-bash-5.3p9 /nix/store/zj7mxwji29zvj9vl70iip7gw4h6ljfam-patch-2.8 /nix/store/2nm5c858fh52s6mhcffm07s3biaxys44-xz-5.8.3-bin /nix/store/iscmg3ivhx7z67dz14lrg7p77gnsa4dw-file-5.45'
declare -A qmakePathSeen=(['/nix/store/anjilsbn2zq0i36z0m67w2djvsvc7lzg-qtsvg-6.11.0']='1' ['/nix/store/gkdgy79sz0xsyipy6g0arivxnk7hlwc4-lttng-ust-2.14.0']='1' ['/nix/store/cmzya9irvxzlkh7lfy6i82gbp0saxqj3-multiple-outputs.sh']='1' ['/nix/store/hrbmsxk0jl93igyrmlhns5a8jfvc96b3-libsepol-3.10-dev']='1' ['/nix/store/58rwpsgflsp215rad9i2nq942jrg4bzi-libxcb-keysyms-0.4.1']='1' ['/nix/store/lg8kfrcxy4bcwnlwbfn6x3s48k4aawba-libffi-3.5.2-dev']='1' ['/nix/store/sdr6iybvx2jaybmwv9s0rrxg9cylfvl0-libxcb-render-util-0.3.10']='1' ['/nix/store/kw0yjwbvw6arwgwaa3p8rz46qsgy4626-glib-2.86.3-dev']='1' ['/nix/store/5m91jqg1526jzsahrgmd37k4ml3nc5l4-libx11-1.8.13']='1' ['/nix/store/94m0129pm3jlbg4fj8py92j1vi870m9c-libxrender-0.9.12-dev']='1' ['/nix/store/kdlv714j07803x3ynn2w4a44xi84bh0c-libselinux-3.10']='1' ['/nix/store/7i4fyg0w0kbdvb22gpnvjdxivjgc0nij-libxcb-image-0.4.1-dev']='1' ['/nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0']='1' ['/nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7']='1' ['/nix/store/hd6i8dzybk2jqwqh6frarw30w15yqq9b-libxau-1.0.12-dev']='1' ['/nix/store/5722rfnbamx35h5df4wlvlqrmvmaan7i-glibc-iconv-2.42']='1' ['/nix/store/wbyqkb1vpm41s4jb8pv0i9h4jv08xdrv-openssl-3.6.1']='1' ['/nix/store/mj1k1nsdqr0mp9wsnkg7blgh3xf5wssv-brotli-1.2.0']='1' ['/nix/store/85clx3b0xkdf58jn161iy80y5223ilbi-compress-man-pages.sh']='1' ['/nix/store/2b9b04irbcmasriarwwgqhby01mzzwr1-libxml2-2.15.1-bin']='1' ['/nix/store/f4329v3zm2p5ggkvh5ymv9jphvrpf6ad-libxslt-1.1.45-dev']='1' ['/nix/store/9rpism89x6lyjcwzzkp6kana25rs03nn-systemd-260.1']='1' ['/nix/store/f8yff1anpl5dr3bsrq40dq5x9yfz56hs-libepoxy-1.5.10']='1' ['/nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0']='1' ['/nix/store/cickvswrvann041nqxb0rxilc46svw1n-prune-libtool-files.sh']='1' ['/nix/store/yihma6aw528nj48ddwm835f8yg3jjb7p-libxcb-keysyms-0.4.1-dev']='1' ['/nix/store/8w64dm3sny77mnf8jm5n1n57d1fk25x4-libselinux-3.10-bin']='1' ['/nix/store/1wlc0gp4sp9rdd68j0ya1s5d27r2fszr-find-xml-catalogs-hook']='1' ['/nix/store/fc1g44pg3i10wfzh3gb4m54pfgclsn76-libxcb-1.17.0']='1' ['/nix/store/cmvpl03c604f718hhnazghiwb5dbn32a-liburcu-0.15.6-dev']='1' ['/nix/store/82ijqnr2xdzw65vsbjvgcbb7s0xrzh81-cups-2.4.16']='1' ['/nix/store/0dmcpvbp2rvz8a7p2yhsrkpcb41kr6wl-icu4c-76.1']='1' ['/nix/store/zba0kgibxmp87ddlnnvwxrlfbc85w4cy-libxcb-wm-0.4.2-dev']='1' ['/nix/store/g6a7agib4hbnvqcny05fk8dfjplw8nkb-dbus-1.16.2']='1' ['/nix/store/8yvsggi3lyxvly1d24dppc3l3ccn3n1a-libxcb-cursor-0.1.6-dev']='1' ['/nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5']='1' ['/nix/store/zcmsivndca5wmam9nwnbjrm0zkgykwfz-glib-2.86.3']='1' ['/nix/store/vbqakw4shfcbmdxs6kkp3jmp9k5br94y-zstd-1.5.7-dev']='1' ['/nix/store/kfwagnh6i1mysf7vxq679rzh30z9zj3g-binutils-wrapper-2.46']='1' ['/nix/store/pkh91qil9ai3jjslkp590xij6ymxsa6g-wayland-scanner-1.24.0-bin']='1' ['/nix/store/zs7y2aadk71bawprdcn000az9y05s8nf-vulkan-loader-1.4.341.0']='1' ['/nix/store/1agm3iac17cykdmabxck60vwk5sjk4wc-gmp-with-cxx-6.3.0']='1' ['/nix/store/n1ykqk7ibmp4h5r4x5fng4cn9wjlgj9y-libxext-1.3.7']='1' ['/nix/store/l73rdqg0ycwyhiplbl31pc4p7c3p2zvx-qtlanguageserver-6.11.0']='1' ['/nix/store/8vc0mlapmdi36pxcid7ll1808lhm25vz-libxslt-1.1.45-bin']='1' ['/nix/store/p97g8g8fhzav86hj250kjfzqd9qbk619-libxcb-image-0.4.1']='1' ['/nix/store/x44m80ahg51pz32dr0j39yzsr7bn7d5v-libxcb-1.17.0-dev']='1' ['/nix/store/1cg9syf0w509d5prxya2ak7k1pizrbi4-libdatrie-2019-12-20-dev']='1' ['/nix/store/sz4fx21lyp3gwmvnm000v1fk4nyfbmdr-libxdmcp-1.1.5-dev']='1' ['/nix/store/mnhibmxz4vabpx838q73gg364vaxba38-qtshadertools-6.11.0-dev']='1' ['/nix/store/jphqqkgn7swnppi4dgwxavd3fac51bvx-sqlite-3.51.2-dev']='1' ['/nix/store/y694ganxnxk9n25ggagb6izr1s86i77v-md4c-0.5.2-lib']='1' ['/nix/store/97cl9bqalmjfr07z0q85bb86896rw965-libxslt-1.1.45']='1' ['/nix/store/4303g76pqhl7r8a2xvci0b4bj47bfbjz-libx11-1.8.13-dev']='1' ['/nix/store/b63lk3n7piwf7a790c4cy0zinqi184fs-libjpeg-turbo-3.1.4-dev']='1' ['/nix/store/6sirsgrlw5wpjb61v07sbgs4sfsfdwx6-libxml2-2.15.1-dev']='1' ['/nix/store/yr83qw7bdfdxf5lb2xmfs70qb5hap0hj-libxdmcp-1.1.5']='1' ['/nix/store/67cm7qx8s210dwkq64vqbf3q9z62ddyg-sqlite-3.51.2-bin']='1' ['/nix/store/rddcn5m5v9k7n3xrchvqdg5grcr8ax1n-double-conversion-3.3.1']='1' ['/nix/store/r7bp82svf04jqw3x7wnjlyr951jkf85k-freetype-2.14.2-dev']='1' ['/nix/store/6xzs85s04k598dchdp1jmyia35ajwn6l-dbus-1.16.2-dev']='1' ['/nix/store/gjg4aagfcn6r96c73rz4rwbclbdqqc6v-fontconfig-2.17.1-dev']='1' ['/nix/store/1x1msj33z37b65vlxbs51l7i4j92qn9h-brotli-1.2.0-dev']='1' ['/nix/store/7r5k0wr047sffnn9irdalqi3igfbrhpd-libxcb-cursor-0.1.6']='1' ['/nix/store/gsn3vddway3289p6mzy5shd1paly8dp4-libpng-apng-1.6.56']='1' ['/nix/store/66lksljlljdd5ppgvfk8g89y8xgqcxd7-patchelf-0.15.2']='1' ['/nix/store/aaz4ykc5rh1kbfqk2s7lr9iqcq6fj02h-liburcu-0.15.6']='1' ['/nix/store/5xr74grdnd43gd0ngkbkcrc3bhidxyng-lttng-ust-2.14.0-bin']='1' ['/nix/store/n80alrbrr59n9b2qnj8z52yj0zn1gcwm-libdrm-2.4.131-dev']='1' ['/nix/store/9wv94c4wzy3fpfa516qjp4b1bfiymrhy-libb2-0.98.1']='1' ['/nix/store/khhzkpj9169ydnyg7jjrjx7s5ygdkcas-pcre2-10.46']='1' ['/nix/store/lpzr2b7izm6d80b4hjc062fl0ylimr2x-pcre2-10.46-bin']='1' ['/nix/store/606k51my6ih6g7j15q5cdfkdspjzqs5v-libxcb-wm-0.4.2']='1' ['/nix/store/p3459sn6kfj0lxvy6r1nlcgc249bqmvl-lttng-ust-2.14.0-dev']='1' ['/nix/store/0y5xmdb7qfvimjwbq7ibg1xdgkgjwqng-no-broken-symlinks.sh']='1' ['/nix/store/6fbbmfpp3j9yd8yi4g1j2ajy987splhi-graphite2-1.3.14-dev']='1' ['/nix/store/f2qrafl07iyfggddmw44bd9z0isn77jg-psqlodbc-17.00.0008']='1' ['/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0']='1' ['/nix/store/7ff90dag7i173s49c5m614wny2lpps1l-brotli-1.2.0-lib']='1' ['/nix/store/ndr1qrjb4y4p66b51sf49x95mymmvr2l-harfbuzz-12.3.0-dev']='1' ['/nix/store/mm2abhg9j26xcz4mbzi0k2zxqf1924bd-md4c-0.5.2-dev']='1' ['/nix/store/ixhlv41i2wpl84xgjcks061dz4yssbg3-zlib-1.3.2']='1' ['/nix/store/bh64ycxf96cc4v43m77nszmpvbs0pfv7-bzip2-1.0.8-dev']='1' ['/nix/store/fdqacryg2w9kiwb94c9rzfsyff4im8xj-libglvnd-1.7.0']='1' ['/nix/store/1jx6xl1bn80av3xmiarlb8lnavmc4grs-libdrm-2.4.131']='1' ['/nix/store/qriil2zh2r8n9p76x3z4admfsipc6mr3-qtsvg-6.11.0-dev']='1' ['/nix/store/ygkyaqnzsz3pf7ly1g7ggh1bp5h86mcp-libxml2-2.15.1']='1' ['/nix/store/4857xql43q38d3wxd4d45p687g51w1wl-libxcb-util-0.4.1']='1' ['/nix/store/jp2k2qal08z06glmgpiwracq0bwi1bzg-wayland-scanner-1.24.0']='1' ['/nix/store/286wksf4n6hknrnljjs7z0wqnbsjwpnr-libxcb-render-util-0.3.10-dev']='1' ['/nix/store/91jddg4g6788ilnk3kww8j8jhxhzk6d3-zstd-1.5.7-bin']='1' ['/nix/store/pilsssjjdxvdphlg2h19p0bfx5q0jzkn-strip.sh']='1' ['/nix/store/4iazbvz8d907sdvbq6x9s39qcmi7bqi2-util-linux-2.42-lib']='1' ['/nix/store/gs34fdhbiw5ndp1akqbib2zsry53vi13-libxi-1.8.2-dev']='1' ['/nix/store/3yl2s5r3yph88imzbgbdrh8pbs9rcjcs-zlib-1.3.2-dev']='1' ['/nix/store/crnjlpi5fymlsdiynhi5wdgzc6a9f75a-libglvnd-1.7.0-dev']='1' ['/nix/store/knapjl9j737i3ghq7iswryp6gcni5j32-pyright-1.1.409']='1' ['/nix/store/pag6l61paj1dc9sv15l7bm5c17xn5kyk-move-systemd-user-units.sh']='1' ['/nix/store/k1cm26fb7bsxif6lcwpzi7iyccvrv4f1-pcre2-10.46-dev']='1' ['/nix/store/6h473sgnn2glbvgjd6sj242144zmllvj-libthai-0.1.30-dev']='1' ['/nix/store/fga8simmllr8rlxql3qfb41620yh3n3p-icu4c-76.1-dev']='1' ['/nix/store/lf8iwryhabj1ifjg3kjyidvl9nakib4p-libsepol-3.10']='1' ['/nix/store/x8c40nfigps493a07sdr2pm5s9j1cdc0-patch-shebangs.sh']='1' ['/nix/store/dy64cxaygvmjfznysgxk501yds8jij6s-openssl-3.6.1-dev']='1' ['/nix/store/b47r32di2p2alprjnylsk9wg3m2gjd21-libxfixes-6.0.2']='1' ['/nix/store/k0rqiflg1vkn1kj96br5pfxj40p3srz4-zstd-1.5.7']='1' ['/nix/store/xq5q2y828igkiwyq25lhrhhv424y3aza-libproxy-0.5.12-dev']='1' ['/nix/store/kd4xwxjpjxi71jkm6ka0np72if9rm3y0-move-sbin.sh']='1' ['/nix/store/qfim6c146wnyszb7ij8cfx7glagx2m1a-libxcomposite-0.4.7-dev']='1' ['/nix/store/hb9zkpgafixyxc52dcj8sfknqpmfdpk6-libsepol-3.10-bin']='1' ['/nix/store/lzy227gr54781r8nwws22cw95rl3ji9k-wayland-1.24.0-dev']='1' ['/nix/store/qdyra8ii6kpvwx8cqvg7fradkydxjmyd-vulkan-headers-1.4.341.0']='1' ['/nix/store/mr1ghgw331ncp06bv7kcra1wdpg8qdab-mariadb-connector-odbc-3.2.6']='1' ['/nix/store/82agk4mh225wblcdyv6yq3a852w7lxsn-md4c-0.5.2']='1' ['/nix/store/g9h37kjrpvyzhsq4a79v2qkrpl4y1s7k-util-linux-2.42-bin']='1' ['/nix/store/1wdnr6g4xpxj6vk64lw5pkdi0syw7ql8-qttools-6.11.0-dev']='1' ['/nix/store/b9jcqjd8gnxr87p7wc91lmbyd90kzlc1-glib-2.86.3-bin']='1' ['/nix/store/v18drszzvspk1wlq06r68nxgpn2b4cvd-fontconfig-2.17.1-bin']='1' ['/nix/store/5bs057cgp4nxqff22jg0k1svs121z6a8-bash-interactive-5.3p9-dev']='1' ['/nix/store/8bx5rrc94g1wl124n13gk5vrprpbrxn1-libxfixes-6.0.2-dev']='1' ['/nix/store/jc55bix1lk4v4d646s78gs6pvliks9jw-double-conversion-3.3.1-dev']='1' ['/nix/store/wnl69g3p3cb415xxxz09hfvrj624fg18-libxi-1.8.2']='1' ['/nix/store/dwavjjnzjmp7901n2s61kw40qw8c5rfc-libxrender-0.9.12']='1' ['/nix/store/zj6r42syyswkhrr174bzppj3n7xhq936-bzip2-1.0.8-bin']='1' ['/nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21']='1' ['/nix/store/9vv51km72lpngs6aixxplrr3c88q4c3c-update-autotools-gnu-config-scripts-hook']='1' ['/nix/store/cv1d7p48379km6a85h4zp6kr86brh32q-audit-tmpdir.sh']='1' ['/nix/store/p9v9m9k1yinv56mi1c1w5xjrl5asw6sh-libdatrie-2019-12-20-lib']='1' ['/nix/store/0c0xdj7xpilqfy2p33l1jm407f01652w-libxkbcommon-1.13.1']='1' ['/nix/store/v70k3ch8rcw9b0la3axqb34dkyxqnx2s-libjpeg-turbo-3.1.4-bin']='1' ['/nix/store/jzm7j0y2ph7dc1bdfdwdaa653b9mr3m8-gmp-with-cxx-6.3.0-dev']='1' ['/nix/store/s11qidhaq78zrwnd6jc2plxhbmv6y9b9-libxkbcommon-1.13.1-dev']='1' ['/nix/store/yanmwp5f435ing2nbhwa4v0gdmpl2an1-dbus-1.16.2-lib']='1' ['/nix/store/4bwbk4an4bx7cb8xwffghvjjyfyl7m2i-bash-interactive-5.3p9']='1' ['/nix/store/80s9hhm2wyb053v2q55iz91hccxw0w47-util-linux-2.42-dev']='1' ['/nix/store/qd70v8g0561vm8m33kmnp79z00cgyi5n-gcc-wrapper-15.2.0']='1' ['/nix/store/p3l1a5y7nllfyrjn2krlwgcc3z0cd3fq-make-symlinks-relative.sh']='1' ['/nix/store/hyai3q7gvdfppw4ky7s2mvhxvfyp5bh7-libffi-3.5.2']='1' ['/nix/store/ysbyz6zabjcg078ssp4l58mhgbr57pbz-wayland-1.24.0']='1' ['/nix/store/fj8p3gghc4195sja8gw8pmv23lmh54mv-qtlanguageserver-6.11.0-dev']='1' ['/nix/store/bg6ms0vw071g1fdbx2my6bbzsk62p6vd-fontconfig-2.17.1-lib']='1' ['/nix/store/qik1sfr8z8w4ffrd21yv76z2nvwyhmn5-graphite2-1.3.14']='1' ['/nix/store/2di90l89y2ygdy3rbws7dhg9nrvd3pnx-openssl-3.6.1-bin']='1' ['/nix/store/4kxlcy7r9y47p4mpadjik707gfyrqw6b-qtdeclarative-6.11.0-dev']='1' ['/nix/store/i3p4h70l0qq32lizw0i4px8afn1y7g8w-systemd-minimal-libs-260.1']='1' ['/nix/store/7cyfjdf16s9fwny90wa7ybdmpbq5fgd4-cups-2.4.16-lib']='1' ['/nix/store/mzf14h3p86kb5ik5f2b9c857i9465c1h-sqlite-connector-odbc-0.99991']='1' ['/nix/store/2amncb4zvr32gm5d2i8m6gz29c02cn61-bzip2-1.0.8']='1' ['/nix/store/1kx6y7spy0q6372hqrvib7mw21gaq5bq-libxext-1.3.7-dev']='1' ['/nix/store/rpd86021fc7q0mnzjrbcdnyi62qarql9-harfbuzz-12.3.0']='1' ['/nix/store/h176f4dhbcpj4lpf8sn28vdqp1mks5jk-libpng-apng-1.6.56-dev']='1' ['/nix/store/7cbpfajskn4hni009h34bg7i99ha79gv-shiboken6-6.11.0']='1' ['/nix/store/jmjmp6wkg646s4ii5znac68zxdj1p55h-vulkan-loader-1.4.341.0-dev']='1' ['/nix/store/2krkc90x3ch0mgkk48fxlglq14nqapdr-libxau-1.0.12']='1' ['/nix/store/mvyxqkpyj2mgymljzj9bqi9bmz7ca5fk-xorgproto-2025.1']='1' ['/nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env']='1' ['/nix/store/9ag3dbrwgbf1pzzbrhcyk6kqss2h9qgz-libxcb-util-0.4.1-dev']='1' ['/nix/store/5yzw0vhkyszf2d179m0qfkgxmp5wjjx4-move-docs.sh']='1' ['/nix/store/1bkcpa0lhy8dw3h6sz5b9742bihb9290-libselinux-3.10-dev']='1' ['/nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14']='1' ['/nix/store/hksq1dd4i8hp42q0y6ndhas4s3kscmb6-qtbase-6.11.0-dev']='1' ['/nix/store/xyff06pkhki3qy1ls77w10s0v79c9il0-reproducible-builds.sh']='1' ['/nix/store/6bhki1k3ck0azd4dlfpb1qs8fcb0a3qs-libthai-0.1.30']='1' ['/nix/store/5087xk8l09k90gddzw8y9b4yypyn23a5-sqlite-3.51.2']='1' ['/nix/store/zr22ggqbv79yv4y4wv06r4grla9h59yx-freetype-2.14.2']='1' ['/nix/store/lmw2c8802x4618h0pmnv5140sgfqriqi-libproxy-0.5.12']='1' ['/nix/store/7k5706vhxnidhqn0vzdn0x70x0g746ky-pyside6-6.11.0']='1' ['/nix/store/9434wg73ynb25zfq3gvr5vij9rn3p9wh-mesa-libgbm-26.0.3']='1' ['/nix/store/490b2y1f8lz3jfns1zf7l0g7bh4kncbh-systemd-260.1-dev']='1' ['/nix/store/qc2r5wx0k5dh6ypwqjq4pfy6314npgaj-systemd-minimal-libs-260.1-dev']='1' ['/nix/store/97xaplx9nwxxxsp954sdpia89jqvyz4v-wayland-scanner-1.24.0-dev']='1' ['/nix/store/g4hxm4rk504vm7py42h4m0309j98da71-cups-2.4.16-dev']='1' ['/nix/store/sqvm6lz2lbn43zflil7rgn9p0d86gpfd-libdrm-2.4.131-bin']='1' ['/nix/store/v7mjkia7ki79s5i24ldbzq1khalhgzk0-pkg-config-wrapper-0.29.2']='1' ['/nix/store/fyaryjvghbkpfnsyw97hb3lyb37s1pd6-move-lib64.sh']='1' ['/nix/store/xf5sljv7paqfjc6j62kmns4xxva1kwsd-libepoxy-1.5.10-dev']='1' ['/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0']='1' ['/nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0']='1' ['/nix/store/gdx3ay9ms54qyivhbdmcrbcb778ww7wf-libdatrie-2019-12-20-bin']='1' ['/nix/store/x0cqnqvf0v9lain5bkkkq11f0089whvr-libxcomposite-0.4.7']='1' ['/nix/store/lsln4vpc8spwmb96vjjmg4yd0krd2r7c-libjpeg-turbo-3.1.4']='1' ['/nix/store/z7k98578dfzi6l3hsvbivzm7hfqlk0zc-set-source-date-epoch-to-latest.sh']='1' )
QT_ADDITIONAL_PACKAGES_PREFIX_PATH='/nix/store/5bs057cgp4nxqff22jg0k1svs121z6a8-bash-interactive-5.3p9-dev:/nix/store/4bwbk4an4bx7cb8xwffghvjjyfyl7m2i-bash-interactive-5.3p9:/nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env:/nix/store/knapjl9j737i3ghq7iswryp6gcni5j32-pyright-1.1.409:/nix/store/7k5706vhxnidhqn0vzdn0x70x0g746ky-pyside6-6.11.0:/nix/store/7cbpfajskn4hni009h34bg7i99ha79gv-shiboken6-6.11.0:/nix/store/hksq1dd4i8hp42q0y6ndhas4s3kscmb6-qtbase-6.11.0-dev:/nix/store/6sirsgrlw5wpjb61v07sbgs4sfsfdwx6-libxml2-2.15.1-dev:/nix/store/1wlc0gp4sp9rdd68j0ya1s5d27r2fszr-find-xml-catalogs-hook:/nix/store/2b9b04irbcmasriarwwgqhby01mzzwr1-libxml2-2.15.1-bin:/nix/store/ygkyaqnzsz3pf7ly1g7ggh1bp5h86mcp-libxml2-2.15.1:/nix/store/f4329v3zm2p5ggkvh5ymv9jphvrpf6ad-libxslt-1.1.45-dev:/nix/store/8vc0mlapmdi36pxcid7ll1808lhm25vz-libxslt-1.1.45-bin:/nix/store/97cl9bqalmjfr07z0q85bb86896rw965-libxslt-1.1.45:/nix/store/dy64cxaygvmjfznysgxk501yds8jij6s-openssl-3.6.1-dev:/nix/store/2di90l89y2ygdy3rbws7dhg9nrvd3pnx-openssl-3.6.1-bin:/nix/store/wbyqkb1vpm41s4jb8pv0i9h4jv08xdrv-openssl-3.6.1:/nix/store/jphqqkgn7swnppi4dgwxavd3fac51bvx-sqlite-3.51.2-dev:/nix/store/67cm7qx8s210dwkq64vqbf3q9z62ddyg-sqlite-3.51.2-bin:/nix/store/5087xk8l09k90gddzw8y9b4yypyn23a5-sqlite-3.51.2:/nix/store/3yl2s5r3yph88imzbgbdrh8pbs9rcjcs-zlib-1.3.2-dev:/nix/store/ixhlv41i2wpl84xgjcks061dz4yssbg3-zlib-1.3.2:/nix/store/crnjlpi5fymlsdiynhi5wdgzc6a9f75a-libglvnd-1.7.0-dev:/nix/store/fdqacryg2w9kiwb94c9rzfsyff4im8xj-libglvnd-1.7.0:/nix/store/qdyra8ii6kpvwx8cqvg7fradkydxjmyd-vulkan-headers-1.4.341.0:/nix/store/jmjmp6wkg646s4ii5znac68zxdj1p55h-vulkan-loader-1.4.341.0-dev:/nix/store/zs7y2aadk71bawprdcn000az9y05s8nf-vulkan-loader-1.4.341.0:/nix/store/ndr1qrjb4y4p66b51sf49x95mymmvr2l-harfbuzz-12.3.0-dev:/nix/store/6fbbmfpp3j9yd8yi4g1j2ajy987splhi-graphite2-1.3.14-dev:/nix/store/qik1sfr8z8w4ffrd21yv76z2nvwyhmn5-graphite2-1.3.14:/nix/store/rpd86021fc7q0mnzjrbcdnyi62qarql9-harfbuzz-12.3.0:/nix/store/fga8simmllr8rlxql3qfb41620yh3n3p-icu4c-76.1-dev:/nix/store/0dmcpvbp2rvz8a7p2yhsrkpcb41kr6wl-icu4c-76.1:/nix/store/b63lk3n7piwf7a790c4cy0zinqi184fs-libjpeg-turbo-3.1.4-dev:/nix/store/v70k3ch8rcw9b0la3axqb34dkyxqnx2s-libjpeg-turbo-3.1.4-bin:/nix/store/lsln4vpc8spwmb96vjjmg4yd0krd2r7c-libjpeg-turbo-3.1.4:/nix/store/h176f4dhbcpj4lpf8sn28vdqp1mks5jk-libpng-apng-1.6.56-dev:/nix/store/gsn3vddway3289p6mzy5shd1paly8dp4-libpng-apng-1.6.56:/nix/store/k1cm26fb7bsxif6lcwpzi7iyccvrv4f1-pcre2-10.46-dev:/nix/store/lpzr2b7izm6d80b4hjc062fl0ylimr2x-pcre2-10.46-bin:/nix/store/khhzkpj9169ydnyg7jjrjx7s5ygdkcas-pcre2-10.46:/nix/store/vbqakw4shfcbmdxs6kkp3jmp9k5br94y-zstd-1.5.7-dev:/nix/store/91jddg4g6788ilnk3kww8j8jhxhzk6d3-zstd-1.5.7-bin:/nix/store/k0rqiflg1vkn1kj96br5pfxj40p3srz4-zstd-1.5.7:/nix/store/9wv94c4wzy3fpfa516qjp4b1bfiymrhy-libb2-0.98.1:/nix/store/mm2abhg9j26xcz4mbzi0k2zxqf1924bd-md4c-0.5.2-dev:/nix/store/y694ganxnxk9n25ggagb6izr1s86i77v-md4c-0.5.2-lib:/nix/store/82agk4mh225wblcdyv6yq3a852w7lxsn-md4c-0.5.2:/nix/store/jc55bix1lk4v4d646s78gs6pvliks9jw-double-conversion-3.3.1-dev:/nix/store/rddcn5m5v9k7n3xrchvqdg5grcr8ax1n-double-conversion-3.3.1:/nix/store/xq5q2y828igkiwyq25lhrhhv424y3aza-libproxy-0.5.12-dev:/nix/store/lmw2c8802x4618h0pmnv5140sgfqriqi-libproxy-0.5.12:/nix/store/6xzs85s04k598dchdp1jmyia35ajwn6l-dbus-1.16.2-dev:/nix/store/yanmwp5f435ing2nbhwa4v0gdmpl2an1-dbus-1.16.2-lib:/nix/store/g6a7agib4hbnvqcny05fk8dfjplw8nkb-dbus-1.16.2:/nix/store/kw0yjwbvw6arwgwaa3p8rz46qsgy4626-glib-2.86.3-dev:/nix/store/lg8kfrcxy4bcwnlwbfn6x3s48k4aawba-libffi-3.5.2-dev:/nix/store/hyai3q7gvdfppw4ky7s2mvhxvfyp5bh7-libffi-3.5.2:/nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0:/nix/store/5722rfnbamx35h5df4wlvlqrmvmaan7i-glibc-iconv-2.42:/nix/store/b9jcqjd8gnxr87p7wc91lmbyd90kzlc1-glib-2.86.3-bin:/nix/store/zcmsivndca5wmam9nwnbjrm0zkgykwfz-glib-2.86.3:/nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14:/nix/store/f2qrafl07iyfggddmw44bd9z0isn77jg-psqlodbc-17.00.0008:/nix/store/mzf14h3p86kb5ik5f2b9c857i9465c1h-sqlite-connector-odbc-0.99991:/nix/store/mr1ghgw331ncp06bv7kcra1wdpg8qdab-mariadb-connector-odbc-3.2.6:/nix/store/490b2y1f8lz3jfns1zf7l0g7bh4kncbh-systemd-260.1-dev:/nix/store/9rpism89x6lyjcwzzkp6kana25rs03nn-systemd-260.1:/nix/store/80s9hhm2wyb053v2q55iz91hccxw0w47-util-linux-2.42-dev:/nix/store/g9h37kjrpvyzhsq4a79v2qkrpl4y1s7k-util-linux-2.42-bin:/nix/store/4iazbvz8d907sdvbq6x9s39qcmi7bqi2-util-linux-2.42-lib:/nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7:/nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21:/nix/store/1bkcpa0lhy8dw3h6sz5b9742bihb9290-libselinux-3.10-dev:/nix/store/8w64dm3sny77mnf8jm5n1n57d1fk25x4-libselinux-3.10-bin:/nix/store/kdlv714j07803x3ynn2w4a44xi84bh0c-libselinux-3.10:/nix/store/hrbmsxk0jl93igyrmlhns5a8jfvc96b3-libsepol-3.10-dev:/nix/store/hb9zkpgafixyxc52dcj8sfknqpmfdpk6-libsepol-3.10-bin:/nix/store/lf8iwryhabj1ifjg3kjyidvl9nakib4p-libsepol-3.10:/nix/store/p3459sn6kfj0lxvy6r1nlcgc249bqmvl-lttng-ust-2.14.0-dev:/nix/store/cmvpl03c604f718hhnazghiwb5dbn32a-liburcu-0.15.6-dev:/nix/store/aaz4ykc5rh1kbfqk2s7lr9iqcq6fj02h-liburcu-0.15.6:/nix/store/5xr74grdnd43gd0ngkbkcrc3bhidxyng-lttng-ust-2.14.0-bin:/nix/store/gkdgy79sz0xsyipy6g0arivxnk7hlwc4-lttng-ust-2.14.0:/nix/store/6h473sgnn2glbvgjd6sj242144zmllvj-libthai-0.1.30-dev:/nix/store/6bhki1k3ck0azd4dlfpb1qs8fcb0a3qs-libthai-0.1.30:/nix/store/n80alrbrr59n9b2qnj8z52yj0zn1gcwm-libdrm-2.4.131-dev:/nix/store/sqvm6lz2lbn43zflil7rgn9p0d86gpfd-libdrm-2.4.131-bin:/nix/store/1jx6xl1bn80av3xmiarlb8lnavmc4grs-libdrm-2.4.131:/nix/store/9434wg73ynb25zfq3gvr5vij9rn3p9wh-mesa-libgbm-26.0.3:/nix/store/1cg9syf0w509d5prxya2ak7k1pizrbi4-libdatrie-2019-12-20-dev:/nix/store/gdx3ay9ms54qyivhbdmcrbcb778ww7wf-libdatrie-2019-12-20-bin:/nix/store/p9v9m9k1yinv56mi1c1w5xjrl5asw6sh-libdatrie-2019-12-20-lib:/nix/store/qc2r5wx0k5dh6ypwqjq4pfy6314npgaj-systemd-minimal-libs-260.1-dev:/nix/store/i3p4h70l0qq32lizw0i4px8afn1y7g8w-systemd-minimal-libs-260.1:/nix/store/gjg4aagfcn6r96c73rz4rwbclbdqqc6v-fontconfig-2.17.1-dev:/nix/store/r7bp82svf04jqw3x7wnjlyr951jkf85k-freetype-2.14.2-dev:/nix/store/bh64ycxf96cc4v43m77nszmpvbs0pfv7-bzip2-1.0.8-dev:/nix/store/zj6r42syyswkhrr174bzppj3n7xhq936-bzip2-1.0.8-bin:/nix/store/2amncb4zvr32gm5d2i8m6gz29c02cn61-bzip2-1.0.8:/nix/store/1x1msj33z37b65vlxbs51l7i4j92qn9h-brotli-1.2.0-dev:/nix/store/7ff90dag7i173s49c5m614wny2lpps1l-brotli-1.2.0-lib:/nix/store/mj1k1nsdqr0mp9wsnkg7blgh3xf5wssv-brotli-1.2.0:/nix/store/zr22ggqbv79yv4y4wv06r4grla9h59yx-freetype-2.14.2:/nix/store/v18drszzvspk1wlq06r68nxgpn2b4cvd-fontconfig-2.17.1-bin:/nix/store/bg6ms0vw071g1fdbx2my6bbzsk62p6vd-fontconfig-2.17.1-lib:/nix/store/4303g76pqhl7r8a2xvci0b4bj47bfbjz-libx11-1.8.13-dev:/nix/store/mvyxqkpyj2mgymljzj9bqi9bmz7ca5fk-xorgproto-2025.1:/nix/store/5m91jqg1526jzsahrgmd37k4ml3nc5l4-libx11-1.8.13:/nix/store/qfim6c146wnyszb7ij8cfx7glagx2m1a-libxcomposite-0.4.7-dev:/nix/store/8bx5rrc94g1wl124n13gk5vrprpbrxn1-libxfixes-6.0.2-dev:/nix/store/b47r32di2p2alprjnylsk9wg3m2gjd21-libxfixes-6.0.2:/nix/store/x0cqnqvf0v9lain5bkkkq11f0089whvr-libxcomposite-0.4.7:/nix/store/1kx6y7spy0q6372hqrvib7mw21gaq5bq-libxext-1.3.7-dev:/nix/store/hd6i8dzybk2jqwqh6frarw30w15yqq9b-libxau-1.0.12-dev:/nix/store/2krkc90x3ch0mgkk48fxlglq14nqapdr-libxau-1.0.12:/nix/store/n1ykqk7ibmp4h5r4x5fng4cn9wjlgj9y-libxext-1.3.7:/nix/store/gs34fdhbiw5ndp1akqbib2zsry53vi13-libxi-1.8.2-dev:/nix/store/wnl69g3p3cb415xxxz09hfvrj624fg18-libxi-1.8.2:/nix/store/94m0129pm3jlbg4fj8py92j1vi870m9c-libxrender-0.9.12-dev:/nix/store/dwavjjnzjmp7901n2s61kw40qw8c5rfc-libxrender-0.9.12:/nix/store/x44m80ahg51pz32dr0j39yzsr7bn7d5v-libxcb-1.17.0-dev:/nix/store/fc1g44pg3i10wfzh3gb4m54pfgclsn76-libxcb-1.17.0:/nix/store/s11qidhaq78zrwnd6jc2plxhbmv6y9b9-libxkbcommon-1.13.1-dev:/nix/store/0c0xdj7xpilqfy2p33l1jm407f01652w-libxkbcommon-1.13.1:/nix/store/9ag3dbrwgbf1pzzbrhcyk6kqss2h9qgz-libxcb-util-0.4.1-dev:/nix/store/4857xql43q38d3wxd4d45p687g51w1wl-libxcb-util-0.4.1:/nix/store/7i4fyg0w0kbdvb22gpnvjdxivjgc0nij-libxcb-image-0.4.1-dev:/nix/store/p97g8g8fhzav86hj250kjfzqd9qbk619-libxcb-image-0.4.1:/nix/store/yihma6aw528nj48ddwm835f8yg3jjb7p-libxcb-keysyms-0.4.1-dev:/nix/store/58rwpsgflsp215rad9i2nq942jrg4bzi-libxcb-keysyms-0.4.1:/nix/store/286wksf4n6hknrnljjs7z0wqnbsjwpnr-libxcb-render-util-0.3.10-dev:/nix/store/sdr6iybvx2jaybmwv9s0rrxg9cylfvl0-libxcb-render-util-0.3.10:/nix/store/zba0kgibxmp87ddlnnvwxrlfbc85w4cy-libxcb-wm-0.4.2-dev:/nix/store/606k51my6ih6g7j15q5cdfkdspjzqs5v-libxcb-wm-0.4.2:/nix/store/sz4fx21lyp3gwmvnm000v1fk4nyfbmdr-libxdmcp-1.1.5-dev:/nix/store/yr83qw7bdfdxf5lb2xmfs70qb5hap0hj-libxdmcp-1.1.5:/nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5:/nix/store/8yvsggi3lyxvly1d24dppc3l3ccn3n1a-libxcb-cursor-0.1.6-dev:/nix/store/7r5k0wr047sffnn9irdalqi3igfbrhpd-libxcb-cursor-0.1.6:/nix/store/xf5sljv7paqfjc6j62kmns4xxva1kwsd-libepoxy-1.5.10-dev:/nix/store/f8yff1anpl5dr3bsrq40dq5x9yfz56hs-libepoxy-1.5.10:/nix/store/g4hxm4rk504vm7py42h4m0309j98da71-cups-2.4.16-dev:/nix/store/jzm7j0y2ph7dc1bdfdwdaa653b9mr3m8-gmp-with-cxx-6.3.0-dev:/nix/store/1agm3iac17cykdmabxck60vwk5sjk4wc-gmp-with-cxx-6.3.0:/nix/store/7cyfjdf16s9fwny90wa7ybdmpbq5fgd4-cups-2.4.16-lib:/nix/store/82ijqnr2xdzw65vsbjvgcbb7s0xrzh81-cups-2.4.16:/nix/store/lzy227gr54781r8nwws22cw95rl3ji9k-wayland-1.24.0-dev:/nix/store/ysbyz6zabjcg078ssp4l58mhgbr57pbz-wayland-1.24.0:/nix/store/97xaplx9nwxxxsp954sdpia89jqvyz4v-wayland-scanner-1.24.0-dev:/nix/store/pkh91qil9ai3jjslkp590xij6ymxsa6g-wayland-scanner-1.24.0-bin:/nix/store/jp2k2qal08z06glmgpiwracq0bwi1bzg-wayland-scanner-1.24.0:/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0:/nix/store/4kxlcy7r9y47p4mpadjik707gfyrqw6b-qtdeclarative-6.11.0-dev:/nix/store/fj8p3gghc4195sja8gw8pmv23lmh54mv-qtlanguageserver-6.11.0-dev:/nix/store/l73rdqg0ycwyhiplbl31pc4p7c3p2zvx-qtlanguageserver-6.11.0:/nix/store/mnhibmxz4vabpx838q73gg364vaxba38-qtshadertools-6.11.0-dev:/nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0:/nix/store/qriil2zh2r8n9p76x3z4admfsipc6mr3-qtsvg-6.11.0-dev:/nix/store/anjilsbn2zq0i36z0m67w2djvsvc7lzg-qtsvg-6.11.0:/nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0:/nix/store/1wdnr6g4xpxj6vk64lw5pkdi0syw7ql8-qttools-6.11.0-dev:/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0:/nix/store/v7mjkia7ki79s5i24ldbzq1khalhgzk0-pkg-config-wrapper-0.29.2:/nix/store/66lksljlljdd5ppgvfk8g89y8xgqcxd7-patchelf-0.15.2:/nix/store/9vv51km72lpngs6aixxplrr3c88q4c3c-update-autotools-gnu-config-scripts-hook:/nix/store/qd70v8g0561vm8m33kmnp79z00cgyi5n-gcc-wrapper-15.2.0:/nix/store/kfwagnh6i1mysf7vxq679rzh30z9zj3g-binutils-wrapper-2.46'
export QT_ADDITIONAL_PACKAGES_PREFIX_PATH
NIX_LDFLAGS='-rpath /nix/store/6b3rg76d2r1m1s1yz3bh9spvy5p7i3zk-devenv-shell-env/lib  -L/nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env/lib -L/nix/store/7k5706vhxnidhqn0vzdn0x70x0g746ky-pyside6-6.11.0/lib -L/nix/store/7cbpfajskn4hni009h34bg7i99ha79gv-shiboken6-6.11.0/lib -L/nix/store/ygkyaqnzsz3pf7ly1g7ggh1bp5h86mcp-libxml2-2.15.1/lib -L/nix/store/97cl9bqalmjfr07z0q85bb86896rw965-libxslt-1.1.45/lib -L/nix/store/wbyqkb1vpm41s4jb8pv0i9h4jv08xdrv-openssl-3.6.1/lib -L/nix/store/5087xk8l09k90gddzw8y9b4yypyn23a5-sqlite-3.51.2/lib -L/nix/store/ixhlv41i2wpl84xgjcks061dz4yssbg3-zlib-1.3.2/lib -L/nix/store/fdqacryg2w9kiwb94c9rzfsyff4im8xj-libglvnd-1.7.0/lib -L/nix/store/zs7y2aadk71bawprdcn000az9y05s8nf-vulkan-loader-1.4.341.0/lib -L/nix/store/qik1sfr8z8w4ffrd21yv76z2nvwyhmn5-graphite2-1.3.14/lib -L/nix/store/rpd86021fc7q0mnzjrbcdnyi62qarql9-harfbuzz-12.3.0/lib -L/nix/store/0dmcpvbp2rvz8a7p2yhsrkpcb41kr6wl-icu4c-76.1/lib -L/nix/store/lsln4vpc8spwmb96vjjmg4yd0krd2r7c-libjpeg-turbo-3.1.4/lib -L/nix/store/gsn3vddway3289p6mzy5shd1paly8dp4-libpng-apng-1.6.56/lib -L/nix/store/khhzkpj9169ydnyg7jjrjx7s5ygdkcas-pcre2-10.46/lib -L/nix/store/k0rqiflg1vkn1kj96br5pfxj40p3srz4-zstd-1.5.7/lib -L/nix/store/9wv94c4wzy3fpfa516qjp4b1bfiymrhy-libb2-0.98.1/lib -L/nix/store/y694ganxnxk9n25ggagb6izr1s86i77v-md4c-0.5.2-lib/lib -L/nix/store/rddcn5m5v9k7n3xrchvqdg5grcr8ax1n-double-conversion-3.3.1/lib -L/nix/store/lmw2c8802x4618h0pmnv5140sgfqriqi-libproxy-0.5.12/lib -L/nix/store/yanmwp5f435ing2nbhwa4v0gdmpl2an1-dbus-1.16.2-lib/lib -L/nix/store/hyai3q7gvdfppw4ky7s2mvhxvfyp5bh7-libffi-3.5.2/lib -L/nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0/lib -L/nix/store/zcmsivndca5wmam9nwnbjrm0zkgykwfz-glib-2.86.3/lib -L/nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14/lib -L/nix/store/mzf14h3p86kb5ik5f2b9c857i9465c1h-sqlite-connector-odbc-0.99991/lib -L/nix/store/9rpism89x6lyjcwzzkp6kana25rs03nn-systemd-260.1/lib -L/nix/store/4iazbvz8d907sdvbq6x9s39qcmi7bqi2-util-linux-2.42-lib/lib -L/nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7/lib -L/nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21/lib -L/nix/store/kdlv714j07803x3ynn2w4a44xi84bh0c-libselinux-3.10/lib -L/nix/store/lf8iwryhabj1ifjg3kjyidvl9nakib4p-libsepol-3.10/lib -L/nix/store/aaz4ykc5rh1kbfqk2s7lr9iqcq6fj02h-liburcu-0.15.6/lib -L/nix/store/gkdgy79sz0xsyipy6g0arivxnk7hlwc4-lttng-ust-2.14.0/lib -L/nix/store/6bhki1k3ck0azd4dlfpb1qs8fcb0a3qs-libthai-0.1.30/lib -L/nix/store/1jx6xl1bn80av3xmiarlb8lnavmc4grs-libdrm-2.4.131/lib -L/nix/store/9434wg73ynb25zfq3gvr5vij9rn3p9wh-mesa-libgbm-26.0.3/lib -L/nix/store/p9v9m9k1yinv56mi1c1w5xjrl5asw6sh-libdatrie-2019-12-20-lib/lib -L/nix/store/i3p4h70l0qq32lizw0i4px8afn1y7g8w-systemd-minimal-libs-260.1/lib -L/nix/store/2amncb4zvr32gm5d2i8m6gz29c02cn61-bzip2-1.0.8/lib -L/nix/store/7ff90dag7i173s49c5m614wny2lpps1l-brotli-1.2.0-lib/lib -L/nix/store/zr22ggqbv79yv4y4wv06r4grla9h59yx-freetype-2.14.2/lib -L/nix/store/bg6ms0vw071g1fdbx2my6bbzsk62p6vd-fontconfig-2.17.1-lib/lib -L/nix/store/5m91jqg1526jzsahrgmd37k4ml3nc5l4-libx11-1.8.13/lib -L/nix/store/b47r32di2p2alprjnylsk9wg3m2gjd21-libxfixes-6.0.2/lib -L/nix/store/x0cqnqvf0v9lain5bkkkq11f0089whvr-libxcomposite-0.4.7/lib -L/nix/store/2krkc90x3ch0mgkk48fxlglq14nqapdr-libxau-1.0.12/lib -L/nix/store/n1ykqk7ibmp4h5r4x5fng4cn9wjlgj9y-libxext-1.3.7/lib -L/nix/store/wnl69g3p3cb415xxxz09hfvrj624fg18-libxi-1.8.2/lib -L/nix/store/dwavjjnzjmp7901n2s61kw40qw8c5rfc-libxrender-0.9.12/lib -L/nix/store/fc1g44pg3i10wfzh3gb4m54pfgclsn76-libxcb-1.17.0/lib -L/nix/store/0c0xdj7xpilqfy2p33l1jm407f01652w-libxkbcommon-1.13.1/lib -L/nix/store/4857xql43q38d3wxd4d45p687g51w1wl-libxcb-util-0.4.1/lib -L/nix/store/p97g8g8fhzav86hj250kjfzqd9qbk619-libxcb-image-0.4.1/lib -L/nix/store/58rwpsgflsp215rad9i2nq942jrg4bzi-libxcb-keysyms-0.4.1/lib -L/nix/store/sdr6iybvx2jaybmwv9s0rrxg9cylfvl0-libxcb-render-util-0.3.10/lib -L/nix/store/606k51my6ih6g7j15q5cdfkdspjzqs5v-libxcb-wm-0.4.2/lib -L/nix/store/yr83qw7bdfdxf5lb2xmfs70qb5hap0hj-libxdmcp-1.1.5/lib -L/nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5/lib -L/nix/store/7r5k0wr047sffnn9irdalqi3igfbrhpd-libxcb-cursor-0.1.6/lib -L/nix/store/f8yff1anpl5dr3bsrq40dq5x9yfz56hs-libepoxy-1.5.10/lib -L/nix/store/1agm3iac17cykdmabxck60vwk5sjk4wc-gmp-with-cxx-6.3.0/lib -L/nix/store/7cyfjdf16s9fwny90wa7ybdmpbq5fgd4-cups-2.4.16-lib/lib -L/nix/store/ysbyz6zabjcg078ssp4l58mhgbr57pbz-wayland-1.24.0/lib -L/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0/lib -L/nix/store/l73rdqg0ycwyhiplbl31pc4p7c3p2zvx-qtlanguageserver-6.11.0/lib -L/nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0/lib -L/nix/store/anjilsbn2zq0i36z0m67w2djvsvc7lzg-qtsvg-6.11.0/lib -L/nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0/lib -L/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0/lib -L/nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env/lib -L/nix/store/7k5706vhxnidhqn0vzdn0x70x0g746ky-pyside6-6.11.0/lib -L/nix/store/7cbpfajskn4hni009h34bg7i99ha79gv-shiboken6-6.11.0/lib -L/nix/store/ygkyaqnzsz3pf7ly1g7ggh1bp5h86mcp-libxml2-2.15.1/lib -L/nix/store/97cl9bqalmjfr07z0q85bb86896rw965-libxslt-1.1.45/lib -L/nix/store/wbyqkb1vpm41s4jb8pv0i9h4jv08xdrv-openssl-3.6.1/lib -L/nix/store/5087xk8l09k90gddzw8y9b4yypyn23a5-sqlite-3.51.2/lib -L/nix/store/ixhlv41i2wpl84xgjcks061dz4yssbg3-zlib-1.3.2/lib -L/nix/store/fdqacryg2w9kiwb94c9rzfsyff4im8xj-libglvnd-1.7.0/lib -L/nix/store/zs7y2aadk71bawprdcn000az9y05s8nf-vulkan-loader-1.4.341.0/lib -L/nix/store/qik1sfr8z8w4ffrd21yv76z2nvwyhmn5-graphite2-1.3.14/lib -L/nix/store/rpd86021fc7q0mnzjrbcdnyi62qarql9-harfbuzz-12.3.0/lib -L/nix/store/0dmcpvbp2rvz8a7p2yhsrkpcb41kr6wl-icu4c-76.1/lib -L/nix/store/lsln4vpc8spwmb96vjjmg4yd0krd2r7c-libjpeg-turbo-3.1.4/lib -L/nix/store/gsn3vddway3289p6mzy5shd1paly8dp4-libpng-apng-1.6.56/lib -L/nix/store/khhzkpj9169ydnyg7jjrjx7s5ygdkcas-pcre2-10.46/lib -L/nix/store/k0rqiflg1vkn1kj96br5pfxj40p3srz4-zstd-1.5.7/lib -L/nix/store/9wv94c4wzy3fpfa516qjp4b1bfiymrhy-libb2-0.98.1/lib -L/nix/store/y694ganxnxk9n25ggagb6izr1s86i77v-md4c-0.5.2-lib/lib -L/nix/store/rddcn5m5v9k7n3xrchvqdg5grcr8ax1n-double-conversion-3.3.1/lib -L/nix/store/lmw2c8802x4618h0pmnv5140sgfqriqi-libproxy-0.5.12/lib -L/nix/store/yanmwp5f435ing2nbhwa4v0gdmpl2an1-dbus-1.16.2-lib/lib -L/nix/store/hyai3q7gvdfppw4ky7s2mvhxvfyp5bh7-libffi-3.5.2/lib -L/nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0/lib -L/nix/store/zcmsivndca5wmam9nwnbjrm0zkgykwfz-glib-2.86.3/lib -L/nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14/lib -L/nix/store/mzf14h3p86kb5ik5f2b9c857i9465c1h-sqlite-connector-odbc-0.99991/lib -L/nix/store/9rpism89x6lyjcwzzkp6kana25rs03nn-systemd-260.1/lib -L/nix/store/4iazbvz8d907sdvbq6x9s39qcmi7bqi2-util-linux-2.42-lib/lib -L/nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7/lib -L/nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21/lib -L/nix/store/kdlv714j07803x3ynn2w4a44xi84bh0c-libselinux-3.10/lib -L/nix/store/lf8iwryhabj1ifjg3kjyidvl9nakib4p-libsepol-3.10/lib -L/nix/store/aaz4ykc5rh1kbfqk2s7lr9iqcq6fj02h-liburcu-0.15.6/lib -L/nix/store/gkdgy79sz0xsyipy6g0arivxnk7hlwc4-lttng-ust-2.14.0/lib -L/nix/store/6bhki1k3ck0azd4dlfpb1qs8fcb0a3qs-libthai-0.1.30/lib -L/nix/store/1jx6xl1bn80av3xmiarlb8lnavmc4grs-libdrm-2.4.131/lib -L/nix/store/9434wg73ynb25zfq3gvr5vij9rn3p9wh-mesa-libgbm-26.0.3/lib -L/nix/store/p9v9m9k1yinv56mi1c1w5xjrl5asw6sh-libdatrie-2019-12-20-lib/lib -L/nix/store/i3p4h70l0qq32lizw0i4px8afn1y7g8w-systemd-minimal-libs-260.1/lib -L/nix/store/2amncb4zvr32gm5d2i8m6gz29c02cn61-bzip2-1.0.8/lib -L/nix/store/7ff90dag7i173s49c5m614wny2lpps1l-brotli-1.2.0-lib/lib -L/nix/store/zr22ggqbv79yv4y4wv06r4grla9h59yx-freetype-2.14.2/lib -L/nix/store/bg6ms0vw071g1fdbx2my6bbzsk62p6vd-fontconfig-2.17.1-lib/lib -L/nix/store/5m91jqg1526jzsahrgmd37k4ml3nc5l4-libx11-1.8.13/lib -L/nix/store/b47r32di2p2alprjnylsk9wg3m2gjd21-libxfixes-6.0.2/lib -L/nix/store/x0cqnqvf0v9lain5bkkkq11f0089whvr-libxcomposite-0.4.7/lib -L/nix/store/2krkc90x3ch0mgkk48fxlglq14nqapdr-libxau-1.0.12/lib -L/nix/store/n1ykqk7ibmp4h5r4x5fng4cn9wjlgj9y-libxext-1.3.7/lib -L/nix/store/wnl69g3p3cb415xxxz09hfvrj624fg18-libxi-1.8.2/lib -L/nix/store/dwavjjnzjmp7901n2s61kw40qw8c5rfc-libxrender-0.9.12/lib -L/nix/store/fc1g44pg3i10wfzh3gb4m54pfgclsn76-libxcb-1.17.0/lib -L/nix/store/0c0xdj7xpilqfy2p33l1jm407f01652w-libxkbcommon-1.13.1/lib -L/nix/store/4857xql43q38d3wxd4d45p687g51w1wl-libxcb-util-0.4.1/lib -L/nix/store/p97g8g8fhzav86hj250kjfzqd9qbk619-libxcb-image-0.4.1/lib -L/nix/store/58rwpsgflsp215rad9i2nq942jrg4bzi-libxcb-keysyms-0.4.1/lib -L/nix/store/sdr6iybvx2jaybmwv9s0rrxg9cylfvl0-libxcb-render-util-0.3.10/lib -L/nix/store/606k51my6ih6g7j15q5cdfkdspjzqs5v-libxcb-wm-0.4.2/lib -L/nix/store/yr83qw7bdfdxf5lb2xmfs70qb5hap0hj-libxdmcp-1.1.5/lib -L/nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5/lib -L/nix/store/7r5k0wr047sffnn9irdalqi3igfbrhpd-libxcb-cursor-0.1.6/lib -L/nix/store/f8yff1anpl5dr3bsrq40dq5x9yfz56hs-libepoxy-1.5.10/lib -L/nix/store/1agm3iac17cykdmabxck60vwk5sjk4wc-gmp-with-cxx-6.3.0/lib -L/nix/store/7cyfjdf16s9fwny90wa7ybdmpbq5fgd4-cups-2.4.16-lib/lib -L/nix/store/ysbyz6zabjcg078ssp4l58mhgbr57pbz-wayland-1.24.0/lib -L/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0/lib -L/nix/store/l73rdqg0ycwyhiplbl31pc4p7c3p2zvx-qtlanguageserver-6.11.0/lib -L/nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0/lib -L/nix/store/anjilsbn2zq0i36z0m67w2djvsvc7lzg-qtsvg-6.11.0/lib -L/nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0/lib -L/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0/lib'
export NIX_LDFLAGS
QMAKEPATH='/nix/store/hksq1dd4i8hp42q0y6ndhas4s3kscmb6-qtbase-6.11.0-dev:/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0:/nix/store/4kxlcy7r9y47p4mpadjik707gfyrqw6b-qtdeclarative-6.11.0-dev:/nix/store/fj8p3gghc4195sja8gw8pmv23lmh54mv-qtlanguageserver-6.11.0-dev:/nix/store/mnhibmxz4vabpx838q73gg364vaxba38-qtshadertools-6.11.0-dev:/nix/store/qriil2zh2r8n9p76x3z4admfsipc6mr3-qtsvg-6.11.0-dev:/nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0:/nix/store/1wdnr6g4xpxj6vk64lw5pkdi0syw7ql8-qttools-6.11.0-dev'
export QMAKEPATH
outputInclude='out'
QT_QPA_PLATFORM='xcb'
export QT_QPA_PLATFORM
OBJDUMP='objdump'
export OBJDUMP
PKG_CONFIG_PATH='/nix/store/5bs057cgp4nxqff22jg0k1svs121z6a8-bash-interactive-5.3p9-dev/lib/pkgconfig:/nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env/lib/pkgconfig:/nix/store/7k5706vhxnidhqn0vzdn0x70x0g746ky-pyside6-6.11.0/lib/pkgconfig:/nix/store/7cbpfajskn4hni009h34bg7i99ha79gv-shiboken6-6.11.0/lib/pkgconfig:/nix/store/6sirsgrlw5wpjb61v07sbgs4sfsfdwx6-libxml2-2.15.1-dev/lib/pkgconfig:/nix/store/f4329v3zm2p5ggkvh5ymv9jphvrpf6ad-libxslt-1.1.45-dev/lib/pkgconfig:/nix/store/dy64cxaygvmjfznysgxk501yds8jij6s-openssl-3.6.1-dev/lib/pkgconfig:/nix/store/jphqqkgn7swnppi4dgwxavd3fac51bvx-sqlite-3.51.2-dev/lib/pkgconfig:/nix/store/3yl2s5r3yph88imzbgbdrh8pbs9rcjcs-zlib-1.3.2-dev/share/pkgconfig:/nix/store/crnjlpi5fymlsdiynhi5wdgzc6a9f75a-libglvnd-1.7.0-dev/lib/pkgconfig:/nix/store/jmjmp6wkg646s4ii5znac68zxdj1p55h-vulkan-loader-1.4.341.0-dev/lib/pkgconfig:/nix/store/ndr1qrjb4y4p66b51sf49x95mymmvr2l-harfbuzz-12.3.0-dev/lib/pkgconfig:/nix/store/6fbbmfpp3j9yd8yi4g1j2ajy987splhi-graphite2-1.3.14-dev/lib/pkgconfig:/nix/store/fga8simmllr8rlxql3qfb41620yh3n3p-icu4c-76.1-dev/lib/pkgconfig:/nix/store/b63lk3n7piwf7a790c4cy0zinqi184fs-libjpeg-turbo-3.1.4-dev/lib/pkgconfig:/nix/store/h176f4dhbcpj4lpf8sn28vdqp1mks5jk-libpng-apng-1.6.56-dev/lib/pkgconfig:/nix/store/k1cm26fb7bsxif6lcwpzi7iyccvrv4f1-pcre2-10.46-dev/lib/pkgconfig:/nix/store/vbqakw4shfcbmdxs6kkp3jmp9k5br94y-zstd-1.5.7-dev/lib/pkgconfig:/nix/store/9wv94c4wzy3fpfa516qjp4b1bfiymrhy-libb2-0.98.1/lib/pkgconfig:/nix/store/mm2abhg9j26xcz4mbzi0k2zxqf1924bd-md4c-0.5.2-dev/lib/pkgconfig:/nix/store/jc55bix1lk4v4d646s78gs6pvliks9jw-double-conversion-3.3.1-dev/lib/pkgconfig:/nix/store/xq5q2y828igkiwyq25lhrhhv424y3aza-libproxy-0.5.12-dev/lib/pkgconfig:/nix/store/6xzs85s04k598dchdp1jmyia35ajwn6l-dbus-1.16.2-dev/lib/pkgconfig:/nix/store/kw0yjwbvw6arwgwaa3p8rz46qsgy4626-glib-2.86.3-dev/lib/pkgconfig:/nix/store/lg8kfrcxy4bcwnlwbfn6x3s48k4aawba-libffi-3.5.2-dev/lib/pkgconfig:/nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14/lib/pkgconfig:/nix/store/mr1ghgw331ncp06bv7kcra1wdpg8qdab-mariadb-connector-odbc-3.2.6/lib/pkgconfig:/nix/store/490b2y1f8lz3jfns1zf7l0g7bh4kncbh-systemd-260.1-dev/lib/pkgconfig:/nix/store/490b2y1f8lz3jfns1zf7l0g7bh4kncbh-systemd-260.1-dev/share/pkgconfig:/nix/store/80s9hhm2wyb053v2q55iz91hccxw0w47-util-linux-2.42-dev/lib/pkgconfig:/nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7/lib/pkgconfig:/nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21/lib/pkgconfig:/nix/store/1bkcpa0lhy8dw3h6sz5b9742bihb9290-libselinux-3.10-dev/lib/pkgconfig:/nix/store/hrbmsxk0jl93igyrmlhns5a8jfvc96b3-libsepol-3.10-dev/lib/pkgconfig:/nix/store/p3459sn6kfj0lxvy6r1nlcgc249bqmvl-lttng-ust-2.14.0-dev/lib/pkgconfig:/nix/store/cmvpl03c604f718hhnazghiwb5dbn32a-liburcu-0.15.6-dev/lib/pkgconfig:/nix/store/6h473sgnn2glbvgjd6sj242144zmllvj-libthai-0.1.30-dev/lib/pkgconfig:/nix/store/n80alrbrr59n9b2qnj8z52yj0zn1gcwm-libdrm-2.4.131-dev/lib/pkgconfig:/nix/store/9434wg73ynb25zfq3gvr5vij9rn3p9wh-mesa-libgbm-26.0.3/lib/pkgconfig:/nix/store/1cg9syf0w509d5prxya2ak7k1pizrbi4-libdatrie-2019-12-20-dev/lib/pkgconfig:/nix/store/qc2r5wx0k5dh6ypwqjq4pfy6314npgaj-systemd-minimal-libs-260.1-dev/lib/pkgconfig:/nix/store/qc2r5wx0k5dh6ypwqjq4pfy6314npgaj-systemd-minimal-libs-260.1-dev/share/pkgconfig:/nix/store/gjg4aagfcn6r96c73rz4rwbclbdqqc6v-fontconfig-2.17.1-dev/lib/pkgconfig:/nix/store/r7bp82svf04jqw3x7wnjlyr951jkf85k-freetype-2.14.2-dev/lib/pkgconfig:/nix/store/bh64ycxf96cc4v43m77nszmpvbs0pfv7-bzip2-1.0.8-dev/lib/pkgconfig:/nix/store/1x1msj33z37b65vlxbs51l7i4j92qn9h-brotli-1.2.0-dev/lib/pkgconfig:/nix/store/4303g76pqhl7r8a2xvci0b4bj47bfbjz-libx11-1.8.13-dev/lib/pkgconfig:/nix/store/mvyxqkpyj2mgymljzj9bqi9bmz7ca5fk-xorgproto-2025.1/share/pkgconfig:/nix/store/qfim6c146wnyszb7ij8cfx7glagx2m1a-libxcomposite-0.4.7-dev/lib/pkgconfig:/nix/store/8bx5rrc94g1wl124n13gk5vrprpbrxn1-libxfixes-6.0.2-dev/lib/pkgconfig:/nix/store/1kx6y7spy0q6372hqrvib7mw21gaq5bq-libxext-1.3.7-dev/lib/pkgconfig:/nix/store/hd6i8dzybk2jqwqh6frarw30w15yqq9b-libxau-1.0.12-dev/lib/pkgconfig:/nix/store/gs34fdhbiw5ndp1akqbib2zsry53vi13-libxi-1.8.2-dev/lib/pkgconfig:/nix/store/94m0129pm3jlbg4fj8py92j1vi870m9c-libxrender-0.9.12-dev/lib/pkgconfig:/nix/store/x44m80ahg51pz32dr0j39yzsr7bn7d5v-libxcb-1.17.0-dev/lib/pkgconfig:/nix/store/s11qidhaq78zrwnd6jc2plxhbmv6y9b9-libxkbcommon-1.13.1-dev/lib/pkgconfig:/nix/store/9ag3dbrwgbf1pzzbrhcyk6kqss2h9qgz-libxcb-util-0.4.1-dev/lib/pkgconfig:/nix/store/7i4fyg0w0kbdvb22gpnvjdxivjgc0nij-libxcb-image-0.4.1-dev/lib/pkgconfig:/nix/store/yihma6aw528nj48ddwm835f8yg3jjb7p-libxcb-keysyms-0.4.1-dev/lib/pkgconfig:/nix/store/286wksf4n6hknrnljjs7z0wqnbsjwpnr-libxcb-render-util-0.3.10-dev/lib/pkgconfig:/nix/store/zba0kgibxmp87ddlnnvwxrlfbc85w4cy-libxcb-wm-0.4.2-dev/lib/pkgconfig:/nix/store/sz4fx21lyp3gwmvnm000v1fk4nyfbmdr-libxdmcp-1.1.5-dev/lib/pkgconfig:/nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5/lib/pkgconfig:/nix/store/8yvsggi3lyxvly1d24dppc3l3ccn3n1a-libxcb-cursor-0.1.6-dev/lib/pkgconfig:/nix/store/xf5sljv7paqfjc6j62kmns4xxva1kwsd-libepoxy-1.5.10-dev/lib/pkgconfig:/nix/store/g4hxm4rk504vm7py42h4m0309j98da71-cups-2.4.16-dev/lib/pkgconfig:/nix/store/jzm7j0y2ph7dc1bdfdwdaa653b9mr3m8-gmp-with-cxx-6.3.0-dev/lib/pkgconfig:/nix/store/lzy227gr54781r8nwws22cw95rl3ji9k-wayland-1.24.0-dev/lib/pkgconfig:/nix/store/97xaplx9nwxxxsp954sdpia89jqvyz4v-wayland-scanner-1.24.0-dev/lib/pkgconfig:/nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0/lib/pkgconfig:/nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0/lib/pkgconfig:/nix/store/anjilsbn2zq0i36z0m67w2djvsvc7lzg-qtsvg-6.11.0/lib/pkgconfig:/nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0/lib/pkgconfig:/nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0/lib/pkgconfig'
export PKG_CONFIG_PATH
declare -a pkgsBuildBuild=()
prePhases=' qtPreHook'
strictDeps=''
export strictDeps
DEVENV_DOTFILE='/home/najimi/public_html/ird31/02062026/pyside/.devenv/.devenv'
export DEVENV_DOTFILE
doCheck=''
export doCheck
NM='nm'
export NM
dontAddDisableDepTrack='1'
export dontAddDisableDepTrack
outputDev='out'
declare -a pkgsBuildTarget=()
OLDPWD=''
export OLDPWD
libxmlHookDone='1'
declare -a preConfigureHooks=('_multioutConfig' )
preferLocalBuild='1'
export preferLocalBuild
NIX_NO_SELF_RPATH='1'
OPTERR='1'
OBJCOPY='objcopy'
export OBJCOPY
declare -a pkgsHostTarget=()
declare -a envBuildBuildHooks=('qtToolsHook' 'addQtModulePrefix' 'addXMLCatalogs' 'gettextDataDirsHook' )
shellHook='


# Override temp directories that stdenv set to NIX_BUILD_TOP.
# Only reset those that still point to the Nix build dir; leave
# any user/CI-supplied value intact so child processes (e.g.
# `devenv processes wait`) compute the same runtime directory.
for var in TMP TMPDIR TEMP TEMPDIR; do
  if [ -n "${!var-}" ] && [ "${!var}" = "${NIX_BUILD_TOP-}" ]; then
    export "$var"=/tmp
  fi
done
if [ -n "${NIX_BUILD_TOP-}" ]; then
  unset NIX_BUILD_TOP
fi

# set path to locales on non-NixOS Linux hosts
if [ -z "${LOCALE_ARCHIVE-}" ]; then
  export LOCALE_ARCHIVE=/nix/store/sp7b84c2jnbskd6dm2n5splgipg9d1f0-glibc-locales-2.42-61/lib/locale/locale-archive
fi


# direnv helper
if [ ! type -p direnv &>/dev/null && -f .envrc ]; then
  echo "An .envrc file was detected, but the direnv command is not installed."
  echo "To use this configuration, please install direnv: https://direnv.net/docs/installation.html"
fi

mkdir -p "$DEVENV_STATE"
if [ ! -L "$DEVENV_DOTFILE/profile" ] || [ "$(/nix/store/jjxngswsb214vb58qx485jhmilf0kxxy-coreutils-9.10/bin/readlink $DEVENV_DOTFILE/profile)" != "/nix/store/n2im20ms01xyg1kjq554fy1l1yx22grz-devenv-profile" ]
then
  ln -snf /nix/store/n2im20ms01xyg1kjq554fy1l1yx22grz-devenv-profile "$DEVENV_DOTFILE/profile"
fi
unset HOST_PATH NIX_BUILD_CORES __structuredAttrs buildInputs buildPhase builder depsBuildBuild depsBuildBuildPropagated depsBuildTarget depsBuildTargetPropagated depsHostHost depsHostHostPropagated depsTargetTarget depsTargetTargetPropagated dontAddDisableDepTrack doCheck doInstallCheck nativeBuildInputs out outputs patches phases preferLocalBuild propagatedBuildInputs propagatedNativeBuildInputs shell shellHook stdenv strictDeps

mkdir -p /run/user/1000/devenv-38a231d
ln -snf /run/user/1000/devenv-38a231d /home/najimi/public_html/ird31/02062026/pyside/.devenv/.devenv/run




# Check whether the direnv integration is out of date.
{
  if [[ ":${DIRENV_ACTIVE-}:" == *":/home/najimi/public_html/ird31/02062026/pyside/.devenv:"* ]]; then
    if [[ ! "${DEVENV_NO_DIRENVRC_OUTDATED_WARNING-}" == 1 && ! "${DEVENV_DIRENVRC_ROLLING_UPGRADE-}" == 1 ]]; then
      if [[ ${DEVENV_DIRENVRC_VERSION:-0} -lt 2 ]]; then
        direnv_line=$(grep --color=never -E "source_url.*cachix/devenv" .envrc || echo "")

        echo "✨ The direnv integration in your .envrc is out of date."
        echo ""
        echo -n "RECOMMENDED: devenv can now auto-upgrade the direnv integration. "
        if [[ -n "$direnv_line" ]]; then
          echo "To enable this feature, replace the following line in your .envrc:"
          echo ""
          echo "  $direnv_line"
          echo ""
          echo "with:"
          echo ""
          echo "  eval \"\$(devenv direnvrc)\""
        else
          echo "To enable this feature, replace the \`source_url\` line that fetches the direnvrc integration in your .envrc with:"
          echo ""
          echo "  eval \"$(devenv direnvrc)\""
        fi
        echo ""
          echo "If you prefer to continue managing the integration manually, follow the upgrade instructions at https://devenv.sh/integrations/direnv/."
          echo ""
          echo "To disable this message:"
          echo ""
          echo "  Add the following environment to your .envrc before \`use devenv\`:"
          echo ""
          echo "    export DEVENV_NO_DIRENVRC_OUTDATED_WARNING=1"
          echo ""
          echo "  Or set the following option in your devenv configuration:"
          echo ""
          echo "    devenv.warnOnNewVersion = false;"
          echo ""
      fi
    fi
  fi
} >&2

'
export shellHook
NIX_CC_WRAPPER_TARGET_HOST_x86_64_unknown_linux_gnu='1'
export NIX_CC_WRAPPER_TARGET_HOST_x86_64_unknown_linux_gnu
nativeBuildInputs='/nix/store/5bs057cgp4nxqff22jg0k1svs121z6a8-bash-interactive-5.3p9-dev /nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env /nix/store/knapjl9j737i3ghq7iswryp6gcni5j32-pyright-1.1.409 /nix/store/7k5706vhxnidhqn0vzdn0x70x0g746ky-pyside6-6.11.0 /nix/store/hksq1dd4i8hp42q0y6ndhas4s3kscmb6-qtbase-6.11.0-dev /nix/store/4kxlcy7r9y47p4mpadjik707gfyrqw6b-qtdeclarative-6.11.0-dev /nix/store/1wdnr6g4xpxj6vk64lw5pkdi0syw7ql8-qttools-6.11.0-dev /nix/store/qriil2zh2r8n9p76x3z4admfsipc6mr3-qtsvg-6.11.0-dev /nix/store/x44m80ahg51pz32dr0j39yzsr7bn7d5v-libxcb-1.17.0-dev /nix/store/9ag3dbrwgbf1pzzbrhcyk6kqss2h9qgz-libxcb-util-0.4.1-dev /nix/store/zba0kgibxmp87ddlnnvwxrlfbc85w4cy-libxcb-wm-0.4.2-dev /nix/store/7i4fyg0w0kbdvb22gpnvjdxivjgc0nij-libxcb-image-0.4.1-dev /nix/store/yihma6aw528nj48ddwm835f8yg3jjb7p-libxcb-keysyms-0.4.1-dev /nix/store/v7mjkia7ki79s5i24ldbzq1khalhgzk0-pkg-config-wrapper-0.29.2'
export nativeBuildInputs
outputDevman='out'
defaultBuildInputs=''
buildPhase='{ echo "------------------------------------------------------------";
  echo " WARNING: the existence of this path is not guaranteed.";
  echo " It is an internal implementation detail for pkgs.mkShell.";
  echo "------------------------------------------------------------";
  echo;
  # Record all build inputs as runtime dependencies
  export;
} >> "$out"
'
export buildPhase
IFS=' 	
'
QMAKEMODULES='/mkspecs:/mkspecs:/mkspecs:/mkspecs:/mkspecs:/mkspecs:/mkspecs:/mkspecs'
export QMAKEMODULES
builder='/nix/store/i27rhb3nr65rkrwz36bchkwmav6ggsmn-bash-5.3p9/bin/bash'
export builder
declare -a pkgsHostHost=()
declare -a propagatedTargetDepFiles=('propagated-target-target-deps' )
preInstallPhases=' glibPreInstallPhase'
declare -a propagatedHostDepFiles=('propagated-host-host-deps' 'propagated-build-inputs' )
depsBuildTarget=''
export depsBuildTarget
SIZE='size'
export SIZE
postPhases=' postPatchMkspecs'
declare -a envBuildTargetHooks=('qtToolsHook' 'addQtModulePrefix' 'addXMLCatalogs' 'gettextDataDirsHook' )
depsBuildTargetPropagated=''
export depsBuildTargetPropagated
buildInputs=''
export buildInputs
DEVENV_RUNTIME='/run/user/1000/devenv-38a231d'
export DEVENV_RUNTIME
DEVENV_TASKS=''
export DEVENV_TASKS
NIX_CFLAGS_COMPILE=' -frandom-seed=6b3rg76d2r -isystem /nix/store/5bs057cgp4nxqff22jg0k1svs121z6a8-bash-interactive-5.3p9-dev/include -isystem /nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env/include -isystem /nix/store/6sirsgrlw5wpjb61v07sbgs4sfsfdwx6-libxml2-2.15.1-dev/include -isystem /nix/store/f4329v3zm2p5ggkvh5ymv9jphvrpf6ad-libxslt-1.1.45-dev/include -isystem /nix/store/dy64cxaygvmjfznysgxk501yds8jij6s-openssl-3.6.1-dev/include -isystem /nix/store/jphqqkgn7swnppi4dgwxavd3fac51bvx-sqlite-3.51.2-dev/include -isystem /nix/store/3yl2s5r3yph88imzbgbdrh8pbs9rcjcs-zlib-1.3.2-dev/include -isystem /nix/store/crnjlpi5fymlsdiynhi5wdgzc6a9f75a-libglvnd-1.7.0-dev/include -isystem /nix/store/qdyra8ii6kpvwx8cqvg7fradkydxjmyd-vulkan-headers-1.4.341.0/include -isystem /nix/store/ndr1qrjb4y4p66b51sf49x95mymmvr2l-harfbuzz-12.3.0-dev/include -isystem /nix/store/6fbbmfpp3j9yd8yi4g1j2ajy987splhi-graphite2-1.3.14-dev/include -isystem /nix/store/fga8simmllr8rlxql3qfb41620yh3n3p-icu4c-76.1-dev/include -isystem /nix/store/b63lk3n7piwf7a790c4cy0zinqi184fs-libjpeg-turbo-3.1.4-dev/include -isystem /nix/store/h176f4dhbcpj4lpf8sn28vdqp1mks5jk-libpng-apng-1.6.56-dev/include -isystem /nix/store/k1cm26fb7bsxif6lcwpzi7iyccvrv4f1-pcre2-10.46-dev/include -isystem /nix/store/vbqakw4shfcbmdxs6kkp3jmp9k5br94y-zstd-1.5.7-dev/include -isystem /nix/store/9wv94c4wzy3fpfa516qjp4b1bfiymrhy-libb2-0.98.1/include -isystem /nix/store/mm2abhg9j26xcz4mbzi0k2zxqf1924bd-md4c-0.5.2-dev/include -isystem /nix/store/jc55bix1lk4v4d646s78gs6pvliks9jw-double-conversion-3.3.1-dev/include -isystem /nix/store/xq5q2y828igkiwyq25lhrhhv424y3aza-libproxy-0.5.12-dev/include -isystem /nix/store/6xzs85s04k598dchdp1jmyia35ajwn6l-dbus-1.16.2-dev/include -isystem /nix/store/kw0yjwbvw6arwgwaa3p8rz46qsgy4626-glib-2.86.3-dev/include -isystem /nix/store/lg8kfrcxy4bcwnlwbfn6x3s48k4aawba-libffi-3.5.2-dev/include -isystem /nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0/include -isystem /nix/store/5722rfnbamx35h5df4wlvlqrmvmaan7i-glibc-iconv-2.42/include -isystem /nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14/include -isystem /nix/store/mr1ghgw331ncp06bv7kcra1wdpg8qdab-mariadb-connector-odbc-3.2.6/include -isystem /nix/store/490b2y1f8lz3jfns1zf7l0g7bh4kncbh-systemd-260.1-dev/include -isystem /nix/store/80s9hhm2wyb053v2q55iz91hccxw0w47-util-linux-2.42-dev/include -isystem /nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7/include -isystem /nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21/include -isystem /nix/store/1bkcpa0lhy8dw3h6sz5b9742bihb9290-libselinux-3.10-dev/include -isystem /nix/store/hrbmsxk0jl93igyrmlhns5a8jfvc96b3-libsepol-3.10-dev/include -isystem /nix/store/p3459sn6kfj0lxvy6r1nlcgc249bqmvl-lttng-ust-2.14.0-dev/include -isystem /nix/store/cmvpl03c604f718hhnazghiwb5dbn32a-liburcu-0.15.6-dev/include -isystem /nix/store/6h473sgnn2glbvgjd6sj242144zmllvj-libthai-0.1.30-dev/include -isystem /nix/store/n80alrbrr59n9b2qnj8z52yj0zn1gcwm-libdrm-2.4.131-dev/include -isystem /nix/store/9434wg73ynb25zfq3gvr5vij9rn3p9wh-mesa-libgbm-26.0.3/include -isystem /nix/store/1cg9syf0w509d5prxya2ak7k1pizrbi4-libdatrie-2019-12-20-dev/include -isystem /nix/store/qc2r5wx0k5dh6ypwqjq4pfy6314npgaj-systemd-minimal-libs-260.1-dev/include -isystem /nix/store/gjg4aagfcn6r96c73rz4rwbclbdqqc6v-fontconfig-2.17.1-dev/include -isystem /nix/store/r7bp82svf04jqw3x7wnjlyr951jkf85k-freetype-2.14.2-dev/include -isystem /nix/store/bh64ycxf96cc4v43m77nszmpvbs0pfv7-bzip2-1.0.8-dev/include -isystem /nix/store/1x1msj33z37b65vlxbs51l7i4j92qn9h-brotli-1.2.0-dev/include -isystem /nix/store/4303g76pqhl7r8a2xvci0b4bj47bfbjz-libx11-1.8.13-dev/include -isystem /nix/store/mvyxqkpyj2mgymljzj9bqi9bmz7ca5fk-xorgproto-2025.1/include -isystem /nix/store/qfim6c146wnyszb7ij8cfx7glagx2m1a-libxcomposite-0.4.7-dev/include -isystem /nix/store/8bx5rrc94g1wl124n13gk5vrprpbrxn1-libxfixes-6.0.2-dev/include -isystem /nix/store/1kx6y7spy0q6372hqrvib7mw21gaq5bq-libxext-1.3.7-dev/include -isystem /nix/store/hd6i8dzybk2jqwqh6frarw30w15yqq9b-libxau-1.0.12-dev/include -isystem /nix/store/gs34fdhbiw5ndp1akqbib2zsry53vi13-libxi-1.8.2-dev/include -isystem /nix/store/94m0129pm3jlbg4fj8py92j1vi870m9c-libxrender-0.9.12-dev/include -isystem /nix/store/x44m80ahg51pz32dr0j39yzsr7bn7d5v-libxcb-1.17.0-dev/include -isystem /nix/store/s11qidhaq78zrwnd6jc2plxhbmv6y9b9-libxkbcommon-1.13.1-dev/include -isystem /nix/store/9ag3dbrwgbf1pzzbrhcyk6kqss2h9qgz-libxcb-util-0.4.1-dev/include -isystem /nix/store/7i4fyg0w0kbdvb22gpnvjdxivjgc0nij-libxcb-image-0.4.1-dev/include -isystem /nix/store/yihma6aw528nj48ddwm835f8yg3jjb7p-libxcb-keysyms-0.4.1-dev/include -isystem /nix/store/286wksf4n6hknrnljjs7z0wqnbsjwpnr-libxcb-render-util-0.3.10-dev/include -isystem /nix/store/zba0kgibxmp87ddlnnvwxrlfbc85w4cy-libxcb-wm-0.4.2-dev/include -isystem /nix/store/sz4fx21lyp3gwmvnm000v1fk4nyfbmdr-libxdmcp-1.1.5-dev/include -isystem /nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5/include -isystem /nix/store/8yvsggi3lyxvly1d24dppc3l3ccn3n1a-libxcb-cursor-0.1.6-dev/include -isystem /nix/store/xf5sljv7paqfjc6j62kmns4xxva1kwsd-libepoxy-1.5.10-dev/include -isystem /nix/store/g4hxm4rk504vm7py42h4m0309j98da71-cups-2.4.16-dev/include -isystem /nix/store/jzm7j0y2ph7dc1bdfdwdaa653b9mr3m8-gmp-with-cxx-6.3.0-dev/include -isystem /nix/store/lzy227gr54781r8nwws22cw95rl3ji9k-wayland-1.24.0-dev/include -isystem /nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0/include -isystem /nix/store/l73rdqg0ycwyhiplbl31pc4p7c3p2zvx-qtlanguageserver-6.11.0/include -isystem /nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0/include -isystem /nix/store/anjilsbn2zq0i36z0m67w2djvsvc7lzg-qtsvg-6.11.0/include -isystem /nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0/include -isystem /nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0/include -isystem /nix/store/5bs057cgp4nxqff22jg0k1svs121z6a8-bash-interactive-5.3p9-dev/include -isystem /nix/store/prbj1fvsx59ph031xs8m4pj1n3rx3dwq-python3-3.13.12-env/include -isystem /nix/store/6sirsgrlw5wpjb61v07sbgs4sfsfdwx6-libxml2-2.15.1-dev/include -isystem /nix/store/f4329v3zm2p5ggkvh5ymv9jphvrpf6ad-libxslt-1.1.45-dev/include -isystem /nix/store/dy64cxaygvmjfznysgxk501yds8jij6s-openssl-3.6.1-dev/include -isystem /nix/store/jphqqkgn7swnppi4dgwxavd3fac51bvx-sqlite-3.51.2-dev/include -isystem /nix/store/3yl2s5r3yph88imzbgbdrh8pbs9rcjcs-zlib-1.3.2-dev/include -isystem /nix/store/crnjlpi5fymlsdiynhi5wdgzc6a9f75a-libglvnd-1.7.0-dev/include -isystem /nix/store/qdyra8ii6kpvwx8cqvg7fradkydxjmyd-vulkan-headers-1.4.341.0/include -isystem /nix/store/ndr1qrjb4y4p66b51sf49x95mymmvr2l-harfbuzz-12.3.0-dev/include -isystem /nix/store/6fbbmfpp3j9yd8yi4g1j2ajy987splhi-graphite2-1.3.14-dev/include -isystem /nix/store/fga8simmllr8rlxql3qfb41620yh3n3p-icu4c-76.1-dev/include -isystem /nix/store/b63lk3n7piwf7a790c4cy0zinqi184fs-libjpeg-turbo-3.1.4-dev/include -isystem /nix/store/h176f4dhbcpj4lpf8sn28vdqp1mks5jk-libpng-apng-1.6.56-dev/include -isystem /nix/store/k1cm26fb7bsxif6lcwpzi7iyccvrv4f1-pcre2-10.46-dev/include -isystem /nix/store/vbqakw4shfcbmdxs6kkp3jmp9k5br94y-zstd-1.5.7-dev/include -isystem /nix/store/9wv94c4wzy3fpfa516qjp4b1bfiymrhy-libb2-0.98.1/include -isystem /nix/store/mm2abhg9j26xcz4mbzi0k2zxqf1924bd-md4c-0.5.2-dev/include -isystem /nix/store/jc55bix1lk4v4d646s78gs6pvliks9jw-double-conversion-3.3.1-dev/include -isystem /nix/store/xq5q2y828igkiwyq25lhrhhv424y3aza-libproxy-0.5.12-dev/include -isystem /nix/store/6xzs85s04k598dchdp1jmyia35ajwn6l-dbus-1.16.2-dev/include -isystem /nix/store/kw0yjwbvw6arwgwaa3p8rz46qsgy4626-glib-2.86.3-dev/include -isystem /nix/store/lg8kfrcxy4bcwnlwbfn6x3s48k4aawba-libffi-3.5.2-dev/include -isystem /nix/store/ypj27q94ay0ybq9aa14gk0cxjv9d7z4m-gettext-1.0/include -isystem /nix/store/5722rfnbamx35h5df4wlvlqrmvmaan7i-glibc-iconv-2.42/include -isystem /nix/store/igdp7zff1ypi2bjvbvwq7zlhb820lhxv-unixodbc-2.3.14/include -isystem /nix/store/mr1ghgw331ncp06bv7kcra1wdpg8qdab-mariadb-connector-odbc-3.2.6/include -isystem /nix/store/490b2y1f8lz3jfns1zf7l0g7bh4kncbh-systemd-260.1-dev/include -isystem /nix/store/80s9hhm2wyb053v2q55iz91hccxw0w47-util-linux-2.42-dev/include -isystem /nix/store/x3zyk4jw293a7j59n4fc21n4f2qgswrq-mtdev-1.1.7/include -isystem /nix/store/6qx14wf29yn2vqqh0nf0gmvdbk24g964-lksctp-tools-1.0.21/include -isystem /nix/store/1bkcpa0lhy8dw3h6sz5b9742bihb9290-libselinux-3.10-dev/include -isystem /nix/store/hrbmsxk0jl93igyrmlhns5a8jfvc96b3-libsepol-3.10-dev/include -isystem /nix/store/p3459sn6kfj0lxvy6r1nlcgc249bqmvl-lttng-ust-2.14.0-dev/include -isystem /nix/store/cmvpl03c604f718hhnazghiwb5dbn32a-liburcu-0.15.6-dev/include -isystem /nix/store/6h473sgnn2glbvgjd6sj242144zmllvj-libthai-0.1.30-dev/include -isystem /nix/store/n80alrbrr59n9b2qnj8z52yj0zn1gcwm-libdrm-2.4.131-dev/include -isystem /nix/store/9434wg73ynb25zfq3gvr5vij9rn3p9wh-mesa-libgbm-26.0.3/include -isystem /nix/store/1cg9syf0w509d5prxya2ak7k1pizrbi4-libdatrie-2019-12-20-dev/include -isystem /nix/store/qc2r5wx0k5dh6ypwqjq4pfy6314npgaj-systemd-minimal-libs-260.1-dev/include -isystem /nix/store/gjg4aagfcn6r96c73rz4rwbclbdqqc6v-fontconfig-2.17.1-dev/include -isystem /nix/store/r7bp82svf04jqw3x7wnjlyr951jkf85k-freetype-2.14.2-dev/include -isystem /nix/store/bh64ycxf96cc4v43m77nszmpvbs0pfv7-bzip2-1.0.8-dev/include -isystem /nix/store/1x1msj33z37b65vlxbs51l7i4j92qn9h-brotli-1.2.0-dev/include -isystem /nix/store/4303g76pqhl7r8a2xvci0b4bj47bfbjz-libx11-1.8.13-dev/include -isystem /nix/store/mvyxqkpyj2mgymljzj9bqi9bmz7ca5fk-xorgproto-2025.1/include -isystem /nix/store/qfim6c146wnyszb7ij8cfx7glagx2m1a-libxcomposite-0.4.7-dev/include -isystem /nix/store/8bx5rrc94g1wl124n13gk5vrprpbrxn1-libxfixes-6.0.2-dev/include -isystem /nix/store/1kx6y7spy0q6372hqrvib7mw21gaq5bq-libxext-1.3.7-dev/include -isystem /nix/store/hd6i8dzybk2jqwqh6frarw30w15yqq9b-libxau-1.0.12-dev/include -isystem /nix/store/gs34fdhbiw5ndp1akqbib2zsry53vi13-libxi-1.8.2-dev/include -isystem /nix/store/94m0129pm3jlbg4fj8py92j1vi870m9c-libxrender-0.9.12-dev/include -isystem /nix/store/x44m80ahg51pz32dr0j39yzsr7bn7d5v-libxcb-1.17.0-dev/include -isystem /nix/store/s11qidhaq78zrwnd6jc2plxhbmv6y9b9-libxkbcommon-1.13.1-dev/include -isystem /nix/store/9ag3dbrwgbf1pzzbrhcyk6kqss2h9qgz-libxcb-util-0.4.1-dev/include -isystem /nix/store/7i4fyg0w0kbdvb22gpnvjdxivjgc0nij-libxcb-image-0.4.1-dev/include -isystem /nix/store/yihma6aw528nj48ddwm835f8yg3jjb7p-libxcb-keysyms-0.4.1-dev/include -isystem /nix/store/286wksf4n6hknrnljjs7z0wqnbsjwpnr-libxcb-render-util-0.3.10-dev/include -isystem /nix/store/zba0kgibxmp87ddlnnvwxrlfbc85w4cy-libxcb-wm-0.4.2-dev/include -isystem /nix/store/sz4fx21lyp3gwmvnm000v1fk4nyfbmdr-libxdmcp-1.1.5-dev/include -isystem /nix/store/l00ir5q20dd0hjc7v9r7x86wwm8j3ans-libxtst-1.2.5/include -isystem /nix/store/8yvsggi3lyxvly1d24dppc3l3ccn3n1a-libxcb-cursor-0.1.6-dev/include -isystem /nix/store/xf5sljv7paqfjc6j62kmns4xxva1kwsd-libepoxy-1.5.10-dev/include -isystem /nix/store/g4hxm4rk504vm7py42h4m0309j98da71-cups-2.4.16-dev/include -isystem /nix/store/jzm7j0y2ph7dc1bdfdwdaa653b9mr3m8-gmp-with-cxx-6.3.0-dev/include -isystem /nix/store/lzy227gr54781r8nwws22cw95rl3ji9k-wayland-1.24.0-dev/include -isystem /nix/store/1q8sx67miwfn3ws5k7mkmkcjbym4akkp-qtbase-6.11.0/include -isystem /nix/store/l73rdqg0ycwyhiplbl31pc4p7c3p2zvx-qtlanguageserver-6.11.0/include -isystem /nix/store/cbcabga4x51r5ij1w28gjvy9iga5b227-qtshadertools-6.11.0/include -isystem /nix/store/anjilsbn2zq0i36z0m67w2djvsvc7lzg-qtsvg-6.11.0/include -isystem /nix/store/lwa1k7ni8d4ljj44mzzlagk4qnngrsr8-qtdeclarative-6.11.0/include -isystem /nix/store/r7ql268kllgllx5l3sby2mzf689y042j-qttools-6.11.0/include'
export NIX_CFLAGS_COMPILE
outputInfo='out'
RANLIB='ranlib'
export RANLIB
XML_CATALOG_FILES='  /nix/store/g6a7agib4hbnvqcny05fk8dfjplw8nkb-dbus-1.16.2/share/xml/dbus-1/catalog.xml /nix/store/g6a7agib4hbnvqcny05fk8dfjplw8nkb-dbus-1.16.2/share/xml/dbus-1/catalog.xml /nix/store/g6a7agib4hbnvqcny05fk8dfjplw8nkb-dbus-1.16.2/share/xml/dbus-1/catalog.xml'
export XML_CATALOG_FILES
STRIP='strip'
export STRIP
DEVENV_TASK_FILE='/nix/store/c99zacg6m3dd6xw0yh6gnxhdvmil814p-tasks.json'
export DEVENV_TASK_FILE
outputLib='out'
outputMan='out'
declare -a postUnpackHooks=('_updateSourceDateEpochFromSourceRoot' )
_moveSystemdUserUnits ()
{
 
    if [ "${dontMoveSystemdUserUnits:-0}" = 1 ]; then
        return;
    fi;
    if [ ! -e "${prefix:?}/lib/systemd/user" ]; then
        return;
    fi;
    local source="$prefix/lib/systemd/user";
    local target="$prefix/share/systemd/user";
    echo "moving $source/* to $target";
    mkdir -p "$target";
    ( shopt -s dotglob;
    for i in "$source"/*;
    do
        mv "$i" "$target";
    done );
    rmdir "$source";
    ln -s "$target" "$source"
}
updateAutotoolsGnuConfigScriptsPhase ()
{
 
    if [ -n "${dontUpdateAutotoolsGnuConfigScripts-}" ]; then
        return;
    fi;
    for script in config.sub config.guess;
    do
        for f in $(find . -type f -name "$script");
        do
            echo "Updating Autotools / GNU config script to a newer upstream version: $f";
            cp -f "/nix/store/kppfbp4x7mhfz1q5zswavxxxq71v2f7c-gnu-config-2024-01-01/$script" "$f";
        done;
    done
}
nixVomitLog ()
{
 
    _nixLogWithLevel 7 "$*"
}
addQtModulePrefix ()
{
 
    addToSearchPath QT_ADDITIONAL_PACKAGES_PREFIX_PATH $1
}
getTargetRoleWrapper ()
{
 
    case $targetOffset in 
        -1)
            export NIX_BINTOOLS_WRAPPER_TARGET_BUILD_x86_64_unknown_linux_gnu=1
        ;;
        0)
            export NIX_BINTOOLS_WRAPPER_TARGET_HOST_x86_64_unknown_linux_gnu=1
        ;;
        1)
            export NIX_BINTOOLS_WRAPPER_TARGET_TARGET_x86_64_unknown_linux_gnu=1
        ;;
        *)
            echo "binutils-wrapper-2.46: used as improper sort of dependency" 1>&2;
            return 1
        ;;
    esac
}
isScript ()
{
 
    local fn="$1";
    local fd;
    local magic;
    exec {fd}< "$fn";
    LANG=C read -r -n 2 -u "$fd" magic;
    exec {fd}>&-;
    if [[ "$magic" =~ \#! ]]; then
        return 0;
    else
        return 1;
    fi
}
_multioutPropagateDev ()
{
 
    if [ "$(getAllOutputNames)" = "out" ]; then
        return;
    fi;
    local outputFirst;
    for outputFirst in $(getAllOutputNames);
    do
        break;
    done;
    local propagaterOutput="$outputDev";
    if [ -z "$propagaterOutput" ]; then
        propagaterOutput="$outputFirst";
    fi;
    if [ -z "${propagatedBuildOutputs+1}" ]; then
        local po_dirty="$outputBin $outputInclude $outputLib";
        set +o pipefail;
        propagatedBuildOutputs=`echo "$po_dirty"             | tr -s ' ' '\n' | grep -v -F "$propagaterOutput"             | sort -u | tr '\n' ' ' `;
        set -o pipefail;
    fi;
    if [ -z "$propagatedBuildOutputs" ]; then
        return;
    fi;
    mkdir -p "${!propagaterOutput}"/nix-support;
    for output in $propagatedBuildOutputs;
    do
        echo -n " ${!output}" >> "${!propagaterOutput}"/nix-support/propagated-build-inputs;
    done
}
moveToOutput ()
{
 
    local patt="$1";
    local dstOut="$2";
    local output;
    for output in $(getAllOutputNames);
    do
        if [ "${!output}" = "$dstOut" ]; then
            continue;
        fi;
        local srcPath;
        for srcPath in "${!output}"/$patt;
        do
            if [ ! -e "$srcPath" ] && [ ! -L "$srcPath" ]; then
                continue;
            fi;
            if [ "$dstOut" = REMOVE ]; then
                echo "Removing $srcPath";
                rm -r "$srcPath";
            else
                local dstPath="$dstOut${srcPath#${!output}}";
                echo "Moving $srcPath to $dstPath";
                if [ -d "$dstPath" ] && [ -d "$srcPath" ]; then
                    rmdir "$srcPath" --ignore-fail-on-non-empty;
                    if [ -d "$srcPath" ]; then
                        mv -t "$dstPath" "$srcPath"/*;
                        rmdir "$srcPath";
                    fi;
                else
                    mkdir -p "$(readlink -m "$dstPath/..")";
                    mv "$srcPath" "$dstPath";
                fi;
            fi;
            local srcParent="$(readlink -m "$srcPath/..")";
            if [ -n "$(find "$srcParent" -maxdepth 0 -type d -empty 2> /dev/null)" ]; then
                echo "Removing empty $srcParent/ and (possibly) its parents";
                rmdir -p --ignore-fail-on-non-empty "$srcParent" 2> /dev/null || true;
            fi;
        done;
    done
}
fixupPhase ()
{
 
    local output;
    for output in $(getAllOutputNames);
    do
        if [ -e "${!output}" ]; then
            chmod -R u+w,u-s,g-s "${!output}";
        fi;
    done;
    runHook preFixup;
    local output;
    for output in $(getAllOutputNames);
    do
        prefix="${!output}" runHook fixupOutput;
    done;
    recordPropagatedDependencies;
    if [ -n "${setupHook:-}" ]; then
        mkdir -p "${!outputDev}/nix-support";
        substituteAll "$setupHook" "${!outputDev}/nix-support/setup-hook";
    fi;
    if [ -n "${setupHooks:-}" ]; then
        mkdir -p "${!outputDev}/nix-support";
        local hook;
        for hook in ${setupHooks[@]};
        do
            local content;
            consumeEntire content < "$hook";
            substituteAllStream content "file '$hook'" >> "${!outputDev}/nix-support/setup-hook";
            unset -v content;
        done;
        unset -v hook;
    fi;
    if [ -n "${propagatedUserEnvPkgs[*]:-}" ]; then
        mkdir -p "${!outputBin}/nix-support";
        printWords "${propagatedUserEnvPkgs[@]}" > "${!outputBin}/nix-support/propagated-user-env-packages";
    fi;
    runHook postFixup
}
patchPhase ()
{
 
    runHook prePatch;
    local -a patchesArray;
    concatTo patchesArray patches;
    local -a flagsArray;
    concatTo flagsArray patchFlags=-p1;
    for i in "${patchesArray[@]}";
    do
        echo "applying patch $i";
        local uncompress=cat;
        case "$i" in 
            *.gz)
                uncompress="gzip -d"
            ;;
            *.bz2)
                uncompress="bzip2 -d"
            ;;
            *.xz)
                uncompress="xz -d"
            ;;
            *.lzma)
                uncompress="lzma -d"
            ;;
        esac;
        $uncompress < "$i" 2>&1 | patch "${flagsArray[@]}";
    done;
    runHook postPatch
}
_overrideFirst ()
{
 
    if [ -z "${!1-}" ]; then
        _assignFirst "$@";
    fi
}
qtToolsHook ()
{
 
    if [ -f "$1/libexec/qhelpgenerator" ]; then
        if [[ -n "${qtToolsPathSeen:-}" && "${qttoolsPathSeen:-}" != "$1" ]]; then
            echo "Error: detected mismatched Qt dependencies:" 1>&2;
            echo "    $1" 1>&2;
            echo "    $qttoolsPathSeen" 1>&2;
            exit 1;
        fi;
        qttoolsPathSeen=$1;
        appendToVar cmakeFlags "-DQT_OPTIONAL_TOOLS_PATH=$1";
    fi
}
gettextDataDirsHook ()
{
 
    getHostRoleEnvHook;
    if [ -d "$1/share/gettext" ]; then
        addToSearchPath "GETTEXTDATADIRS${role_post}" "$1/share/gettext";
    fi
}
mapOffset ()
{
 
    local -r inputOffset="$1";
    local -n outputOffset="$2";
    if (( inputOffset <= 0 )); then
        outputOffset=$((inputOffset + hostOffset));
    else
        outputOffset=$((inputOffset - 1 + targetOffset));
    fi
}
nixErrorLog ()
{
 
    _nixLogWithLevel 0 "$*"
}
substituteStream ()
{
 
    local var=$1;
    local description=$2;
    shift 2;
    while (( "$#" )); do
        local replace_mode="$1";
        case "$1" in 
            --replace)
                if ! "$_substituteStream_has_warned_replace_deprecation"; then
                    echo "substituteStream() in derivation $name: WARNING: '--replace' is deprecated, use --replace-{fail,warn,quiet}. ($description)" 1>&2;
                    _substituteStream_has_warned_replace_deprecation=true;
                fi;
                replace_mode='--replace-warn'
            ;&
            --replace-quiet | --replace-warn | --replace-fail)
                pattern="$2";
                replacement="$3";
                shift 3;
                if ! [[ "${!var}" == *"$pattern"* ]]; then
                    if [ "$replace_mode" == --replace-warn ]; then
                        printf "substituteStream() in derivation $name: WARNING: pattern %q doesn't match anything in %s\n" "$pattern" "$description" 1>&2;
                    else
                        if [ "$replace_mode" == --replace-fail ]; then
                            printf "substituteStream() in derivation $name: ERROR: pattern %q doesn't match anything in %s\n" "$pattern" "$description" 1>&2;
                            return 1;
                        fi;
                    fi;
                fi;
                eval "$var"'=${'"$var"'//"$pattern"/"$replacement"}'
            ;;
            --subst-var)
                local varName="$2";
                shift 2;
                if ! [[ "$varName" =~ ^[a-zA-Z_][a-zA-Z0-9_]*$ ]]; then
                    echo "substituteStream() in derivation $name: ERROR: substitution variables must be valid Bash names, \"$varName\" isn't." 1>&2;
                    return 1;
                fi;
                if [ -z ${!varName+x} ]; then
                    echo "substituteStream() in derivation $name: ERROR: variable \$$varName is unset" 1>&2;
                    return 1;
                fi;
                pattern="@$varName@";
                replacement="${!varName}";
                eval "$var"'=${'"$var"'//"$pattern"/"$replacement"}'
            ;;
            --subst-var-by)
                pattern="@$2@";
                replacement="$3";
                eval "$var"'=${'"$var"'//"$pattern"/"$replacement"}';
                shift 3
            ;;
            *)
                echo "substituteStream() in derivation $name: ERROR: Invalid command line argument: $1" 1>&2;
                return 1
            ;;
        esac;
    done;
    printf "%s" "${!var}"
}
nixWarnLog ()
{
 
    _nixLogWithLevel 1 "$*"
}
runPhase ()
{
 
    local curPhase="$*";
    if [[ "$curPhase" = unpackPhase && -n "${dontUnpack:-}" ]]; then
        return;
    fi;
    if [[ "$curPhase" = patchPhase && -n "${dontPatch:-}" ]]; then
        return;
    fi;
    if [[ "$curPhase" = configurePhase && -n "${dontConfigure:-}" ]]; then
        return;
    fi;
    if [[ "$curPhase" = buildPhase && -n "${dontBuild:-}" ]]; then
        return;
    fi;
    if [[ "$curPhase" = checkPhase && -z "${doCheck:-}" ]]; then
        return;
    fi;
    if [[ "$curPhase" = installPhase && -n "${dontInstall:-}" ]]; then
        return;
    fi;
    if [[ "$curPhase" = fixupPhase && -n "${dontFixup:-}" ]]; then
        return;
    fi;
    if [[ "$curPhase" = installCheckPhase && -z "${doInstallCheck:-}" ]]; then
        return;
    fi;
    if [[ "$curPhase" = distPhase && -z "${doDist:-}" ]]; then
        return;
    fi;
    showPhaseHeader "$curPhase";
    dumpVars;
    local startTime endTime;
    startTime=$(date +"%s");
    eval "${!curPhase:-$curPhase}";
    endTime=$(date +"%s");
    showPhaseFooter "$curPhase" "$startTime" "$endTime";
    if [ "$curPhase" = unpackPhase ]; then
        [ -n "${sourceRoot:-}" ] && chmod +x -- "${sourceRoot}";
        cd -- "${sourceRoot:-.}";
    fi
}
substituteInPlace ()
{
 
    local -a fileNames=();
    for arg in "$@";
    do
        if [[ "$arg" = "--"* ]]; then
            break;
        fi;
        fileNames+=("$arg");
        shift;
    done;
    if ! [[ "${#fileNames[@]}" -gt 0 ]]; then
        echo "substituteInPlace called without any files to operate on (files must come before options!)" 1>&2;
        return 1;
    fi;
    for file in "${fileNames[@]}";
    do
        substitute "$file" "$file" "$@";
    done
}
_makeSymlinksRelative ()
{
 
    local prefixes;
    prefixes=();
    for output in $(getAllOutputNames);
    do
        [ ! -e "${!output}" ] && continue;
        prefixes+=("${!output}");
    done;
    find "${prefixes[@]}" -type l -printf '%H\0%p\0' | xargs -0 -n2 -r -P "$NIX_BUILD_CORES" sh -c '
      output="$1"
      link="$2"

      linkTarget=$(readlink "$link")

      # only touch links that point inside the same output tree
      [[ $linkTarget == "$output"/* ]] || exit 0

      if [ ! -e "$linkTarget" ]; then
        echo "the symlink $link is broken, it points to $linkTarget (which is missing)"
      fi

      echo "making symlink relative: $link"
      ln -snrf "$linkTarget" "$link"
    ' _
}
recordPropagatedDependencies ()
{
 
    declare -ra flatVars=(depsBuildBuildPropagated propagatedNativeBuildInputs depsBuildTargetPropagated depsHostHostPropagated propagatedBuildInputs depsTargetTargetPropagated);
    declare -ra flatFiles=("${propagatedBuildDepFiles[@]}" "${propagatedHostDepFiles[@]}" "${propagatedTargetDepFiles[@]}");
    local propagatedInputsIndex;
    for propagatedInputsIndex in "${!flatVars[@]}";
    do
        local propagatedInputsSlice="${flatVars[$propagatedInputsIndex]}[@]";
        local propagatedInputsFile="${flatFiles[$propagatedInputsIndex]}";
        [[ -n "${!propagatedInputsSlice}" ]] || continue;
        mkdir -p "${!outputDev}/nix-support";
        printWords ${!propagatedInputsSlice} > "${!outputDev}/nix-support/$propagatedInputsFile";
    done
}
updateSourceDateEpoch ()
{
 
    local path="$1";
    [[ $path == -* ]] && path="./$path";
    local -a res=($(find "$path" -type f -not -newer "$NIX_BUILD_TOP/.." -printf '%T@ "%p"\0' | sort -n --zero-terminated | tail -n1 --zero-terminated | head -c -1));
    local time="${res[0]//\.[0-9]*/}";
    local newestFile="${res[1]}";
    if [ "${time:-0}" -gt "$SOURCE_DATE_EPOCH" ]; then
        echo "setting SOURCE_DATE_EPOCH to timestamp $time of file $newestFile";
        export SOURCE_DATE_EPOCH="$time";
        local now="$(date +%s)";
        if [ "$time" -gt $((now - 60)) ]; then
            echo "warning: file $newestFile may be generated; SOURCE_DATE_EPOCH may be non-deterministic";
        fi;
    fi
}
installPhase ()
{
 
    runHook preInstall;
    if [[ -z "${makeFlags-}" && -z "${makefile:-}" && ! ( -e Makefile || -e makefile || -e GNUmakefile ) ]]; then
        echo "no Makefile or custom installPhase, doing nothing";
        runHook postInstall;
        return;
    else
        foundMakefile=1;
    fi;
    if [ -n "$prefix" ]; then
        mkdir -p "$prefix";
    fi;
    local flagsArray=(${enableParallelInstalling:+-j${NIX_BUILD_CORES}} SHELL="$SHELL");
    concatTo flagsArray makeFlags makeFlagsArray installFlags installFlagsArray installTargets=install;
    echoCmd 'install flags' "${flagsArray[@]}";
    make ${makefile:+-f $makefile} "${flagsArray[@]}";
    unset flagsArray;
    runHook postInstall
}
fixLibtool ()
{
 
    local search_path;
    for flag in $NIX_LDFLAGS;
    do
        case $flag in 
            -L*)
                search_path+=" ${flag#-L}"
            ;;
        esac;
    done;
    sed -i "$1" -e "s^eval \(sys_lib_search_path=\).*^\1'${search_path:-}'^" -e 's^eval sys_lib_.+search_path=.*^^'
}
glibPreInstallPhase ()
{
 
    makeFlagsArray+=("gsettingsschemadir=${!outputLib}/share/gsettings-schemas/$name/glib-2.0/schemas/")
}
nixNoticeLog ()
{
 
    _nixLogWithLevel 2 "$*"
}
_addToEnv ()
{
 
    local depHostOffset depTargetOffset;
    local pkg;
    for depHostOffset in "${allPlatOffsets[@]}";
    do
        local hookVar="${pkgHookVarVars[depHostOffset + 1]}";
        local pkgsVar="${pkgAccumVarVars[depHostOffset + 1]}";
        for depTargetOffset in "${allPlatOffsets[@]}";
        do
            (( depHostOffset <= depTargetOffset )) || continue;
            local hookRef="${hookVar}[$depTargetOffset - $depHostOffset]";
            if [[ -z "${strictDeps-}" ]]; then
                local visitedPkgs="";
                for pkg in "${pkgsBuildBuild[@]}" "${pkgsBuildHost[@]}" "${pkgsBuildTarget[@]}" "${pkgsHostHost[@]}" "${pkgsHostTarget[@]}" "${pkgsTargetTarget[@]}";
                do
                    if [[ "$visitedPkgs" = *"$pkg"* ]]; then
                        continue;
                    fi;
                    runHook "${!hookRef}" "$pkg";
                    visitedPkgs+=" $pkg";
                done;
            else
                local pkgsRef="${pkgsVar}[$depTargetOffset - $depHostOffset]";
                local pkgsSlice="${!pkgsRef}[@]";
                for pkg in ${!pkgsSlice+"${!pkgsSlice}"};
                do
                    runHook "${!hookRef}" "$pkg";
                done;
            fi;
        done;
    done
}
installCheckPhase ()
{
 
    runHook preInstallCheck;
    if [[ -z "${foundMakefile:-}" ]]; then
        echo "no Makefile or custom installCheckPhase, doing nothing";
    else
        if [[ -z "${installCheckTarget:-}" ]] && ! make -n ${makefile:+-f $makefile} "${installCheckTarget:-installcheck}" > /dev/null 2>&1; then
            echo "no installcheck target in ${makefile:-Makefile}, doing nothing";
        else
            local flagsArray=(${enableParallelChecking:+-j${NIX_BUILD_CORES}} SHELL="$SHELL");
            concatTo flagsArray makeFlags makeFlagsArray installCheckFlags installCheckFlagsArray installCheckTarget=installcheck;
            echoCmd 'installcheck flags' "${flagsArray[@]}";
            make ${makefile:+-f $makefile} "${flagsArray[@]}";
            unset flagsArray;
        fi;
    fi;
    runHook postInstallCheck
}
_logHook ()
{
 
    if [[ -z ${NIX_LOG_FD-} ]]; then
        return;
    fi;
    local hookKind="$1";
    local hookExpr="$2";
    shift 2;
    if declare -F "$hookExpr" > /dev/null 2>&1; then
        nixTalkativeLog "calling '$hookKind' function hook '$hookExpr'" "$@";
    else
        if type -p "$hookExpr" > /dev/null; then
            nixTalkativeLog "sourcing '$hookKind' script hook '$hookExpr'";
        else
            if [[ "$hookExpr" != "_callImplicitHook"* ]]; then
                local exprToOutput;
                if [[ ${NIX_DEBUG:-0} -ge 5 ]]; then
                    exprToOutput="$hookExpr";
                else
                    local hookExprLine;
                    while IFS= read -r hookExprLine; do
                        hookExprLine="${hookExprLine#"${hookExprLine%%[![:space:]]*}"}";
                        if [[ -n "$hookExprLine" ]]; then
                            exprToOutput+="$hookExprLine\\n ";
                        fi;
                    done <<< "$hookExpr";
                    exprToOutput="${exprToOutput%%\\n }";
                fi;
                nixTalkativeLog "evaling '$hookKind' string hook '$exprToOutput'";
            fi;
        fi;
    fi
}
patchELF ()
{
 
    local dir="$1";
    [ -e "$dir" ] || return 0;
    echo "shrinking RPATHs of ELF executables and libraries in $dir";
    local i;
    while IFS= read -r -d '' i; do
        if [[ "$i" =~ .build-id ]]; then
            continue;
        fi;
        if ! isELF "$i"; then
            continue;
        fi;
        echo "shrinking $i";
        patchelf --shrink-rpath "$i" || true;
    done < <(find "$dir" -type f -print0)
}
pkgConfigWrapper_addPkgConfigPath ()
{
 
    local role_post;
    getHostRoleEnvHook;
    addToSearchPath "PKG_CONFIG_PATH${role_post}" "$1/lib/pkgconfig";
    addToSearchPath "PKG_CONFIG_PATH${role_post}" "$1/share/pkgconfig"
}
substituteAllStream ()
{
 
    local -a args=();
    _allFlags;
    substituteStream "$1" "$2" "${args[@]}"
}
isMachO ()
{
 
    local fn="$1";
    local fd;
    local magic;
    exec {fd}< "$fn";
    LANG=C read -r -n 4 -u "$fd" magic;
    exec {fd}>&-;
    if [[ "$magic" = $(echo -ne "\xfe\xed\xfa\xcf") || "$magic" = $(echo -ne "\xcf\xfa\xed\xfe") ]]; then
        return 0;
    else
        if [[ "$magic" = $(echo -ne "\xfe\xed\xfa\xce") || "$magic" = $(echo -ne "\xce\xfa\xed\xfe") ]]; then
            return 0;
        else
            if [[ "$magic" = $(echo -ne "\xca\xfe\xba\xbe") || "$magic" = $(echo -ne "\xbe\xba\xfe\xca") ]]; then
                return 0;
            else
                return 1;
            fi;
        fi;
    fi
}
consumeEntire ()
{
 
    if IFS='' read -r -d '' "$1"; then
        echo "consumeEntire(): ERROR: Input null bytes, won't process" 1>&2;
        return 1;
    fi
}
printLines ()
{
 
    (( "$#" > 0 )) || return 0;
    printf '%s\n' "$@"
}
qtPreHook ()
{
 
    if [[ -z "$__nix_wrapQtAppsHook" && -z "$dontWrapQtApps" ]]; then
        echo "Error: this derivation depends on qtbase, but no wrapping behavior was specified." 1>&2;
        echo "  - If this is an application, add wrapQtAppsHook to nativeBuildInputs" 1>&2;
        echo "  - If this is a library or you need custom wrapping logic, set dontWrapQtApps = true" 1>&2;
        exit 1;
    fi
}
stripHash ()
{
 
    local strippedName casematchOpt=0;
    strippedName="$(basename -- "$1")";
    shopt -q nocasematch && casematchOpt=1;
    shopt -u nocasematch;
    if [[ "$strippedName" =~ ^[a-z0-9]{32}- ]]; then
        echo "${strippedName:33}";
    else
        echo "$strippedName";
    fi;
    if (( casematchOpt )); then
        shopt -s nocasematch;
    fi
}
_callImplicitHook ()
{
 
    local def="$1";
    local hookName="$2";
    if declare -F "$hookName" > /dev/null; then
        nixTalkativeLog "calling implicit '$hookName' function hook";
        "$hookName";
    else
        if type -p "$hookName" > /dev/null; then
            nixTalkativeLog "sourcing implicit '$hookName' script hook";
            source "$hookName";
        else
            if [ -n "${!hookName:-}" ]; then
                nixTalkativeLog "evaling implicit '$hookName' string hook";
                eval "${!hookName}";
            else
                return "$def";
            fi;
        fi;
    fi
}
_activatePkgs ()
{
 
    local hostOffset targetOffset;
    local pkg;
    for hostOffset in "${allPlatOffsets[@]}";
    do
        local pkgsVar="${pkgAccumVarVars[hostOffset + 1]}";
        for targetOffset in "${allPlatOffsets[@]}";
        do
            (( hostOffset <= targetOffset )) || continue;
            local pkgsRef="${pkgsVar}[$targetOffset - $hostOffset]";
            local pkgsSlice="${!pkgsRef}[@]";
            for pkg in ${!pkgsSlice+"${!pkgsSlice}"};
            do
                activatePackage "$pkg" "$hostOffset" "$targetOffset";
            done;
        done;
    done
}
getHostRoleEnvHook ()
{
 
    getRole "$depHostOffset"
}
_multioutDocs ()
{
 
    local REMOVE=REMOVE;
    moveToOutput share/info "${!outputInfo}";
    moveToOutput share/doc "${!outputDoc}";
    moveToOutput share/gtk-doc "${!outputDevdoc}";
    moveToOutput share/devhelp/books "${!outputDevdoc}";
    moveToOutput share/man "${!outputMan}";
    moveToOutput share/man/man3 "${!outputDevman}"
}
_pruneLibtoolFiles ()
{
 
    if [ "${dontPruneLibtoolFiles-}" ] || [ ! -e "$prefix" ]; then
        return;
    fi;
    find "$prefix" -type f -name '*.la' -exec grep -q '^# Generated by .*libtool' {} \; -exec grep -q "^old_library=''" {} \; -exec sed -i {} -e "/^dependency_libs='[^']/ c dependency_libs='' #pruned" \;
}
addToSearchPathWithCustomDelimiter ()
{
 
    local delimiter="$1";
    local varName="$2";
    local dir="$3";
    if [[ -d "$dir" && "${!varName:+${delimiter}${!varName}${delimiter}}" != *"${delimiter}${dir}${delimiter}"* ]]; then
        export "${varName}=${!varName:+${!varName}${delimiter}}${dir}";
    fi
}
_moveLib64 ()
{
 
    if [ "${dontMoveLib64-}" = 1 ]; then
        return;
    fi;
    if [ ! -e "$prefix/lib64" -o -L "$prefix/lib64" ]; then
        return;
    fi;
    echo "moving $prefix/lib64/* to $prefix/lib";
    mkdir -p $prefix/lib;
    shopt -s dotglob;
    for i in $prefix/lib64/*;
    do
        mv --no-clobber "$i" $prefix/lib;
    done;
    shopt -u dotglob;
    rmdir $prefix/lib64;
    ln -s lib $prefix/lib64
}
_eval ()
{
 
    if declare -F "$1" > /dev/null 2>&1; then
        "$@";
    else
        eval "$1";
    fi
}
make_glib_find_gsettings_schemas ()
{
 
    for maybe_dir in "$1"/share/gsettings-schemas/*;
    do
        if [[ -d "$maybe_dir/glib-2.0/schemas" ]]; then
            addToSearchPath GSETTINGS_SCHEMAS_PATH "$maybe_dir";
        fi;
    done
}
nixChattyLog ()
{
 
    _nixLogWithLevel 5 "$*"
}
ccWrapper_addCVars ()
{
 
    local role_post;
    getHostRoleEnvHook;
    local found=;
    if [ -d "$1/include" ]; then
        export NIX_CFLAGS_COMPILE${role_post}+=" -isystem $1/include";
        found=1;
    fi;
    if [ -d "$1/Library/Frameworks" ]; then
        export NIX_CFLAGS_COMPILE${role_post}+=" -iframework $1/Library/Frameworks";
        found=1;
    fi;
    if [[ -n "" && -n ${NIX_STORE:-} && -n $found ]]; then
        local scrubbed="$NIX_STORE/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-${1#"$NIX_STORE"/*-}";
        export NIX_CFLAGS_COMPILE${role_post}+=" -fmacro-prefix-map=$1=$scrubbed";
    fi
}
_addRpathPrefix ()
{
 
    if [ "${NIX_NO_SELF_RPATH:-0}" != 1 ]; then
        export NIX_LDFLAGS="-rpath $1/lib ${NIX_LDFLAGS-}";
    fi
}
dumpVars ()
{
 
    if [[ "${noDumpEnvVars:-0}" != 1 && -d "$NIX_BUILD_TOP" ]]; then
        local old_umask;
        old_umask=$(umask);
        umask 0077;
        export 2> /dev/null > "$NIX_BUILD_TOP/env-vars";
        umask "$old_umask";
    fi
}
_assignFirst ()
{
 
    local varName="$1";
    local _var;
    local REMOVE=REMOVE;
    shift;
    for _var in "$@";
    do
        if [ -n "${!_var-}" ]; then
            eval "${varName}"="${_var}";
            return;
        fi;
    done;
    echo;
    echo "error: _assignFirst: could not find a non-empty variable whose name to assign to ${varName}.";
    echo "       The following variables were all unset or empty:";
    echo "           $*";
    if [ -z "${out:-}" ]; then
        echo '       If you do not want an "out" output in your derivation, make sure to define';
        echo '       the other specific required outputs. This can be achieved by picking one';
        echo "       of the above as an output.";
        echo '       You do not have to remove "out" if you want to have a different default';
        echo '       output, because the first output is taken as a default.';
        echo;
    fi;
    return 1
}
patchShebangsAuto ()
{
 
    if [[ -z "${dontPatchShebangs-}" && -e "$prefix" ]]; then
        if [[ "$output" != out && "$output" = "$outputDev" ]]; then
            patchShebangs --build "$prefix";
        else
            patchShebangs --host "$prefix";
        fi;
    fi
}
_multioutConfig ()
{
 
    if [ "$(getAllOutputNames)" = "out" ] || [ -z "${setOutputFlags-1}" ]; then
        return;
    fi;
    if [ -z "${shareDocName:-}" ]; then
        local confScript="${configureScript:-}";
        if [ -z "$confScript" ] && [ -x ./configure ]; then
            confScript=./configure;
        fi;
        if [ -f "$confScript" ]; then
            local shareDocName="$(sed -n "s/^PACKAGE_TARNAME='\(.*\)'$/\1/p" < "$confScript")";
        fi;
        if [ -z "$shareDocName" ] || echo "$shareDocName" | grep -q '[^a-zA-Z0-9_-]'; then
            shareDocName="$(echo "$name" | sed 's/-[^a-zA-Z].*//')";
        fi;
    fi;
    prependToVar configureFlags --bindir="${!outputBin}"/bin --sbindir="${!outputBin}"/sbin --includedir="${!outputInclude}"/include --mandir="${!outputMan}"/share/man --infodir="${!outputInfo}"/share/info --docdir="${!outputDoc}"/share/doc/"${shareDocName}" --libdir="${!outputLib}"/lib --libexecdir="${!outputLib}"/libexec --localedir="${!outputLib}"/share/locale;
    prependToVar installFlags pkgconfigdir="${!outputDev}"/lib/pkgconfig m4datadir="${!outputDev}"/share/aclocal aclocaldir="${!outputDev}"/share/aclocal
}
_nixLogWithLevel ()
{
 
    [[ -z ${NIX_LOG_FD-} || ${NIX_DEBUG:-0} -lt ${1:?} ]] && return 0;
    local logLevel;
    case "${1:?}" in 
        0)
            logLevel=ERROR
        ;;
        1)
            logLevel=WARN
        ;;
        2)
            logLevel=NOTICE
        ;;
        3)
            logLevel=INFO
        ;;
        4)
            logLevel=TALKATIVE
        ;;
        5)
            logLevel=CHATTY
        ;;
        6)
            logLevel=DEBUG
        ;;
        7)
            logLevel=VOMIT
        ;;
        *)
            echo "_nixLogWithLevel: called with invalid log level: ${1:?}" >&"$NIX_LOG_FD";
            return 1
        ;;
    esac;
    local callerName="${FUNCNAME[2]}";
    if [[ $callerName == "_callImplicitHook" ]]; then
        callerName="${hookName:?}";
    fi;
    printf "%s: %s: %s\n" "$logLevel" "$callerName" "${2:?}" >&"$NIX_LOG_FD"
}
_moveToShare ()
{
 
    if [ -n "$__structuredAttrs" ]; then
        if [ -z "${forceShare-}" ]; then
            forceShare=(man doc info);
        fi;
    else
        forceShare=(${forceShare:-man doc info});
    fi;
    if [[ -z "$out" ]]; then
        return;
    fi;
    for d in "${forceShare[@]}";
    do
        if [ -d "$out/$d" ]; then
            if [ -d "$out/share/$d" ]; then
                echo "both $d/ and share/$d/ exist!";
            else
                echo "moving $out/$d to $out/share/$d";
                mkdir -p $out/share;
                mv $out/$d $out/share/;
            fi;
        fi;
    done
}
getAllOutputNames ()
{
 
    if [ -n "$__structuredAttrs" ]; then
        echo "${!outputs[*]}";
    else
        echo "$outputs";
    fi
}
echoCmd ()
{
 
    printf "%s:" "$1";
    shift;
    printf ' %q' "$@";
    echo
}
runHook ()
{
 
    local hookName="$1";
    shift;
    local hooksSlice="${hookName%Hook}Hooks[@]";
    local hook;
    for hook in "_callImplicitHook 0 $hookName" ${!hooksSlice+"${!hooksSlice}"};
    do
        _logHook "$hookName" "$hook" "$@";
        _eval "$hook" "$@";
    done;
    return 0
}
glibPostInstallHook ()
{
 
    if [ -d "$prefix/share/glib-2.0/schemas" ]; then
        mkdir -p "${!outputLib}/share/gsettings-schemas/$name/glib-2.0";
        mv "$prefix/share/glib-2.0/schemas" "${!outputLib}/share/gsettings-schemas/$name/glib-2.0/";
    fi;
    addToSearchPath GSETTINGS_SCHEMAS_PATH "${!outputLib}/share/gsettings-schemas/$name"
}
qmakePathHook ()
{
 
    if [ -n "${qmakePathSeen[$1]-}" ]; then
        return;
    fi;
    qmakePathSeen[$1]=1;
    if [ -d "$1/mkspecs" ]; then
        QMAKEMODULES="${QMAKEMODULES}${QMAKEMODULES:+:}/mkspecs";
        QMAKEPATH="${QMAKEPATH}${QMAKEPATH:+:}$1";
    fi
}
_multioutDevs ()
{
 
    if [ "$(getAllOutputNames)" = "out" ] || [ -z "${moveToDev-1}" ]; then
        return;
    fi;
    moveToOutput include "${!outputInclude}";
    moveToOutput lib/pkgconfig "${!outputDev}";
    moveToOutput share/pkgconfig "${!outputDev}";
    moveToOutput lib/cmake "${!outputDev}";
    moveToOutput share/aclocal "${!outputDev}";
    for f in "${!outputDev}"/{lib,share}/pkgconfig/*.pc;
    do
        echo "Patching '$f' includedir to output ${!outputInclude}";
        sed -i "/^includedir=/s,=\${prefix},=${!outputInclude}," "$f";
    done
}
addXMLCatalogs ()
{
 
    local d i;
    for d in $1/share/xml $1/xml/dtd $1/xml/xsl;
    do
        if [ -d $d ]; then
            for i in $(find $d -name catalog.xml);
            do
                XML_CATALOG_FILES+=" $i";
            done;
        fi;
    done
}
patchShebangs ()
{
 
    local pathName;
    local update=false;
    while [[ $# -gt 0 ]]; do
        case "$1" in 
            --host)
                pathName=HOST_PATH;
                shift
            ;;
            --build)
                pathName=PATH;
                shift
            ;;
            --update)
                update=true;
                shift
            ;;
            --)
                shift;
                break
            ;;
            -* | --*)
                echo "Unknown option $1 supplied to patchShebangs" 1>&2;
                return 1
            ;;
            *)
                break
            ;;
        esac;
    done;
    echo "patching script interpreter paths in $@";
    local f;
    local oldPath;
    local newPath;
    local arg0;
    local args;
    local oldInterpreterLine;
    local newInterpreterLine;
    if [[ $# -eq 0 ]]; then
        echo "No arguments supplied to patchShebangs" 1>&2;
        return 0;
    fi;
    local f;
    while IFS= read -r -d '' f; do
        isScript "$f" || continue;
        read -r oldInterpreterLine < "$f" || [ "$oldInterpreterLine" ];
        read -r oldPath arg0 args <<< "${oldInterpreterLine:2}";
        if [[ -z "${pathName:-}" ]]; then
            if [[ -n $strictDeps && $f == "$NIX_STORE"* ]]; then
                pathName=HOST_PATH;
            else
                pathName=PATH;
            fi;
        fi;
        if [[ "$oldPath" == *"/bin/env" ]]; then
            if [[ $arg0 == "-S" ]]; then
                arg0=${args%% *};
                [[ "$args" == *" "* ]] && args=${args#* } || args=;
                newPath="$(PATH="${!pathName}" type -P "env" || true)";
                args="-S $(PATH="${!pathName}" type -P "$arg0" || true) $args";
            else
                if [[ $arg0 == "-"* || $arg0 == *"="* ]]; then
                    echo "$f: unsupported interpreter directive \"$oldInterpreterLine\" (set dontPatchShebangs=1 and handle shebang patching yourself)" 1>&2;
                    exit 1;
                else
                    newPath="$(PATH="${!pathName}" type -P "$arg0" || true)";
                fi;
            fi;
        else
            if [[ -z $oldPath ]]; then
                oldPath="/bin/sh";
            fi;
            newPath="$(PATH="${!pathName}" type -P "$(basename "$oldPath")" || true)";
            args="$arg0 $args";
        fi;
        newInterpreterLine="$newPath $args";
        newInterpreterLine=${newInterpreterLine%${newInterpreterLine##*[![:space:]]}};
        if [[ -n "$oldPath" && ( "$update" == true || "${oldPath:0:${#NIX_STORE}}" != "$NIX_STORE" ) ]]; then
            if [[ -n "$newPath" && "$newPath" != "$oldPath" ]]; then
                echo "$f: interpreter directive changed from \"$oldInterpreterLine\" to \"$newInterpreterLine\"";
                escapedInterpreterLine=${newInterpreterLine//\\/\\\\};
                timestamp=$(stat --printf "%y" "$f");
                tmpFile=$(mktemp -t patchShebangs.XXXXXXXXXX);
                sed -e "1 s|.*|#\!$escapedInterpreterLine|" "$f" > "$tmpFile";
                local restoreReadOnly;
                if [[ ! -w "$f" ]]; then
                    chmod +w "$f";
                    restoreReadOnly=true;
                fi;
                cat "$tmpFile" > "$f";
                rm "$tmpFile";
                if [[ -n "${restoreReadOnly:-}" ]]; then
                    chmod -w "$f";
                fi;
                touch --date "$timestamp" "$f";
            fi;
        fi;
    done < <(find "$@" -type f -perm -0100 -print0)
}
addEnvHooks ()
{
 
    local depHostOffset="$1";
    shift;
    local pkgHookVarsSlice="${pkgHookVarVars[$depHostOffset + 1]}[@]";
    local pkgHookVar;
    for pkgHookVar in "${!pkgHookVarsSlice}";
    do
        eval "${pkgHookVar}s"'+=("$@")';
    done
}
appendToVar ()
{
 
    local -n nameref="$1";
    local useArray type;
    if [ -n "$__structuredAttrs" ]; then
        useArray=true;
    else
        useArray=false;
    fi;
    if type=$(declare -p "$1" 2> /dev/null); then
        case "${type#* }" in 
            -A*)
                echo "appendToVar(): ERROR: trying to use appendToVar on an associative array, use variable+=([\"X\"]=\"Y\") instead." 1>&2;
                return 1
            ;;
            -a*)
                useArray=true
            ;;
            *)
                useArray=false
            ;;
        esac;
    fi;
    shift;
    if $useArray; then
        nameref=(${nameref+"${nameref[@]}"} "$@");
    else
        nameref="${nameref-} $*";
    fi
}
prependToVar ()
{
 
    local -n nameref="$1";
    local useArray type;
    if [ -n "$__structuredAttrs" ]; then
        useArray=true;
    else
        useArray=false;
    fi;
    if type=$(declare -p "$1" 2> /dev/null); then
        case "${type#* }" in 
            -A*)
                echo "prependToVar(): ERROR: trying to use prependToVar on an associative array." 1>&2;
                return 1
            ;;
            -a*)
                useArray=true
            ;;
            *)
                useArray=false
            ;;
        esac;
    fi;
    shift;
    if $useArray; then
        nameref=("$@" ${nameref+"${nameref[@]}"});
    else
        nameref="$* ${nameref-}";
    fi
}
fixQtBuiltinPaths ()
{
 
    local dir="$1";
    local pattern="$2";
    local lib="${!outputLib}";
    if [ -d "$dir" ]; then
        find "$dir" -name "$pattern" | while read pr_; do
            if grep -q '\$\$\[QT_' "${pr_:?}"; then
                echo "fixQtBuiltinPaths: Fixing Qt builtin paths in \`${pr_:?}'...";
                sed -i "${pr_:?}" -e "s|\\\$\\\$\\[QT_HOST_BINS[^]]*\\]|$lib/bin|g" -e "s|\\\$\\\$\\[QT_HOST_LIBEXECS[^]]*\\]|$lib/libexec|g" -e "s|\\\$\\\$\\[QT_HOST_DATA[^]]*\\]/mkspecs|$lib/mkspecs|g" -e "s|\\\$\\\$\\[QT_HOST_PREFIX[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_ARCHDATA[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_BINS[^]]*\\]|$lib/bin|g" -e "s|\\\$\\\$\\[QT_INSTALL_CONFIGURATION[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_DATA[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_DOCS[^]]*\\]|$lib/share/doc|g" -e "s|\\\$\\\$\\[QT_INSTALL_EXAMPLES[^]]*\\]|$lib/examples|g" -e "s|\\\$\\\$\\[QT_INSTALL_HEADERS[^]]*\\]|$lib/include|g" -e "s|\\\$\\\$\\[QT_INSTALL_LIBS[^]]*\\]|$lib/lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_LIBEXECS[^]]*\\]|$lib/libexec|g" -e "s|\\\$\\\$\\[QT_INSTALL_PLUGINS[^]]*\\]|$lib/$qtPluginPrefix|g" -e "s|\\\$\\\$\\[QT_INSTALL_PREFIX[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_TESTS[^]]*\\]|$lib/tests|g" -e "s|\\\$\\\$\\[QT_INSTALL_TRANSLATIONS[^]]*\\]|$lib/translations|g" -e "s|\\\$\\\$\\[QT_INSTALL_QML[^]]*\\]|$lib/$qtQmlPrefix|g";
            fi;
        done;
    else
        if [ -e "$dir" ]; then
            if grep -q '\$\$\[QT_' "${dir:?}"; then
                echo "fixQtBuiltinPaths: Fixing Qt builtin paths in \`${dir:?}'...";
                sed -i "${dir:?}" -e "s|\\\$\\\$\\[QT_HOST_BINS[^]]*\\]|$lib/bin|g" -e "s|\\\$\\\$\\[QT_HOST_LIBEXECS[^]]*\\]|$lib/libexec|g" -e "s|\\\$\\\$\\[QT_HOST_DATA[^]]*\\]/mkspecs|$lib/mkspecs|g" -e "s|\\\$\\\$\\[QT_HOST_PREFIX[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_ARCHDATA[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_BINS[^]]*\\]|$lib/bin|g" -e "s|\\\$\\\$\\[QT_INSTALL_CONFIGURATION[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_DATA[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_DOCS[^]]*\\]|$lib/share/doc|g" -e "s|\\\$\\\$\\[QT_INSTALL_EXAMPLES[^]]*\\]|$lib/examples|g" -e "s|\\\$\\\$\\[QT_INSTALL_HEADERS[^]]*\\]|$lib/include|g" -e "s|\\\$\\\$\\[QT_INSTALL_LIBS[^]]*\\]|$lib/lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_LIBEXECS[^]]*\\]|$lib/libexec|g" -e "s|\\\$\\\$\\[QT_INSTALL_PLUGINS[^]]*\\]|$lib/$qtPluginPrefix|g" -e "s|\\\$\\\$\\[QT_INSTALL_PREFIX[^]]*\\]|$lib|g" -e "s|\\\$\\\$\\[QT_INSTALL_TESTS[^]]*\\]|$lib/tests|g" -e "s|\\\$\\\$\\[QT_INSTALL_TRANSLATIONS[^]]*\\]|$lib/translations|g" -e "s|\\\$\\\$\\[QT_INSTALL_QML[^]]*\\]|$lib/$qtQmlPrefix|g";
            fi;
        else
            echo "fixQtBuiltinPaths: Warning: \`$dir' does not exist";
        fi;
    fi
}
exitHandler ()
{
 
    exitCode="$?";
    set +e;
    if [ -n "${showBuildStats:-}" ]; then
        read -r -d '' -a buildTimes < <(times);
        echo "build times:";
        echo "user time for the shell             ${buildTimes[0]}";
        echo "system time for the shell           ${buildTimes[1]}";
        echo "user time for all child processes   ${buildTimes[2]}";
        echo "system time for all child processes ${buildTimes[3]}";
    fi;
    if (( "$exitCode" != 0 )); then
        runHook failureHook;
        if [ -n "${succeedOnFailure:-}" ]; then
            echo "build failed with exit code $exitCode (ignored)";
            mkdir -p "$out/nix-support";
            printf "%s" "$exitCode" > "$out/nix-support/failed";
            exit 0;
        fi;
    else
        runHook exitHook;
    fi;
    return "$exitCode"
}
genericBuild ()
{
 
    export GZIP_NO_TIMESTAMPS=1;
    if [ -f "${buildCommandPath:-}" ]; then
        source "$buildCommandPath";
        return;
    fi;
    if [ -n "${buildCommand:-}" ]; then
        eval "$buildCommand";
        return;
    fi;
    definePhases;
    for curPhase in ${phases[*]};
    do
        runPhase "$curPhase";
    done
}
postPatchMkspecs ()
{
 
    dontPatchMkspecs=1;
    local lib="${!outputLib}";
    local dev="${!outputDev}";
    moveToOutput "mkspecs/modules" "$dev";
    if [ -d "$dev/mkspecs/modules" ]; then
        fixQtModulePaths "$dev/mkspecs/modules";
    fi;
    if [ -d "$lib/mkspecs" ]; then
        fixQtBuiltinPaths "$lib/mkspecs" '*.pr?';
    fi;
    if [ -d "$lib/lib" ]; then
        fixQtBuiltinPaths "$lib/lib" '*.pr?';
    fi
}
findInputs ()
{
 
    local -r pkg="$1";
    local -r hostOffset="$2";
    local -r targetOffset="$3";
    (( hostOffset <= targetOffset )) || exit 1;
    local varVar="${pkgAccumVarVars[hostOffset + 1]}";
    local varRef="$varVar[$((targetOffset - hostOffset))]";
    local var="${!varRef}";
    unset -v varVar varRef;
    local varSlice="$var[*]";
    case " ${!varSlice-} " in 
        *" $pkg "*)
            return 0
        ;;
    esac;
    unset -v varSlice;
    eval "$var"'+=("$pkg")';
    if ! [ -e "$pkg" ]; then
        echo "build input $pkg does not exist" 1>&2;
        exit 1;
    fi;
    function mapOffset () 
    { 
        local -r inputOffset="$1";
        local -n outputOffset="$2";
        if (( inputOffset <= 0 )); then
            outputOffset=$((inputOffset + hostOffset));
        else
            outputOffset=$((inputOffset - 1 + targetOffset));
        fi
    };
    local relHostOffset;
    for relHostOffset in "${allPlatOffsets[@]}";
    do
        local files="${propagatedDepFilesVars[relHostOffset + 1]}";
        local hostOffsetNext;
        mapOffset "$relHostOffset" hostOffsetNext;
        (( -1 <= hostOffsetNext && hostOffsetNext <= 1 )) || continue;
        local relTargetOffset;
        for relTargetOffset in "${allPlatOffsets[@]}";
        do
            (( "$relHostOffset" <= "$relTargetOffset" )) || continue;
            local fileRef="${files}[$relTargetOffset - $relHostOffset]";
            local file="${!fileRef}";
            unset -v fileRef;
            local targetOffsetNext;
            mapOffset "$relTargetOffset" targetOffsetNext;
            (( -1 <= hostOffsetNext && hostOffsetNext <= 1 )) || continue;
            [[ -f "$pkg/nix-support/$file" ]] || continue;
            local pkgNext;
            read -r -d '' pkgNext < "$pkg/nix-support/$file" || true;
            for pkgNext in $pkgNext;
            do
                findInputs "$pkgNext" "$hostOffsetNext" "$targetOffsetNext";
            done;
        done;
    done
}
printWords ()
{
 
    (( "$#" > 0 )) || return 0;
    printf '%s ' "$@"
}
runOneHook ()
{
 
    local hookName="$1";
    shift;
    local hooksSlice="${hookName%Hook}Hooks[@]";
    local hook ret=1;
    for hook in "_callImplicitHook 1 $hookName" ${!hooksSlice+"${!hooksSlice}"};
    do
        _logHook "$hookName" "$hook" "$@";
        if _eval "$hook" "$@"; then
            ret=0;
            break;
        fi;
    done;
    return "$ret"
}
showPhaseHeader ()
{
 
    local phase="$1";
    echo "Running phase: $phase";
    if [[ -z ${NIX_LOG_FD-} ]]; then
        return;
    fi;
    printf "@nix { \"action\": \"setPhase\", \"phase\": \"%s\" }\n" "$phase" >&"$NIX_LOG_FD"
}
compressManPages ()
{
 
    local dir="$1";
    if [ -L "$dir"/share ] || [ -L "$dir"/share/man ] || [ ! -d "$dir/share/man" ]; then
        return;
    fi;
    echo "gzipping man pages under $dir/share/man/";
    find "$dir"/share/man/ -type f -a '!' -regex '.*\.\(bz2\|gz\|xz\)$' -print0 | xargs -0 -n1 -P "$NIX_BUILD_CORES" gzip -n -f;
    find "$dir"/share/man/ -type l -a '!' -regex '.*\.\(bz2\|gz\|xz\)$' -print0 | sort -z | while IFS= read -r -d '' f; do
        local target;
        target="$(readlink -f "$f")";
        if [ -f "$target".gz ]; then
            ln -sf "$target".gz "$f".gz && rm "$f";
        fi;
    done
}
stripDirs ()
{
 
    local cmd="$1";
    local ranlibCmd="$2";
    local paths="$3";
    local stripFlags="$4";
    local excludeFlags=();
    local pathsNew=;
    [ -z "$cmd" ] && echo "stripDirs: Strip command is empty" 1>&2 && exit 1;
    [ -z "$ranlibCmd" ] && echo "stripDirs: Ranlib command is empty" 1>&2 && exit 1;
    local pattern;
    if [ -n "${stripExclude:-}" ]; then
        for pattern in "${stripExclude[@]}";
        do
            excludeFlags+=(-a '!' '(' -name "$pattern" -o -wholename "$prefix/$pattern" ')');
        done;
    fi;
    local p;
    for p in ${paths};
    do
        if [ -e "$prefix/$p" ]; then
            pathsNew="${pathsNew} $prefix/$p";
        fi;
    done;
    paths=${pathsNew};
    if [ -n "${paths}" ]; then
        echo "stripping (with command $cmd and flags $stripFlags) in $paths";
        local striperr;
        striperr="$(mktemp --tmpdir="$TMPDIR" 'striperr.XXXXXX')";
        find $paths -type f "${excludeFlags[@]}" -a '!' -path "$prefix/lib/debug/*" -printf '%D-%i,%p\0' | sort -t, -k1,1 -u -z | cut -d, -f2- -z | xargs -r -0 -n1 -P "$NIX_BUILD_CORES" -- $cmd $stripFlags 2> "$striperr" || exit_code=$?;
        [[ "$exit_code" = 123 || -z "$exit_code" ]] || ( cat "$striperr" 1>&2 && exit 1 );
        rm "$striperr";
        find $paths -name '*.a' -type f -exec $ranlibCmd '{}' \; 2> /dev/null;
    fi
}
auditTmpdir ()
{
 
    local dir="$1";
    [ -e "$dir" ] || return 0;
    echo "checking for references to $TMPDIR/ in $dir...";
    local tmpdir elf_fifo script_fifo;
    tmpdir="$(mktemp -d)";
    elf_fifo="$tmpdir/elf";
    script_fifo="$tmpdir/script";
    mkfifo "$elf_fifo" "$script_fifo";
    ( find "$dir" -type f -not -path '*/.build-id/*' -print0 | while IFS= read -r -d '' file; do
        if isELF "$file"; then
            printf '%s\0' "$file" 1>&3;
        else
            if isScript "$file"; then
                filename=${file##*/};
                dir=${file%/*};
                if [ -e "$dir/.$filename-wrapped" ]; then
                    printf '%s\0' "$file" 1>&4;
                fi;
            fi;
        fi;
    done;
    exec 3>&- 4>&- ) 3> "$elf_fifo" 4> "$script_fifo" & ( xargs -0 -r -P "$NIX_BUILD_CORES" -n 1 sh -c '
            if { printf :; patchelf --print-rpath "$1"; } | grep -q -F ":$TMPDIR/"; then
                echo "RPATH of binary $1 contains a forbidden reference to $TMPDIR/"
                exit 1
            fi
        ' _ < "$elf_fifo" ) & local pid_elf=$!;
    local pid_script;
    ( xargs -0 -r -P "$NIX_BUILD_CORES" -n 1 sh -c '
            if grep -q -F "$TMPDIR/" "$1"; then
                echo "wrapper script $1 contains a forbidden reference to $TMPDIR/"
                exit 1
            fi
        ' _ < "$script_fifo" ) & local pid_script=$!;
    wait "$pid_elf" || { 
        echo "Some binaries contain forbidden references to $TMPDIR/. Check the error above!";
        exit 1
    };
    wait "$pid_script" || { 
        echo "Some scripts contain forbidden references to $TMPDIR/. Check the error above!";
        exit 1
    };
    rm -r "$tmpdir"
}
buildPhase ()
{
 
    runHook preBuild;
    if [[ -z "${makeFlags-}" && -z "${makefile:-}" && ! ( -e Makefile || -e makefile || -e GNUmakefile ) ]]; then
        echo "no Makefile or custom buildPhase, doing nothing";
    else
        foundMakefile=1;
        local flagsArray=(${enableParallelBuilding:+-j${NIX_BUILD_CORES}} SHELL="$SHELL");
        concatTo flagsArray makeFlags makeFlagsArray buildFlags buildFlagsArray;
        echoCmd 'build flags' "${flagsArray[@]}";
        make ${makefile:+-f $makefile} "${flagsArray[@]}";
        unset flagsArray;
    fi;
    runHook postBuild
}
unpackFile ()
{
 
    curSrc="$1";
    echo "unpacking source archive $curSrc";
    if ! runOneHook unpackCmd "$curSrc"; then
        echo "do not know how to unpack source archive $curSrc";
        exit 1;
    fi
}
substituteAllInPlace ()
{
 
    local fileName="$1";
    shift;
    substituteAll "$fileName" "$fileName" "$@"
}
getHostRole ()
{
 
    getRole "$hostOffset"
}
unpackPhase ()
{
 
    runHook preUnpack;
    if [ -z "${srcs:-}" ]; then
        if [ -z "${src:-}" ]; then
            echo 'variable $src or $srcs should point to the source';
            exit 1;
        fi;
        srcs="$src";
    fi;
    local -a srcsArray;
    concatTo srcsArray srcs;
    local dirsBefore="";
    for i in *;
    do
        if [ -d "$i" ]; then
            dirsBefore="$dirsBefore $i ";
        fi;
    done;
    for i in "${srcsArray[@]}";
    do
        unpackFile "$i";
    done;
    : "${sourceRoot=}";
    if [ -n "${setSourceRoot:-}" ]; then
        runOneHook setSourceRoot;
    else
        if [ -z "$sourceRoot" ]; then
            for i in *;
            do
                if [ -d "$i" ]; then
                    case $dirsBefore in 
                        *\ $i\ *)

                        ;;
                        *)
                            if [ -n "$sourceRoot" ]; then
                                echo "unpacker produced multiple directories";
                                exit 1;
                            fi;
                            sourceRoot="$i"
                        ;;
                    esac;
                fi;
            done;
        fi;
    fi;
    if [ -z "$sourceRoot" ]; then
        echo "unpacker appears to have produced no directories";
        exit 1;
    fi;
    echo "source root is $sourceRoot";
    if [ "${dontMakeSourcesWritable:-0}" != 1 ]; then
        chmod -R u+w -- "$sourceRoot";
    fi;
    runHook postUnpack
}
noBrokenSymlinks ()
{
 
    local -r output="${1:?}";
    local path;
    local pathParent;
    local symlinkTarget;
    local -i numDanglingSymlinks=0;
    local -i numReflexiveSymlinks=0;
    local -i numUnreadableSymlinks=0;
    if [[ ! -e $output ]]; then
        nixWarnLog "skipping non-existent output $output";
        return 0;
    fi;
    nixInfoLog "running on $output";
    while IFS= read -r -d '' path; do
        pathParent="$(dirname "$path")";
        if ! symlinkTarget="$(readlink "$path")"; then
            nixErrorLog "the symlink $path is unreadable";
            numUnreadableSymlinks+=1;
            continue;
        fi;
        if [[ $symlinkTarget == /* ]]; then
            nixInfoLog "symlink $path points to absolute target $symlinkTarget";
        else
            nixInfoLog "symlink $path points to relative target $symlinkTarget";
            symlinkTarget="$(realpath --no-symlinks --canonicalize-missing "$pathParent/$symlinkTarget")";
        fi;
        if [[ $symlinkTarget = "$TMPDIR"/* ]]; then
            nixErrorLog "the symlink $path points to $TMPDIR directory: $symlinkTarget";
            numDanglingSymlinks+=1;
            continue;
        fi;
        if [[ $symlinkTarget != "$NIX_STORE"/* ]]; then
            nixInfoLog "symlink $path points outside the Nix store; ignoring";
            continue;
        fi;
        if [[ $path == "$symlinkTarget" ]]; then
            nixErrorLog "the symlink $path is reflexive";
            numReflexiveSymlinks+=1;
        else
            if [[ ! -e $symlinkTarget ]]; then
                nixErrorLog "the symlink $path points to a missing target: $symlinkTarget";
                numDanglingSymlinks+=1;
            else
                nixDebugLog "the symlink $path is irreflexive and points to a target which exists";
            fi;
        fi;
    done < <(find "$output" -type l -print0);
    if ((numDanglingSymlinks > 0 || numReflexiveSymlinks > 0 || numUnreadableSymlinks > 0)); then
        nixErrorLog "found $numDanglingSymlinks dangling symlinks, $numReflexiveSymlinks reflexive symlinks and $numUnreadableSymlinks unreadable symlinks";
        exit 1;
    fi;
    return 0
}
substitute ()
{
 
    local input="$1";
    local output="$2";
    shift 2;
    if [ ! -f "$input" ]; then
        echo "substitute(): ERROR: file '$input' does not exist" 1>&2;
        return 1;
    fi;
    local content;
    consumeEntire content < "$input";
    if [ -e "$output" ]; then
        chmod +w "$output";
    fi;
    substituteStream content "file '$input'" "$@" > "$output"
}
getRole ()
{
 
    case $1 in 
        -1)
            role_post='_FOR_BUILD'
        ;;
        0)
            role_post=''
        ;;
        1)
            role_post='_FOR_TARGET'
        ;;
        *)
            echo "binutils-wrapper-2.46: used as improper sort of dependency" 1>&2;
            return 1
        ;;
    esac
}
nixDebugLog ()
{
 
    _nixLogWithLevel 6 "$*"
}
addToSearchPath ()
{
 
    addToSearchPathWithCustomDelimiter ":" "$@"
}
concatTo ()
{
 
    local -;
    set -o noglob;
    local -n targetref="$1";
    shift;
    local arg default name type;
    for arg in "$@";
    do
        IFS="=" read -r name default <<< "$arg";
        local -n nameref="$name";
        if [[ -z "${nameref[*]}" && -n "$default" ]]; then
            targetref+=("$default");
        else
            if type=$(declare -p "$name" 2> /dev/null); then
                case "${type#* }" in 
                    -A*)
                        echo "concatTo(): ERROR: trying to use concatTo on an associative array." 1>&2;
                        return 1
                    ;;
                    -a*)
                        targetref+=("${nameref[@]}")
                    ;;
                    *)
                        if [[ "$name" = *"Array" ]]; then
                            nixErrorLog "concatTo(): $name is not declared as array, treating as a singleton. This will become an error in future";
                            targetref+=(${nameref+"${nameref[@]}"});
                        else
                            targetref+=(${nameref-});
                        fi
                    ;;
                esac;
            fi;
        fi;
    done
}
_moveSbin ()
{
 
    if [ "${dontMoveSbin-}" = 1 ]; then
        return;
    fi;
    if [ ! -e "$prefix/sbin" -o -L "$prefix/sbin" ]; then
        return;
    fi;
    echo "moving $prefix/sbin/* to $prefix/bin";
    mkdir -p $prefix/bin;
    shopt -s dotglob;
    for i in $prefix/sbin/*;
    do
        mv "$i" $prefix/bin;
    done;
    shopt -u dotglob;
    rmdir $prefix/sbin;
    ln -s bin $prefix/sbin
}
_allFlags ()
{
 
    export system pname name version;
    while IFS='' read -r varName; do
        nixTalkativeLog "@${varName}@ -> ${!varName}";
        args+=("--subst-var" "$varName");
    done < <(awk 'BEGIN { for (v in ENVIRON) if (v ~ /^[a-z][a-zA-Z0-9_]*$/) print v }')
}
_defaultUnpack ()
{
 
    local fn="$1";
    local destination;
    if [ -d "$fn" ]; then
        destination="$(stripHash "$fn")";
        if [ -e "$destination" ]; then
            echo "Cannot copy $fn to $destination: destination already exists!";
            echo "Did you specify two \"srcs\" with the same \"name\"?";
            return 1;
        fi;
        cp -r --preserve=timestamps --reflink=auto -- "$fn" "$destination";
    else
        case "$fn" in 
            *.tar.xz | *.tar.lzma | *.txz)
                ( XZ_OPT="--threads=$NIX_BUILD_CORES" xz -d < "$fn";
                true ) | tar xf - --mode=+w --warning=no-timestamp
            ;;
            *.tar | *.tar.* | *.tgz | *.tbz2 | *.tbz)
                tar xf "$fn" --mode=+w --warning=no-timestamp
            ;;
            *)
                return 1
            ;;
        esac;
    fi
}
definePhases ()
{
 
    if [ -z "${phases[*]:-}" ]; then
        phases="${prePhases[*]:-} unpackPhase patchPhase ${preConfigurePhases[*]:-}             configurePhase ${preBuildPhases[*]:-} buildPhase checkPhase             ${preInstallPhases[*]:-} installPhase ${preFixupPhases[*]:-} fixupPhase installCheckPhase             ${preDistPhases[*]:-} distPhase ${postPhases[*]:-}";
    fi
}
_doStrip ()
{
 
    local -ra flags=(dontStripHost dontStripTarget);
    local -ra debugDirs=(stripDebugList stripDebugListTarget);
    local -ra allDirs=(stripAllList stripAllListTarget);
    local -ra stripCmds=(STRIP STRIP_FOR_TARGET);
    local -ra ranlibCmds=(RANLIB RANLIB_FOR_TARGET);
    stripDebugList=${stripDebugList[*]:-lib lib32 lib64 libexec bin sbin Applications Library/Frameworks};
    stripDebugListTarget=${stripDebugListTarget[*]:-};
    stripAllList=${stripAllList[*]:-};
    stripAllListTarget=${stripAllListTarget[*]:-};
    local i;
    for i in ${!stripCmds[@]};
    do
        local -n flag="${flags[$i]}";
        local -n debugDirList="${debugDirs[$i]}";
        local -n allDirList="${allDirs[$i]}";
        local -n stripCmd="${stripCmds[$i]}";
        local -n ranlibCmd="${ranlibCmds[$i]}";
        if [[ -n "${dontStrip-}" || -n "${flag-}" ]] || ! type -f "${stripCmd-}" 2> /dev/null 1>&2; then
            continue;
        fi;
        stripDirs "$stripCmd" "$ranlibCmd" "$debugDirList" "${stripDebugFlags[*]:--S -p}";
        stripDirs "$stripCmd" "$ranlibCmd" "$allDirList" "${stripAllFlags[*]:--s -p}";
    done
}
substituteAll ()
{
 
    local input="$1";
    local output="$2";
    local -a args=();
    _allFlags;
    substitute "$input" "$output" "${args[@]}"
}
getTargetRole ()
{
 
    getRole "$targetOffset"
}
isELF ()
{
 
    local fn="$1";
    local fd;
    local magic;
    exec {fd}< "$fn";
    LANG=C read -r -n 4 -u "$fd" magic;
    exec {fd}>&-;
    if [ "$magic" = 'ELF' ]; then
        return 0;
    else
        return 1;
    fi
}
bintoolsWrapper_addLDVars ()
{
 
    local role_post;
    getHostRoleEnvHook;
    if [[ -d "$1/lib64" && ! -L "$1/lib64" ]]; then
        export NIX_LDFLAGS${role_post}+=" -L$1/lib64";
    fi;
    if [[ -d "$1/lib" ]]; then
        local -a glob=($1/lib/lib*);
        if [ "${#glob[*]}" -gt 0 ]; then
            export NIX_LDFLAGS${role_post}+=" -L$1/lib";
        fi;
    fi
}
concatStringsSep ()
{
 
    local sep="$1";
    local name="$2";
    local type oldifs;
    if type=$(declare -p "$name" 2> /dev/null); then
        local -n nameref="$name";
        case "${type#* }" in 
            -A*)
                echo "concatStringsSep(): ERROR: trying to use concatStringsSep on an associative array." 1>&2;
                return 1
            ;;
            -a*)
                local IFS="$(printf '\036')"
            ;;
            *)
                local IFS=" "
            ;;
        esac;
        local ifs_separated="${nameref[*]}";
        echo -n "${ifs_separated//"$IFS"/"$sep"}";
    fi
}
nixInfoLog ()
{
 
    _nixLogWithLevel 3 "$*"
}
activatePackage ()
{
 
    local pkg="$1";
    local -r hostOffset="$2";
    local -r targetOffset="$3";
    (( hostOffset <= targetOffset )) || exit 1;
    if [ -f "$pkg" ]; then
        nixTalkativeLog "sourcing setup hook '$pkg'";
        source "$pkg";
    fi;
    if [[ -z "${strictDeps-}" || "$hostOffset" -le -1 ]]; then
        addToSearchPath _PATH "$pkg/bin";
    fi;
    if (( hostOffset <= -1 )); then
        addToSearchPath _XDG_DATA_DIRS "$pkg/share";
    fi;
    if [[ "$hostOffset" -eq 0 && -d "$pkg/bin" ]]; then
        addToSearchPath _HOST_PATH "$pkg/bin";
    fi;
    if [[ -f "$pkg/nix-support/setup-hook" ]]; then
        nixTalkativeLog "sourcing setup hook '$pkg/nix-support/setup-hook'";
        source "$pkg/nix-support/setup-hook";
    fi
}
_updateSourceDateEpochFromSourceRoot ()
{
 
    if [ -n "$sourceRoot" ]; then
        updateSourceDateEpoch "$sourceRoot";
    fi
}
checkPhase ()
{
 
    runHook preCheck;
    if [[ -z "${foundMakefile:-}" ]]; then
        echo "no Makefile or custom checkPhase, doing nothing";
        runHook postCheck;
        return;
    fi;
    if [[ -z "${checkTarget:-}" ]]; then
        if make -n ${makefile:+-f $makefile} check > /dev/null 2>&1; then
            checkTarget="check";
        else
            if make -n ${makefile:+-f $makefile} test > /dev/null 2>&1; then
                checkTarget="test";
            fi;
        fi;
    fi;
    if [[ -z "${checkTarget:-}" ]]; then
        echo "no check/test target in ${makefile:-Makefile}, doing nothing";
    else
        local flagsArray=(${enableParallelChecking:+-j${NIX_BUILD_CORES}} SHELL="$SHELL");
        concatTo flagsArray makeFlags makeFlagsArray checkFlags=VERBOSE=y checkFlagsArray checkTarget;
        echoCmd 'check flags' "${flagsArray[@]}";
        make ${makefile:+-f $makefile} "${flagsArray[@]}";
        unset flagsArray;
    fi;
    runHook postCheck
}
fixQtModulePaths ()
{
 
    local dir="$1";
    local lib="${!outputLib}";
    if [ -d "$dir" ]; then
        find "$dir" -name 'qt_*.pri' | while read pr; do
            if grep -q '\$\$QT_MODULE_' "${pr:?}"; then
                echo "fixQtModulePaths: Fixing module paths in \`${pr:?}'...";
                sed -i "${pr:?}" -e "s|\\\$\\\$QT_MODULE_LIB_BASE|$lib/lib|g" -e "s|\\\$\\\$QT_MODULE_HOST_LIB_BASE|$lib/lib|g" -e "s|\\\$\\\$QT_MODULE_INCLUDE_BASE|$lib/include|g" -e "s|\\\$\\\$QT_MODULE_BIN_BASE|$lib/bin|g";
            fi;
        done;
    else
        if [ -e "$dir" ]; then
            echo "fixQtModulePaths: Warning: \`$dir' is not a directory";
        else
            echo "fixQtModulePaths: Warning: \`$dir' does not exist";
        fi;
    fi
}
nixLog ()
{
 
    [[ -z ${NIX_LOG_FD-} ]] && return 0;
    local callerName="${FUNCNAME[1]}";
    if [[ $callerName == "_callImplicitHook" ]]; then
        callerName="${hookName:?}";
    fi;
    printf "%s: %s\n" "$callerName" "$*" >&"$NIX_LOG_FD"
}
distPhase ()
{
 
    runHook preDist;
    local flagsArray=();
    concatTo flagsArray distFlags distFlagsArray distTarget=dist;
    echo 'dist flags: %q' "${flagsArray[@]}";
    make ${makefile:+-f $makefile} "${flagsArray[@]}";
    if [ "${dontCopyDist:-0}" != 1 ]; then
        mkdir -p "$out/tarballs";
        cp -pvd ${tarballs[*]:-*.tar.gz} "$out/tarballs";
    fi;
    runHook postDist
}
getTargetRoleEnvHook ()
{
 
    getRole "$depTargetOffset"
}
nixTalkativeLog ()
{
 
    _nixLogWithLevel 4 "$*"
}
configurePhase ()
{
 
    runHook preConfigure;
    : "${configureScript=}";
    if [[ -z "$configureScript" && -x ./configure ]]; then
        configureScript=./configure;
    fi;
    if [ -z "${dontFixLibtool:-}" ]; then
        export lt_cv_deplibs_check_method="${lt_cv_deplibs_check_method-pass_all}";
        local i;
        find . -iname "ltmain.sh" -print0 | while IFS='' read -r -d '' i; do
            echo "fixing libtool script $i";
            fixLibtool "$i";
        done;
        CONFIGURE_MTIME_REFERENCE=$(mktemp configure.mtime.reference.XXXXXX);
        find . -executable -type f -name configure -exec grep -l 'GNU Libtool is free software; you can redistribute it and/or modify' {} \; -exec touch -r {} "$CONFIGURE_MTIME_REFERENCE" \; -exec sed -i s_/usr/bin/file_file_g {} \; -exec touch -r "$CONFIGURE_MTIME_REFERENCE" {} \;;
        rm -f "$CONFIGURE_MTIME_REFERENCE";
    fi;
    if [[ -z "${dontAddPrefix:-}" && -n "$prefix" ]]; then
        local -r prefixKeyOrDefault="${prefixKey:---prefix=}";
        if [ "${prefixKeyOrDefault: -1}" = " " ]; then
            prependToVar configureFlags "$prefix";
            prependToVar configureFlags "${prefixKeyOrDefault::-1}";
        else
            prependToVar configureFlags "$prefixKeyOrDefault$prefix";
        fi;
    fi;
    if [[ -f "$configureScript" ]]; then
        if [ -z "${dontAddDisableDepTrack:-}" ]; then
            if grep -q dependency-tracking "$configureScript"; then
                prependToVar configureFlags --disable-dependency-tracking;
            fi;
        fi;
        if [ -z "${dontDisableStatic:-}" ]; then
            if grep -q enable-static "$configureScript"; then
                prependToVar configureFlags --disable-static;
            fi;
        fi;
        if [ -z "${dontPatchShebangsInConfigure:-}" ]; then
            patchShebangs --build "$configureScript";
        fi;
    fi;
    if [ -n "$configureScript" ]; then
        local -a flagsArray;
        concatTo flagsArray configureFlags configureFlagsArray;
        echoCmd 'configure flags' "${flagsArray[@]}";
        $configureScript "${flagsArray[@]}";
        unset flagsArray;
    else
        echo "no configure script, doing nothing";
    fi;
    runHook postConfigure
}
noBrokenSymlinksInAllOutputs ()
{
 
    if [[ -z ${dontCheckForBrokenSymlinks-} ]]; then
        for output in $(getAllOutputNames);
        do
            noBrokenSymlinks "${!output}";
        done;
    fi
}
printPhases ()
{
 
    definePhases;
    local phase;
    for phase in ${phases[*]};
    do
        printf '%s\n' "$phase";
    done
}
showPhaseFooter ()
{
 
    local phase="$1";
    local startTime="$2";
    local endTime="$3";
    local delta=$(( endTime - startTime ));
    (( delta < 30 )) && return;
    local H=$((delta/3600));
    local M=$((delta%3600/60));
    local S=$((delta%60));
    echo -n "$phase completed in ";
    (( H > 0 )) && echo -n "$H hours ";
    (( M > 0 )) && echo -n "$M minutes ";
    echo "$S seconds"
}
PATH="$PATH${nix_saved_PATH:+:$nix_saved_PATH}"
XDG_DATA_DIRS="$XDG_DATA_DIRS${nix_saved_XDG_DATA_DIRS:+:$nix_saved_XDG_DATA_DIRS}"

eval "${shellHook:-}"
shopt -s expand_aliases

exec /tmp/devenv-envD3WKBa/script 