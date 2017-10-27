FROM adnrv/texlive
MAINTAINER adin

# Install 
RUN apt-get update -qq &&\
    apt-get install --no-install-recommends -y \
      # inkscape (needed for images)
      inkscape \
      # Git and CA certificates
      git \
      ca-certificates \
      # gnuplot (for pgfplots advance settings)
      gnuplot \
      # easy way to unzip (also one can tar)
      unzip \
    &&\

    apt-get autoclean autoremove &&\
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*
