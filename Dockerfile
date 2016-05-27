FROM adnrv/texlive
MAINTAINER adin

# Install 
# inkscape (needed for images)
# git
# gnuplot (for pgfplots advance settings)
RUN apt-get update && apt-get install -y \
inkscape \
git \
gnuplot

# Update all texlive
RUN tlmgr update --all