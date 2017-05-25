
## Clone the Repository

Clone this repository to `/srv/docker/isc-dhcp-server`.


## Configure the DHCP Server

Create a `dhcpd/dhcpd.conf` file. Each subnet's IP address will
automatically be matched to the local network interfaces. Any
subnet not specified will not listen on the corresponding interface.

This file can actually be created after running `docker-compose`,
because the restart policy is set for `always`.


## Build and run the container.

```
docker-compose up --build
```

## Run the container manually

If you run the container manually, be sure to set the network to `host`, so
that it can respond to link layer frames.

```
docker run -dt --name dhcpd \
  -v /srv/docker/isc-dhcp-server/dhcpd:/data \
  --network=host -p 67/udp \
  dhcpd
```

