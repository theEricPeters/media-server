# media-server
---
this is my personal media server stack, using jellyfin, sonarr, radarr, jellyseerr, and aria2-pro for video, and navidrome + slskd for music.

if you decide to use this, there are a couple things that you need to do before it'll all be functional:

1. I've provided `template.env` with blank entries for each required environment variable in both directories. Copy them into `.env` files, and fill out the variables inside.
2. inside `${BASE_MEDIA_DIR}/media`, you should ideally have separate directories for each library. for example, mine:

``` text
/mnt/mediastorage/plex/data/media/
├── anime
├── concerts
├── movies
├── music
├── tv
└── vaporwave
```

