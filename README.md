My recommendations for configuring mpv media player, set via an interactive script.

If you have low specs, set `profile=fast`. If you have high specs, set `profile=high-quality`. If you have mid specs, set neither.

If you want HDR output, set `vo=dmabuf-wayland`. Otherwise, set `vo=gpu-next`. gpu-next is the in dev update of the default driver: it's higher quality and faster; it may contain bugs, but I haven't noticed any.

If you want VRR support, set `drm-vrr-enabled=auto`.

Set `hwdec=auto-safe` in most cases. Using hw decoding should be most efficient, but can cause errors. 

Set `autofit-larger=75%x75%`. This sets the window size for high resolution videos to a manageable size.

Set `fs=yes` for default to fullscreen.
