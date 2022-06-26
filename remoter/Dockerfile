FROM rocker/verse AS verse

RUN apt update && \
    apt upgrade -y && \
    Rscript -e 'install.packages(c("remoter", "sodium"))'

CMD Rscript -e 'remoter::server(secure=TRUE)'
