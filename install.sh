#!/bin/sh

set -e

gh_repo="adapta-kde"
gh_desc="Adapta KDE"

cat <<- EOF



      aaa          dd                         tt
    aa   aa     ddddd     aaaaa   ppppp     ttttttt     aaaaa
    aaaaaaa   dd   dd   aa   aa   pp   pp     tt      aa   aa
    aa   aa   dd   dd   aa   aa   pp   pp     tt      aa   aa
    aa   aa     ddddd     aaaaa   ppppp         ttt     aaaaa
                                  pp
    kk   kk   ddddd     eeeeeee   pp
    kk kk     dd   dd   ee
    kkk       dd   dd   eeeee
    kk kk     dd   dd   ee
    kk   kk   ddddd     eeeeeee



  $gh_desc
  https://github.com/PapirusDevelopmentTeam/$gh_repo


EOF

PREFIX=${PREFIX:=/usr}
uninstall=${uninstall:-false}

_msg() {
    echo "=>" "$@" >&2
}

_rm() {
    # removes parent directories if empty
    sudo rm -rf "$1"
    sudo rmdir -p "$(dirname "$1")" 2>/dev/null || true
}

_download() {
    _msg "Getting the latest version from GitHub ..."
    wget -O "$temp_file" \
        "https://github.com/PapirusDevelopmentTeam/$gh_repo/archive/master.tar.gz"
    _msg "Unpacking archive ..."
    tar -xzf "$temp_file" -C "$temp_dir"
}

_uninstall() {
    _msg "Deleting $gh_desc ..."
    _rm "$PREFIX/share/aurorae/themes/Adapta"
    _rm "$PREFIX/share/color-schemes/Adapta.colors"
    _rm "$PREFIX/share/color-schemes/AdaptaNokto.colors"
    _rm "$PREFIX/share/konsole/Adapta.colorscheme"
    _rm "$PREFIX/share/konsole/AdaptaNokto.colorscheme"
    _rm "$PREFIX/share/Kvantum/Adapta"
    _rm "$PREFIX/share/Kvantum/AdaptaNokto"
    _rm "$PREFIX/share/plasma/desktoptheme/Adapta"
    _rm "$PREFIX/share/plasma/look-and-feel/com.github.varlesh.adapta"
    _rm "$PREFIX/share/wallpapers/Adapta"
    _rm "$PREFIX/share/yakuake/skins/adapta"
    _rm "$PREFIX/share/yakuake/skins/adapta-nokto"
}

_install() {
    _msg "Installing ..."
    sudo cp -R \
        "$temp_dir/$gh_repo-master/aurorae" \
        "$temp_dir/$gh_repo-master/color-schemes" \
        "$temp_dir/$gh_repo-master/konsole" \
        "$temp_dir/$gh_repo-master/Kvantum" \
        "$temp_dir/$gh_repo-master/plasma" \
        "$temp_dir/$gh_repo-master/wallpapers" \
        "$temp_dir/$gh_repo-master/yakuake" \
        "$PREFIX/share"
}

_cleanup() {
    _msg "Clearing cache ..."
    rm -rf "$temp_file" "$temp_dir" \
        ~/.cache/plasma-svgelements-Adapta* \
        ~/.cache/plasma_theme_Adapta*.kcache
    _msg "Done!"
}

trap _cleanup EXIT HUP INT TERM

temp_file="$(mktemp -u)"
temp_dir="$(mktemp -d)"

if [ "$uninstall" = "false" ]; then
    _download
    _uninstall
    _install
else
    _uninstall
fi
