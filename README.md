# blingbox
Experimenting with distrobox based dev environment

## Prereq
I use the following tools
* Podman
* Distrobox
* Bash (TODO make project agnostic to host shell and just use bash inside)

## Install
Clone the repository to your $HOME, this repo will act as your new $HOME while in blingbox.
`git clone --depth 1 https://github.com/favetelinguis/blingbox.git ~/`

Check `~/blingbox/projects/blingbox/Justfile` you need to run `create-blingbox` and then `wezterm` you should now have a working blingbox!
