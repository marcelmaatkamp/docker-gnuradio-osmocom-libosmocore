FROM marcelmaatkamp/gnuradio:3.7.1

MAINTAINER m.maatkamp@gmail.com version: 0.1

RUN  apt-get install -y libpcsclite-dev

# ---
# libosmocom

COPY COPYING /gnuradio/libosmocore/
COPY Dockerfile /gnuradio/libosmocore/
COPY Doxyfile.codec.in /gnuradio/libosmocore/
COPY Doxyfile.core.in /gnuradio/libosmocore/
COPY Doxyfile.gsm.in /gnuradio/libosmocore/
COPY Doxyfile.vty.in /gnuradio/libosmocore/
COPY Makefile.am /gnuradio/libosmocore/
COPY TODO-RELEASE /gnuradio/libosmocore/
COPY configure.ac /gnuradio/libosmocore/
COPY debian /gnuradio/libosmocore/debian
COPY doc /gnuradio/libosmocore/doc
COPY generate.sh /gnuradio/libosmocore/
COPY git-version-gen /gnuradio/libosmocore/
COPY include /gnuradio/libosmocore/include
COPY libosmocodec.pc.in /gnuradio/libosmocore/
COPY libosmocore.pc.in /gnuradio/libosmocore/
COPY libosmoctrl.pc.in /gnuradio/libosmocore/
COPY libosmogb.pc.in /gnuradio/libosmocore/
COPY libosmogsm.pc.in /gnuradio/libosmocore/
COPY libosmosim.pc.in /gnuradio/libosmocore/
COPY libosmovty.pc.in /gnuradio/libosmocore/
COPY m4 /gnuradio/libosmocore/m4
COPY src /gnuradio/libosmocore/src
COPY tests /gnuradio/libosmocore/tests
COPY utils /gnuradio/libosmocore/utils

RUN cd libosmocore && autoreconf -i && ./configure && make && make install && ldconfig

ENTRYPOINT ["/bin/bash"]
