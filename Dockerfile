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
