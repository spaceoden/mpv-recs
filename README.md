My recommendations for configuring mpv media player, set via an interactive script.

If you have good specs, set `profile=high-quality`.

If you want HDR output, set `vo=dmabuf-wayland`. Otherwise, set `vo=gpu-next` (in dev update of default driver: higher quality and faster; may contain bugs, but I haven't noticed any).

If you want VRR support, set `drm-vrr-enabled=auto`.

Set `hwdec=auto-safe` unless you have excellent specs (using hw decoding is most efficient, but can cause graghical errors, so powerful rigs may prefer to skip it). 

Set `autofit-larger=75%x75%` (sets the window size for high resolution videos to a manageable size).

Set `fs=yes` for default to fullscreen.
