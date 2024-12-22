FROM ubuntu

RUN apt-get update && apt-get install -y libatomic1 unzip

COPY . /workdir
WORKDIR /workdir

RUN ./install_scadabr.sh > /root/install.log

RUN chmod +x startScada.sh

CMD ./startScada.sh && /bin/bash