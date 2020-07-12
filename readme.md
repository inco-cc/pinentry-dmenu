# dmenu / GnuPG Integration

This is a <10 SLOC shell script that integrates [suckless](https://suckless.org/)' [dmenu](https://tools.suckless.org/dmenu/) program with [GnuPG](https://gnupg.org/) as an alternative pinentry program.

# Installation

## Manual

To install this, do a `git clone https://github.com/drincoxyz/pinentry-dmenu`, configure `config.mk` for your system and run `sudo make install`. Similarly, to uninstall run `sudo make uninstall`.

## Arch User Repository (AUR)

There's also an [AUR](https://aur.archlinux.org/) package available, which is recommended for Arch users. To install it, do a `git clone https://aur.archlinux.org/pinentry-dmenu-inco.git` and run `makepkg -si`, or use an AUR wrapper like [yay](https://aur.archlinux.org/packages/yay/) and simply run `yay -S pinentry-dmenu-inco` as a non-root user.

Note that the [pinentry-dmenu](https://aur.archlinux.org/packages/pinentry-dmenu) AUR package is **not** related to this project. That's another alternative that does more or less the same thing, but it builds its own dmenu binary with the [password](https://tools.suckless.org/dmenu/patches/password/) patch applied automatically. This project is much simpler, as it uses the first dmenu binary it finds on the system.

# Usage

Firstly, you will need a dmenu build with the [password](https://tools.suckless.org/dmenu/patches/password/) patch applied, otherwise dmenu will not show up when used as the pinentry program.

Then, to use dmenu as the pinentry program for GnuPG, configure `~/.gnupg/gpg-agent.conf` to use the full path of the `pinentry-dmenu` script:

```
pinentry-program /usr/bin/pinentry-dmenu
```

The full path will depend on the `PREFIX` used in `config.mk`. The above example would apply to users who installed the AUR package, but by installing it with `make` with the default `PREFIX` installs it to `/usr/local/bin/pinentry-dmenu`.
