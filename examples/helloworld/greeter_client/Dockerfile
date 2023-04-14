# to be built from docker-compose
FROM golang:1.20 AS build
WORKDIR /src
ENV CGO_ENABLED=0

COPY go.mod .
COPY greeter_client/*.go .
RUN go get
RUN go build -o /out/greeter_client .

FROM golang:1.20 AS bin
WORKDIR /app
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build /out/greeter_client /app/gclient
CMD ["/app/gclient"]
