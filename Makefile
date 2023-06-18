APP=$(shell basename $(shell git remote get-url origin))
REGISTRY=sergesrj
REGISTRY_GHCR=ghcr.io/airst4r
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux
TARGETARCH=amd64
format:
	gofmt -s -w ./

lint:
	golint
arch:
	TARGETARCH=${TARGETARCH}
test:
	go test -v

linux: arch
	make build TARGETOS=linux TARGETARCH=${TARGETARCH}

windows: arch
	make build TARGETOS=windows TARGETARCH=${TARGETARCH}

macos: arch
	make build TARGETOS=darwin TARGETARCH=${TARGETARCH}

build: format get
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.dev/airst4r/kbot/cmd.appVersion=${VERSION}

get:
	go get

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

imageghcr:
	docker build . -t ${REGISTRY_GHCR}/${APP}:${VERSION}-${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

pushghcr:
	docker push ${REGISTRY_GHCR}/${APP}:${VERSION}-${TARGETARCH}

clean:
	rm -rf kbot
	docker rmi ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}