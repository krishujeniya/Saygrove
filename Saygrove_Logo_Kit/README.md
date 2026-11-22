# Saygrove — Icon-Only Logo Kit

The logo features the S-shaped conversation symbol, three white dots, and orange accents. The brand name and outer square border have been removed.

## Contents

- `transparent/`: transparent-background PNGs at 16–2048 px
- `app_icons/`: flat dark and white app-icon backgrounds, 192, 512, 1024 px (no border)
- `android/mipmap-*`: launcher icons at standard Android densities
- `android/ic_launcher_foreground.png`: 432px transparent adaptive-icon foreground with added safe space
- `ios/AppIcon-1024.png`: opaque 1024px icon for app submission
- `web/`: favicon.ico, PNG favicon, normal and maskable PWA icons, example web manifest
- `social/profile-1080.png`: square profile image for social accounts

## Important

No wordmark or outer border is included. Android and iOS icon backgrounds are flat solid colors; platform launchers may apply their own rounded masks. These are raster exports rather than vector source files.

On Android 8+, use the adaptive foreground with the app's dark background color #0D0825. For Flutter, update app icon configuration and rebuild. For iOS, generate the required asset catalog via your icon workflow. For web, update the favicon and PWA manifest.
