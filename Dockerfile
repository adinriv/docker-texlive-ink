FROM adnrv/texlive
MAINTAINER adin

# Install 
# inkscape (needed for images)
# git
# gnuplot (for pgfplots advance settings)
RUN apt-get update -qq &&\
    apt-get install -y \
      inkscape \
      git \
      gnuplot \
    &&\

    apt-get autoclean autoremove &&\
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*
