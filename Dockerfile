FROM francescu/swift-linux

RUN  echo "deb [trusted=yes] http://apt.zewo.io/deb ./" | tee --append /etc/apt/sources.list &&\
        apt-get update &&\
        apt-get install uri-parser http-parser libvenice libpq-dev git -y &&\
        apt-get clean -y
