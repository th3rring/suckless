# dwm
hazel's dwm "fork", with some patches and a void package.

## patchlist
- [actualfullscreen](https://dwm.suckless.org/patches/actualfullscreen/)
- [dwmc](https://dwm.suckless.org/patches/dwmc/)
- [notitle](https://dwm.suckless.org/patches/notitle/)
- [pertag](https://dwm.suckless.org/patches/pertag/)
- [ru-fibonacci](https://dwm.suckless.org/patches/ru_gaps/)
- [ru-gaps](https://dwm.suckless.org/patches/ru_gaps/)
- [status2d](https://dwm.suckless.org/patches/status2d/)
- [statuspadding](https://dwm.suckless.org/patches/statuspadding/)
- [warp](https://dwm.suckless.org/patches/warp/)
- [xrdb](https://dwm.suckless.org/patches/xrdb/)
- other stuff I added manually:
  - xrdb and ru-gaps support for dwmc
  - `dwmc restart`, which reloads sxhkd and xrdb
  - `dwmc eviscerateclient`, which is the `SIGKILL` to `killclient`'s `SIGTERM`
  - autostart from `~/.config/dwm/autostart{_blocking}`

## installation (on void)
```sh
git clone https://git.qtp2t.club/hazel/dwm.git
cd dwm
mkdir <your void-packages>/srcpkgs/hazel-dwm
cp packages/template <your void-packages>/srcpkgs/hazel-dwm/template
cd <your void-packages>
./xbps-src pkg -f hazel-dwm
xi -f hazel-dwm
```

note that compiling `git` can take a while, so it's advisable to:
```sh
cd <your void-packages>
./xbps-src chroot
xbps-install -S git
```
