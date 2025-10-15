FROM ghcr.io/inti-cmnb/kicad9_auto_full:latest
LABEL AUTHOR Joel Schulz-Andres <joel@systemscape.de>
LABEL Description="Docker image with Kicad, KiBot, Pandoc and LaTeX to be used with continuous integration services for electronics projects"

# LaTeX and Pandoc
RUN apt-get -q update && \
    apt-get -y install git zip pandoc texlive-latex-base texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra texlive-xetex && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* /*.deb

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /mnt

ENTRYPOINT [ "/entrypoint.sh" ]
