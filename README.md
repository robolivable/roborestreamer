### robostreamer

This is a wrapper around the datarhei-restreamer:vaapi-latest (pinned to 2.12.0 as of writing this) to enable support for modern Intel cards.

### Motivation

Fix ffmpeg 6 compatiblity with latest VAAPI drivers leading to Input/Output errors:

```
2026-07-03T04:59:45.000Z [AVHWDeviceContext] [error] libva: /usr/lib/x86_64-linux-gnu/dri/iHD_drv_video.so init failed
2026-07-03T04:59:45.000Z [AVHWDeviceContext] [error] libva: /usr/lib/x86_64-linux-gnu/dri/i965_drv_video.so init failed
2026-07-03T04:59:45.000Z [AVHWDeviceContext] [error] Failed to initialise VAAPI connection: -1 (unknown libva error).
2026-07-03T04:59:45.000Z [error] Device creation failed: -5.
2026-07-03T04:59:45.000Z [error] Failed to set value '/dev/dri/renderD128' for option 'vaapi_device': Input/output error
2026-07-03T04:59:45.000Z [fatal] Error parsing global options: Input/output error
```
