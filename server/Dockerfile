FROM golang:latest as builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o main .

FROM debian:bookworm
COPY --from=builder /app/main /
COPY --from=builder /app/.env /
EXPOSE 8080
CMD ["/main"]