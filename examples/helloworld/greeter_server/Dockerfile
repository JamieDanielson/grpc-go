# to be built from docker-compose
FROM golang:1.20 AS build
WORKDIR /src
ENV CGO_ENABLED=0

COPY go.mod .
COPY greeter_server/*.go .
RUN go get
RUN go build -o /out/greeter_server .

FROM golang:1.20 AS bin
WORKDIR /app
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build /out/greeter_server /app/gserver
CMD ["/app/gserver"]
