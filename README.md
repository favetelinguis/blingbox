# blingbox
Experimenting with distrobox based dev environment

## TODO
  * Make is possible to switch back to default in project switcher or add shortcut for that
  * Add verb to broot to open file in existing helix pane or create one. Like https://quantonganh.com/2023/08/02/open-same-file-in-already-running-helix.md
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
  2. `init-blingbox`
wezterm should now be avaliable from your host launcher.

## Notable features
  * This project relies on fully running with distrobox, WezTerm has been setup using ExecDomain so that once inside a docker container in WezTerm opening new splits will retain that context. There is also a project finder that open projects in new Workspaces where each project can specify the distrobox context it should use. Projects should be placed in ~/projects and have a special file .wezp:<distrobox to use as context>.
  * Tight integration with Broot and panes, you can open files from broot and have then open in the existing Helix instance.
  * Toggle fg/bg using Ctrl-z

## Places I have used to create this, far from all are included, I have taken inspiration from so many sources.
https://quantonganh.com/
https://github.com/quantonganh/helix-wezterm
https://www.railsdev.dev/blog/wezterm-workspace-switcher-api
https://schulz.dk/2022/01/26/using-ctrl-z-to-toggle-process-in-fg-bg/

Comming from an Emacs world I really like the ideas in in the following:
https://karthinks.com/software/fifteen-ways-to-use-embark/
It shows how tools such as Embark will turn the usual workflow around and I find that Broot brings this wokflow to the terminal that is why im focusing on building around broot. Also terminals such as kakune and helix are more inline with the select act in the form of wd instead of dw.
