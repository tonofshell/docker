FROM debian

RUN apt update && \
    apt upgrade && \
    apt install samba avahi-daemon libnss-mdns -y --no-install-recommends

RUN useradd timemachine && \
    echo "timemachine:password" | chpasswd

RUN mkdir -p /data/timemachine

COPY ./smb.conf /etc/samba/smb.conf
COPY ./samba.service /etc/avahi/services/samba.service
COPY ./entrypoint.sh .

RUN chmod 777 /etc/samba/smb.conf && \
    chmod 777 /etc/avahi/services/samba.service

RUN service smbd restart

RUN echo "hello there" > /data/timemachine/test.txt

ENTRYPOINT ["bash", "./entrypoint.sh"]

CMD ["bash"]