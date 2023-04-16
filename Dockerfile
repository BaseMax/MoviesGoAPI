FROM golang:1.20.0-alpine3.16

RUN apk update && apk add --no-cache bash

WORKDIR /app

COPY ["go.mod", "go.sum", "./"]

RUN go mod download
RUN go install github.com/jackc/tern@latest

COPY . ./

RUN go build ./cmd/api

EXPOSE 8080

CMD [ "./api" ]
