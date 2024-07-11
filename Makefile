all: fmt clean build chmod

fmt:
	@go fmt ./...

clean:
	@rm -rf bin/bola

build:
	@go build -o bin/bola cmd/bola/main.go

chmod:
	@chmod +x bin/bola