NAME = silverwind/armhf-registry
VERSION = 0.2.0
IS_ARM := $(shell uname -m | grep -E "^arm")

ifeq ($(IS_ARM), )
  BINARY=$(GOPATH)/bin/linux_arm/registry
else
  BINARY=$(GOPATH)/bin/registry
endif

$(BINARY):
	CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go get -a -ldflags '-s' github.com/docker/distribution/cmd/registry

build: $(BINARY)
	cp $(BINARY) .
	docker build -t $(NAME) .
	docker tag $(NAME) $(NAME):$(VERSION)

clean:
	rm -rf registry
	rm -rf $(BINARY)

push:
	docker push $(NAME)

test:
	docker run --rm $(NAME) --version
