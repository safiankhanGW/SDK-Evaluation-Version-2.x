Run the following commands to setup the library

sudo ln -s {X}/libglasswall_core2.so /usr/lib/libglasswall_core2.so.1
sudo ln -s {X}/libQt5Concurrent.so /usr/lib/libQt5Concurrent.so.5
sudo ln -s {X}/libQt5Core.so /usr/lib/libQt5Core.so.5
sudo ln -s {X}/libquazip.so /usr/lib/libquazip.so.1
sudo ln -s {X}/libQt5Xml.so /usr/lib/libQt5Xml.so.5
sudo ln -s {X}/libicui18n.so /usr/lib/libicui18n.so.56
sudo ln -s {X}/libicuuc.so /usr/lib/libicuuc.so.56
sudo ln -s {X}/libicudata.so /usr/lib/libicudata.so.56
sudo ln -s {X}/libQt5Gui.so /usr/lib/libQt5Gui.so.5
sudo ldconfig

Where {X} is the directory containing Glasswall

Run the cli with the following command:

./GWQtCLI -i {Input} -o {Output} -x export

Where {Input} and {Output} are your input and output directories respectively. 

This is also availible in a pre built docker image: https://hub.docker.com/r/mgreengw/glasswall_analyseandregenerate
