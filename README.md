# my mpv recommendations

My recommendations for configuring [mpv media player](https://mpv.io/), set via an interactive bash script.

My script and recommendations are crafted for linux desktops running wayland (i.e. recent versions of GNOME or KDE). HDR and VRR support depend upon your hardware and desktop environment support.

## recommendations

If you have low specs (i.e. a single-board computer or old laptop), set `profile=fast`. If you have high specs, set `profile=high-quality`. If you have mid specs, set neither.[^profile][^profile2]

If you want HDR output, and have mesa >=25.1, set `gpu-next`, `target-colorspace-hint`, `gpu-api=vulkan`, and `gpu-context=waylandvk`. Otherwise, set `vo=dmabuf-wayland`.[^hdrchoice]

If you don't need HDR output, still set `vo=gpu-next`. gpu-next is the in-dev update of the default driver: it's higher quality and faster; it may contain bugs, but I haven't noticed any.[^vo][^gpunext]

If you want VRR support, set `drm-vrr-enabled=auto`.[^vrr]

Set `hwdec=auto-safe` in most cases. Using hardware decoding should be most efficient, but can cause errors.[^hwdec]

Set `autofit-larger=75%x75%`. This sets the window size for high resolution videos to a manageable size.[^autofit]

Set `fs=yes` for default to fullscreen.[^fs]

[^profile]: https://github.com/mpv-player/mpv/blob/master/etc/builtin.conf
[^profile2]: https://github.com/mpv-player/mpv/issues/13257#issuecomment-1885576168
[^hdrchoice]: https://github.com/mpv-player/mpv/discussions/16105#discussioncomment-12619072
[^vo]: https://mpv.io/manual/stable/#video-output-drivers
[^gpunext]: https://github.com/mpv-player/mpv/wiki/GPU-Next-vs-GPU
[^vrr]: https://mpv.io/manual/stable/#video-output-drivers-drm-vrr-enabled
[^hwdec]: https://mpv.io/manual/stable/#options-hwdec
[^autofit]: https://mpv.io/manual/stable/#options-autofit
[^fs]: https://mpv.io/manual/stable/#options-fullscreen
