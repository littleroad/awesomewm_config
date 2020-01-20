#!/usr/bin/env bash

function run {
  if ! pgrep -f $1; then
    $@ &
  fi
}

run "xcompmgr -CcfF"
run "light-locker"
run "fcitx5"
run "xrandr --output HDMI1 --auto --output DP1 --auto --right-of HDMI1"
run "telegram-desktop"
run "sakura"
run "chromium"
