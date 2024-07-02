FROM alpine:3.20.1
RUN apk add --no-cache netcat-openbsd
RUN echo -e '#!/bin/sh\nwhile true; do { echo -e "HTTP/1.1 200 OK\\r\\n"; echo "echo"; } | nc -l -p 80 -q 1; done' > /echo.sh \
    && chmod +x /echo.sh

EXPOSE 80

CMD ["/echo.sh"]
