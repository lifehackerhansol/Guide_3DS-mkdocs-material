# 3ds.hacks.guide

A complete guide to 3DS (and 2DS) custom firmware, from stock to boot9strap.

https://3ds.hacks.guide/

## Running the site locally

This requires the following installed on your system:
- Docker

To test the website locally, simply run the following commands:

```sh
docker compose up --build -d
```

The website should now be running on http://127.0.0.1:8080/.

To shut down the test server, run the following command:

```sh
docker compose down
```

Note that this does not auto-rebuild the site upon changes. You must shut down and start manually.
