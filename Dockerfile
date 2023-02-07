#FROM alpine:3.12

#ADD . /src/

#RUN apk add libxml2
#RUN apk add libxslt
#RUN apk add libxslt-devel

#RUN apk add --update --no-cache  g++ gcc libxslt-dev python3-dev openssl-dev 

#RUN apk add --no-cache libxslt-dev
#RUN apt-get install libxml2-dev libxslt-dev python3-dev
#RUN pip3 install lxml
#RUN apk --no-cache add --update python3 py3-pip py3-wheel git && \
#    git init /src && pip3 install /src
#COPY testcases.yaml /usr/lib/python3.8/site-packages/xtesting/ci/testcases.yaml
#CMD ["run_tests", "-t", "all"]
FROM opnfv/xtesting

COPY hello.robot /
COPY testcases.yaml /etc/xtesting/testcases.yaml
