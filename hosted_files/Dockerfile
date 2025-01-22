FROM alpine:3.14

WORKDIR /app
COPY . .

RUN apk --no-cache add curl
RUN curl -fsSL https://ollama.com/install.sh | sh
RUN apk --no-cache add php

CMD ["./start.sh"]
EXPOSE 80/tcp
