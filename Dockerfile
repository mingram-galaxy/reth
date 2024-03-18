FROM rust:1.76.0

WORKDIR /app

COPY ./ ./
RUN apt-get install ca-certificates
RUN cargo build --release

CMD ["./target/release/reth"]

# Use Ubuntu as the release image
# FROM ubuntu AS runtime
# WORKDIR /app

# # Copy reth over from the build stage
# COPY --from=builder /app/reth /usr/local/bin

# # Copy licenses
# COPY LICENSE-* ./

# EXPOSE 30303 30303/udp 9001 8545 8546
# ENTRYPOINT ["/usr/local/bin/reth"]
