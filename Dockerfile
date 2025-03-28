FROM golang:1.19-alpine

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download  # Descarga solo lo necesario

COPY . .  

RUN go build -o api .  

EXPOSE 8080

CMD ["./api"]
