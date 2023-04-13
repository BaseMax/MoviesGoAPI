# Define variables
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOVET=$(GOCMD) vet
BINARY_NAME=for_dev_app

all: test build

build:
	$(GOBUILD) -o $(BINARY_NAME) -v .

test:
	$(GOTEST) -v ./...

vet:
	$(GOVET) ./...

clean:
	$(GOCLEAN)
	rm -f $(BINARY_NAME)

.PHONY: all build test vet clean
