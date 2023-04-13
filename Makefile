# Define variables
.DEFAULT_GOAL := build
GOCMD=go
GOFMT=gofmt
GOLINT=golint
GOIMP=goimports
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOVET=$(GOCMD) vet
BINARY_NAME=for_dev_app


all: test build

fmt:
	$(GOFMT) -d -l -s -w .
.PHONY:fmt

lint:fmt
	$(GOLINT) ./...
.PHONY:lint

goimports:fmt
	$(GOIMP) -l -w .
.PHONY:goimports

vet:fmt
	$(GOVET) ./...
.PHONY:vet

build:vet
	$(GOBUILD) -o $(BINARY_NAME) -v .
.PHONY:build

test:
	$(GOTEST) -v ./...
.PHONY:test

clean:
	$(GOCLEAN)
	rm -f $(BINARY_NAME)
.PHONY:clean
