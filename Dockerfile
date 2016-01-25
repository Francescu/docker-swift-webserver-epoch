FROM francescu/swift-linux

RUN  echo "deb [trusted=yes] http://apt.zewo.io/deb ./" | tee --append /etc/apt/sources.list &&\
        apt-get update &&\
        apt-get install uri-parser http-parser libvenice git -y &&\
        apt-get clean -y

#RUN add-apt-repository 'deb [trusted=yes] http://apt.zewo.io/deb ./' &&\
#        apt-get install libvenice git&&\
#        git clone https://github.com/Zewo/uri_parser.git &&\
#        cd uri_parser && make && make package && dpkg -i uri_parser.deb &&\
#        cd .. && rm -rf ./uri_parser &&\ 
#        git clone https://github.com/Zewo/http_parser.git &&\
#        cd http_parser && make && make package && dpkg -i http_parser.deb &&\
#        cd .. && rm -rf ./http_parser
