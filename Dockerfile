FROM debian:9.8

RUN apt-get update ; \
apt-get -y install mc htop git autoconf libtool automake build-essential gettext cmake python libtool-bin wget ; \
echo '#!/bin/bash' > mono-dev-env; \
echo 'MONO_PREFIX=/opt/mono' >> mono-dev-env; \
echo 'export DYLD_FALLBACK_LIBRARY_PATH=$MONO_PREFIX/lib:$DYLD_LIBRARY_FALLBACK_PATH' >> mono-dev-env; \
echo 'export LD_LIBRARY_PATH=$MONO_PREFIX/lib:$LD_LIBRARY_PATH' >> mono-dev-env; \
echo 'export C_INCLUDE_PATH=$MONO_PREFIX/include' >> mono-dev-env; \
echo 'export ACLOCAL_PATH=$MONO_PREFIX/share/aclocal' >> mono-dev-env; \
echo 'export PKG_CONFIG_PATH=$MONO_PREFIX/lib/pkgconfig' >> mono-dev-env; \
echo 'export PATH=$MONO_PREFIX/bin:$PATH' >> mono-dev-env
