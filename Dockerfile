FROM golang:1.22.6-bookworm

WORKDIR /app
COPY . .
RUN go build -o myapp .
expose 8080
CMD ["./myapp"]