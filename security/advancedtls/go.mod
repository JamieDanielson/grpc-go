module google.golang.org/grpc/security/advancedtls

go 1.17

require (
	github.com/hashicorp/golang-lru v0.5.4
	golang.org/x/crypto v0.7.0
	google.golang.org/grpc v1.53.0
	google.golang.org/grpc/examples v0.0.0-20201112215255-90f1b3ee835b
)

require (
	github.com/golang/protobuf v1.5.3 // indirect
	golang.org/x/net v0.8.0 // indirect
	golang.org/x/sys v0.6.0 // indirect
	golang.org/x/text v0.8.0 // indirect
	google.golang.org/genproto v0.0.0-20230306155012-7f2fa6fef1f4 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
)

replace google.golang.org/grpc => ../../

replace google.golang.org/grpc/examples => ../../examples
