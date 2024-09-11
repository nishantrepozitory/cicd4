# Start from a base Go image
FROM golang:1.22.6-bookworm

WORKDIR /app
COPY . .
RUN go build -o myapp .
CMD ["./myapp"]