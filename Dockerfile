FROM debian:sid

MAINTAINER gouvinb

ENV VERSION 3.6
ADD https://www.languagetool.org/download/LanguageTool-$VERSION.zip /LanguageTool-$VERSION.zip

RUN apt update
RUN apt install -y openjdk-8-jre
RUN apt install -y unzip
# RUN rm -rf /var/cache/apk
RUN unzip LanguageTool-$VERSION.zip
RUN rm LanguageTool-$VERSION.zip

COPY entrypoint.sh /LanguageTool-$VERSION/entrypoint.sh
RUN chmod +x /LanguageTool-$VERSION/entrypoint.sh

ENV PORT 8888

WORKDIR /LanguageTool-$VERSION

ENTRYPOINT ["./entrypoint.sh"]