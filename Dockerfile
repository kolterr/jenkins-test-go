FROM alpine
MAINTAINER DJT
ENV  WORKDIR /root/estimate
RUN mkdir -p $WORKDIR/log \
    mkdir -p $WORKDIR/public
WORKDIR $WORKDIR
COPY . $WORKDIR/
EXPOSE 80
CMD ["./estimate-server"]