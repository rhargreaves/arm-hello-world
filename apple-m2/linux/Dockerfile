FROM gcc
COPY . /app
WORKDIR /app
RUN make
ENTRYPOINT ["/app/out/apple"]
