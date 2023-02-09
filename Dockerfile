FROM golang:alpine

WORKDIR /app

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY . /usr/share/nginx/html

COPY . .

RUN go build -o main .

# 环境变量
ENV API_KEY "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"
ENV WX_TOKEN "Pier88LoveHealthWoa"

EXPOSE "$PORT"

CMD ["./main"]
