FROM golang:1.11.2
# Specify working space
WORKDIR /go/src/app
# Copy all sources to working space in the image
COPY . .
# Download all dependencies
RUN go get -v ./...
RUN go build
CMD [ "./app" ]