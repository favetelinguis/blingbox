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

Check `~/blingbox/projects/blingbox/Justfile` and run the following commands:
  1. `create-blingbox`
  2. `wezterm`
  3. `init-blingbox`

## Notable features
  * This project relies on fully running with distrobox, WezTerm has been setup using ExecDomain so that once inside a docker container in WezTerm opening new splits will retain that context. There is also a project finder that open projects in new Workspaces where each project can specify the distrobox context it should use. Projects should be placed in ~/projects and have a special file .wezp:<distrobox to use as context>.
  * Tight integration with Broot and panes, you can open files from broot and have then open in the existing Helix instance.

## Places I have used to create this, far from all are included, I have taken inspiration from so many sources.
https://github.com/quantonganh/helix-wezterm
