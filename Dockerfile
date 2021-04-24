FROM amazonlinux:2

RUN yum update -y

RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -

RUN yum install -y nodejs git which python-devel python-pip gcc procps

# install puppeteer dependencies
RUN yum install -y \
  libX11 \
  libXcomposite \
  libXcursor \
  libXdamage \
  libXext \
  libXi \
  libXtst \
  libXScrnSaver \
  libXrandr \
  cups-libs \
  alsa-lib \
  pango \
  atk \
  at-spi2-atk \
  gtk3

RUN npm install --global yarn