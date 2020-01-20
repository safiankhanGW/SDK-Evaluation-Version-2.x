FROM centos:7
RUN yum install libfreetype.so.6 -y yum install libpthread.so.0 -y yum install fontconfig -y 
COPY ["Lib/*"              , "/home/glasswall/"]
COPY ["GWQtCLI"            , "/home/glasswall/"]
RUN cd /build/core2/ \
    ln -s /build/core2/libglasswall_core2.so /usr/lib/libglasswall_core2.so.1 \
    ln -s /build/core2/libQt5Concurrent.so /usr/lib/libQt5Concurrent.so.5 \
    ln -s /build/core2/libQt5Core.so /usr/lib/libQt5Core.so.5 \
    ln -s /build/core2/libquazip.so /usr/lib/libquazip.so.1 \
    ln -s /build/core2/libQt5Xml.so /usr/lib/libQt5Xml.so.5 \
    ln -s /build/core2/libicui18n.so /usr/lib/libicui18n.so.56 \
    ln -s /build/core2/libicuuc.so /usr/lib/libicuuc.so.56 \
    ln -s /build/core2/libicudata.so /usr/lib/libicudata.so.56 \
    ln -s /build/core2/libQt5Gui.so /usr/lib/libQt5Gui.so.5 \
    ldconfig /usr/lib
WORKDIR /home/glasswall
CMD /home/glasswall/GWQtCLI -i /input -o /output
