# docker-kicad-pandoc

Docker image with Kicad, KiBot, Pandoc and LaTeX to be used with continuous integration services for electronics projects.

## Usage

```bash
# Kicad 9
docker run --rm --volume="$PWD:/mnt:z" -it ghcr.io/systemscape/kicad9_and_pandoc:latest
# Run Kibot...
```

## Manually build docker images

Prerequisites: Setup [docker authentication for ghcr.io](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry)!

```bash
# kicad9_and_pandoc
docker build -t ghcr.io/systemscape/kicad9_and_pandoc:latest .
docker push ghcr.io/systemscape/kicad9_and_pandoc:latest
```
