FROM golang:1.22.0
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /soldatovadew
CMD ["/soldatovadew"]
