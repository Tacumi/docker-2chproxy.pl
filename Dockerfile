FROM perl
LABEL maintainer="Tacumi Sugita <masa258333@gmail.com>"
RUN echo "now building..."
RUN apt-get update \
&& apt-get install -y libhttp-daemon-perl liblwp-protocol-https-perl libyaml-tiny-perl gzip \
&& apt-get clean \
&& rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN mkdir -p $HOME/.jd /app
RUN git clone http://github.com/yama-natuki/2chproxy.pl /app
WORKDIR /app
RUN echo "LISTEN_HOST : '0.0.0.0'" > setting.yml

WORKDIR /app
CMD ["./2chproxy.pl","--config","setting.yml"]

EXPOSE 8080
