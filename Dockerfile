FROM scratch
MAINTAINER DJT
ENV  WORKDIR /root/estimate
RUN mkdir -p $WORKDIR/log \
    mkdir -p $WORKDIR/public
WORKDIR $WORKDIR
COPY . .
EXPOSE 80
CMD ["/root/estimate/estimate-server"]