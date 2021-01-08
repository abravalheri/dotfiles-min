# dotfiles
Lightweight configuration files for servers.
This repository helps to setup and maintain machines where I occasionally log in
as a user, and therefore don't need exhaustive tooling and configuration files.
Instead a small subset is used.

For a more comprehensive set of dotfiles see https://github.com/abravalheri/dotfiles

## *dotfiles*?
You can find some information about what are *dotfiles* in
[Github's dedicated page](https://dotfiles.github.io/)


## Quickstart

You are going to need `git`, `stow` (and possibly `zsh`, `tmux` and `vim`) installed in
the machine. Then you can clone this repo to `~/.dotfiles` and stow its folders:

```bash
cd ~
mkdir -p .config
git clone --recursive https://github.com/abravalheri/dotfiles-min .dotfiles
cd .dotfiles
stow <FOLDER NAME>
```

To stow all the folders, the following command can be used:
```bash
stow -R $(ls -d *)
```

If you want to also swap the default shell to ZSH, please do:
```bash
chsh -s /bin/zsh "$(id -un)"
```
