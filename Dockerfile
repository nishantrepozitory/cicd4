FROM golang:1.22.6-bookworm

WORKDIR /app
COPY . .
RUN go build -o myapp .
EXPOSE 8080
CMD ["./myapp"]