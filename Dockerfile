FROM python:3.8-alpine
MAINTAINER davide.bove@fau.de
RUN apk --update add python3-dev libffi-dev openssl-dev gcc musl-dev linux-headers libxml2-dev libxslt-dev

ADD ./ /gplaycli
RUN pip install /gplaycli
ENTRYPOINT ["gplaycli"]
