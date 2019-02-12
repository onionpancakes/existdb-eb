FROM alpine as build

RUN apk add --update make zip

WORKDIR /home/workdir

COPY Makefile .
COPY apps apps

RUN make

# App

FROM existdb/existdb:4.5.0

COPY --from=build /home/workdir/build/*.xar /exist/autodeploy/

EXPOSE 8080
EXPOSE 8443
