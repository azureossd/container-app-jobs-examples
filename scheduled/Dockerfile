FROM golang:1.20.2-alpine3.17

WORKDIR /app

COPY . ./

# Build
RUN CGO_ENABLED=0 GOOS=linux go build -o /usr/local/bin/app

# Run
CMD ["/usr/local/bin/app"]