FROM ubuntu:24.04
LABEL AUTHOR Joel Schulz-Andres <joel@systemscape.de>
LABEL Description="Docker image with KiCad 10, KiBot, Pandoc and LaTeX to be used with continuous integration services for electronics projects"

# KiCad 10, KiBot, LaTeX and Pandoc
RUN apt-get -q update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common && \
    add-apt-repository --yes ppa:kicad/kicad-10.0-releases && \
    apt-get -q update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install git kicad python3-pip zip pandoc texlive-latex-base texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra texlive-xetex && \
    python3 -m pip install --break-system-packages --no-cache-dir kibot && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* /*.deb

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /mnt

ENTRYPOINT [ "/entrypoint.sh" ]
