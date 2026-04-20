# docker-kicad-pandoc

Docker image with KiCad 10, KiBot, Pandoc and LaTeX to be used with continuous integration services for electronics projects.

## Usage

```bash
# KiCad 10
docker run --rm --volume="$PWD:/mnt:z" -it ghcr.io/systemscape/kicad10_and_pandoc:latest
# Run Kibot...
```

## Manually build docker images

Prerequisites: Setup [docker authentication for ghcr.io](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry)!

```bash
# kicad10_and_pandoc
docker build -t ghcr.io/systemscape/kicad10_and_pandoc:latest .
docker push ghcr.io/systemscape/kicad10_and_pandoc:latest
```

## Notes

- The image is now based on `ubuntu:24.04` and installs KiCad from the official KiCad PPA: `ppa:kicad/kicad-10.0-releases`.
- `kibot` is installed via PyPI in this repo's Docker layer to keep the previous tool bundle intact.
