FROM adnrv/texlive
MAINTAINER adin

# Install inkscape (needed for images)
RUN apt-get update && apt-get install -y inkscape

# Update all texlive
RUN tlmgr update --all