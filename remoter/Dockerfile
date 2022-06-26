FROM rocker/verse AS verse

RUN apt update && \
    apt upgrade -y && \
    Rscript -e 'install.packages(c("remoter", "sodium"))'

ENV PORT=55555
ENV PASSWORD=NULL
ENV MAX_RETRY=5
ENV SECURE=TRUE
ENV LOG=TRUE
ENV VERBOSE=FALSE
ENV SHOW_MSG=FALSE
ENV USER_PNG=TRUE
ENV SYNC=TRUE

CMD Rscript -e remoter::server(port=${PORT}, password="${PASSWORD}", maxretry=${MAX_RETRY}, secure=${SECURE}, log=${LOG}, verbose=${VERBOSE}, showmsg=${SHOW_MSG}, userpng=${USER_PNG}, sync=${SYNC})
