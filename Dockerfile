FROM scratch
MAINTAINER DJT
ENV  WORKDIR /root/estimate
RUN mkdir -p $WORKDIR/log \
    mkdir -p $WORKDIR/public
WORKDIR $WORKDIR
COPY . $WORKDIR/
EXPOSE 80
RUN ls
CMD ["/estimate-server"]