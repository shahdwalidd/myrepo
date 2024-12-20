FROM alpine:latest

RUN apk update && apk add --no-cache g++ make

WORKDIR /app

COPY main.cpp .

RUN g++ -o hello main.cpp

CMD ["./hello"]