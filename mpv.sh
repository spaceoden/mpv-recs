#!/usr/bin/env bash
echo 'type y or n to select your yes/no answer'
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
  hwdec='hwdec=auto-safe'
else
  profile='profile=high-quality'
  read -rp 'use hw decoding? (efficient, may sligthly reduce quality) [Y/n]: ' hwdec
  hwdec=${hwdec:-y}
  if [[ "$hwdec" == [Yy]* ]]
  then
    hwdec='hwdec=auto-safe'
  fi
fi
read -rp 'enable vrr? [y/N]: ' vrr
if [[ "$vrr" == [Yy]* ]]
then
  vrr='drm-vrr-enabled=auto'
fi
read -rp 'enable hdr? [y/N]: ' hdr
if [[ "$hdr" == [Yy]* ]]
then
  vo='dmabuf-wayland'
else
  vo='gpu-next'
fi
echo "${profile:+$profile}
vo=$vo
${vrr:+$vrr}
${hwdec:+$hwdec}
autofit-larger=75%x75%
fs=yes" > "$dest"
