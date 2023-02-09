FROM golang:alpine

WORKDIR /app

COPY nginx /etc/nginx/conf.d/default.conf

COPY . /usr/share/nginx/html

COPY . .

RUN go build -o main .

# 环境变量
ENV API_KEY "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"
ENV WX_TOKEN "Pier88LoveHealthWoa"

EXPOSE "$PORT"

CMD ["./main"]
