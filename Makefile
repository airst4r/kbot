APP=$(shell basename $(shell git remote get-url origin))
REGISTRY=sergesrj
VERSION=$(shell git rev-parse --short HEAD)
TARGETOS=linux
TARGETARCH=arm64
format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

build: format get
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.dev/airst4r/kbot/cmd.appVersion=${VERSION}

get:
	go get

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

clean:
	rm -rf kbot