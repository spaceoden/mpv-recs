# my mpv recommendations

My recommendations for configuring [mpv media player](https://mpv.io/).

By and large I recommend non-default settings that "just work", providing an optimal experience without the need for manually enablement and fine-tuning.

## recommendations

If you have low specs, set `profile=fast`. If you have high specs, set `profile=high-quality`. If you have mid specs, set neither.[^profile][^profile2]

`vo=gpu-next` is the in-dev update of the default driver: it's higher quality, faster, and has new features (such as HDR support enabled); it may contain bugs, but I haven't noticed any.[^vo][^gpunext]

`deinterlace=auto` enables deinterlacing when interlaced video is detected.[^deinterlace]

`drm-vrr-enabled=auto` enables VRR support when your system reports availablity.[^vrr]

`hwdec=auto` enables well supported hardware decoding drivers. Hardware decoding should be most efficient, but can cause errors.[^hwdec]

`autofit-larger=75%x75%` sets the window size for high resolution videos to a manageable size.[^autofit]

`autofit-smaller=33%x33%` sets the window size for low resolution videos to a manageable size.[^autofit]

`fs=yes` opens files in fullscreen by default.[^fs]

[^profile]: https://github.com/mpv-player/mpv/blob/master/etc/builtin.conf
[^profile2]: https://github.com/mpv-player/mpv/issues/13257#issuecomment-1885576168
[^vo]: https://mpv.io/manual/stable/#video-output-drivers
[^gpunext]: https://github.com/mpv-player/mpv/wiki/GPU-Next-vs-GPU
[^deinterlace]: https://mpv.io/manual/stable/#options-deinterlace
[^vrr]: https://mpv.io/manual/stable/#video-output-drivers-drm-vrr-enabled
[^hwdec]: https://mpv.io/manual/stable/#options-hwdec
[^autofit]: https://mpv.io/manual/stable/#options-autofit
[^fs]: https://mpv.io/manual/stable/#options-fullscreen
