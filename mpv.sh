#!/usr/bin/env bash

set -euo pipefail

echo 'submit y or n to select your yes/no answer'
echo 'default option is capitalized'

read -rp 'flatpak version of mpv? [y/N]: ' flatpak
if [[ "$flatpak" == [Yy]* ]]
then
  dest=~/.var/app/io.mpv.Mpv/config/mpv/mpv.conf
  mkdir -p ~/.var/app/io.mpv.Mpv/config/mpv/
else
  dest=~/.config/mpv/mpv.conf
  mkdir -p ~/.config/mpv/
fi

read -rp 'low spec device? [y/N]: ' lowspec
if [[ "$lowspec" == [Yy]* ]]
then
  profile='profile=fast'
else
  read -rp 'high spec device? [y/N]: ' hispec
  if [[ "$hispec" == [Yy]* ]]
  then
    profile='profile=high-quality'
  fi
fi

read -rp 'use hw decoding? (most efficient, may rarely cause issues) [Y/n]: ' hwdec
hwdec=${hwdec:-y}
if [[ "$hwdec" == [Yy]* ]]
then
  hwdec='hwdec=auto-safe'
fi

read -rp 'enable vrr? [y/N]: ' vrr
if [[ "$vrr" == [Yy]* ]]
then
  vrr='drm-vrr-enabled=auto'
fi

read -rp 'enable hdr? [y/N]: ' hdr
if [[ "$hdr" == [Yy]* ]]
then
  read -rp 'is your mesa version >=25.1? [y/N]: ' mesa
  if [[ "$mesa" == [Yy]* ]]
  then
    vo='gpu-next
target-colorspace-hint
gpu-api=vulkan
gpu-context=waylandvk'
  else
    vo='dmabuf-wayland'
  fi
else
  vo='gpu-next'
fi

echo "${profile:+$profile}
vo=$vo
${vrr:+$vrr}
${hwdec:+$hwdec}
autofit-larger=75%x75%
autofit-smaller=20%x20%
fs=yes" > "$dest"
