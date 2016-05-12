FROM adnrv/texlive
MAINTAINER adin

# Install inkscape (needed for images)
RUN apt-get install inkscape

# Update all texlive
RUN tlmgr update --all