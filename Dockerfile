FROM golang as build

WORKDIR /app

COPY hello.go .
RUN CGO_ENABLED=0 GOOS=linux go build -o hello hello.go

FROM scratch as runtime

COPY --from=build /app/hello /hello
CMD ["/hello"]