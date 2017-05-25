FROM debian
MAINTAINER Jack Sullivan

# Install the dhcpd server.
RUN apt update
RUN apt install -y isc-dhcp-server

# Copy init script
RUN mkdir -p /data
COPY entrypoint.sh /data/entrypoint.sh
RUN chmod +x /data/entrypoint.sh

# Client requests
EXPOSE 67/udp

ENTRYPOINT ["/data/entrypoint.sh"]
