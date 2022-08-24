FROM centos:7
RUN yum -y install epel-release
RUN yum -y install java-1.8.0-openjdk
RUN yum -y install xorg-x11-fonts* qtwebkit-devel qt-devel CutyCapt  Xvfb  ImageMagick fontconfig  
 

RUN mkdir /usr/share/fonts/chinese/ -p
COPY *.TTF /usr/share/fonts/chinese/
RUN chmod -R 755 /usr/share/fonts/chinese
RUN yum -y install ttmkfdir
RUN yum install mesa-dri-drivers -y
RUN ttmkfdir -e /usr/share/X11/fonts/encodings/encodings.dir
COPY fonts.conf /etc/fonts/fonts.conf
RUN fc-cache
RUN fc-list
RUN echo d9f7c6ccfbc74d9cad5664f13a037144 > /etc/machine-id
RUN rm /var/cache/yum/* -rf
