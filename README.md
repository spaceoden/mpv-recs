My recommendations for configuring mpv media player, set via an interactive script.

If you have low specs, set `profile=fast`. If you have high specs, set `profile=high-quality`. If you have mid specs, set neither.[^profile]

If you want HDR output, set `vo=dmabuf-wayland`. Otherwise, set `vo=gpu-next`. gpu-next is the in dev update of the default driver: it's higher quality and faster; it may contain bugs, but I haven't noticed any.[^vo][^gpunext]

If you want VRR support, set `drm-vrr-enabled=auto`.[^vrr]

Set `hwdec=auto-safe` in most cases. Using hw decoding should be most efficient, but can cause errors.[^hwdec]

Set `autofit-larger=75%x75%`. This sets the window size for high resolution videos to a manageable size.[^autofit]

Set `fs=yes` for default to fullscreen.[^fs]

[^profile]: https://github.com/mpv-player/mpv/blob/master/etc/builtin.conf
[^vo]: https://mpv.io/manual/stable/#video-output-drivers
[^gpunext]: https://github.com/mpv-player/mpv/wiki/GPU-Next-vs-GPU
[^vrr]: https://mpv.io/manual/stable/#video-output-drivers-drm-vrr-enabled
[^hwdec]: https://mpv.io/manual/stable/#options-hwdec
[^autofit]: https://mpv.io/manual/stable/#options-autofit
[^fs]: https://mpv.io/manual/stable/#options-fullscreen
