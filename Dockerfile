FROM golang:alpine AS builder
WORKDIR /app
COPY main.go .
RUN go mod init fullcycle
RUN go build -ldflags="-s -w" -o fullcycle

FROM scratch
COPY --from=builder /app/fullcycle /fullcycle
ENTRYPOINT ["/fullcycle"]
