

FROM ubuntu

ENV http_proxy http://cache-adm.univ-artois.fr:8080/
ENV https_proxy https://cache-adm.univ-artois.fr:8080/

RUN apt-get -y update && apt-get install -y wget zip \
    && mkdir instances \
    && wget http://baldur.iti.kit.edu/sat-race-2015/downloads/sr15bench-hard.zip \
    && unzip sr15bench-hard.zip -d instances \
    && rm -rf sr15bench-hard.zip

# ADD sr15bench-hard.zip .

# RUN apk add --no-cache wget zip \
#     && mkdir instances \
#     && unzip sr15bench-hard.zip -d instances


