# The Internet

- [What is the Internet?](#what-is-the-internet)
- [Protocols](#protocols)

---

- We, as software developers, must understand how _network communication_ functions because that is at the foundation of how _network applications_ function.
- _The internet_ is a network of networks comprised of a physical infrastructure(switches, routers, cables, servers, etc.) that connects devices all across the world, and the protocols that allow these devices to communicate/share data with one another.
- The _Internet Protocol(IP)_ is a key part of the functionality odf the internet.

## What is the Internet

**_Network_**

- In its simplest form a network is two or more devices connected in a way that allows them to communicate/share data with one another. (e.g. two computers connected using a LAN cable and configuring network settings in a way that they form a network.)

**_LAN/WLAN_**

- A _Local Area Network(LAN)_ is most common computer environments(e.g. at an office, or at school). Is comprised of two or more computers or other devices connected by a bridging device(i.e. hub or switch) with network cables.
- A _Wireless Local Area Network(WLAN)_ is the same as above but connected using a wireless hub or switch rather than plugged in with a cable.
- **The scope of communication is limited to the devices connected via cables or wireless**, hence the _local_ in the title.

**_Inter-network communication_**

- LANs limit communication to devices included in a LAN, but _Routers_ allow communication to occur between _networks_. _Routers_ 'route' network traffic to other networks.

**_Network of Networks_**

- On a basic level, the internet consists of a multitude of individual networks connected together, and in between these sub-networks is a system of routers that direct network traffic.

---

## Protocols

**_What is a Protocol?_**

> A **protocol** is a well-known set of rules and standards used to communicate between machines.

**_Why do we need Protocols?_**

- The variety of electronic communication that needs to communicate these days is astounding:
  - Devices (phone brands, phone models, tvs, computers, toasters, etc.)
  - Connection devices (hubs, switches, routers, etc.)
  - Server configurations
  - Variety of software run on these components

- A number of different _protocols_ are used in order to standardize different aspects of network communication over the internet. 
  - IP, SMTP, TCP, HTTP, Ethernet, are all examples of different protocols.

**_Main reasons there are so many protocols for network communication_**

- **Protocols for different aspects of communication**
  - Just like human speech, where the order of the words said matter, or the back and forth that occurs in a conversation, protocols can ensure communication across the network is understood between both parties.

- **Different protocols for the same aspect of communication**
  - Just like different scenarios require different styles of communication depending on the context(e.g. student speaking to teacher vs friends speaking in a group) within human speech, some scenarios of network communication can require different rules depending on the context.

- For example:
  - TCP and UDP would be examples of two protocols that address the transfer of messages between applications, but do so differently.
  - TCP and HTTP would be examples of two protocols that address different aspects of communication; TCP for the transfer of messages between applications, and HTTP for the structure of those messages.

---

## A Layered System

- Why layering systems are beneficial
- most popular
  - OSI Model
  - TCT/IP(DoD)
- Data Encapsulation in terms of network model protocol layers
  - Protocol Data Unit(PDU)
  - Header and Trailer
  - Data Payload

---

## The Physical Network

- Purpose of the physical layer
- There are physical limitations to a networks capabilities and have an effect on how protocols function up at the conceptual level
- Bits and Signals
- Characteristics of a physical network
  - Latency
    - propagation delay
    - transmission delay
    - processing delay
    - queuing delay
    - last-mile latency
    - round-trip time
    - network hops
  - Bandwidth
  - Limitations of the physical network

---

## The Link/Data Link Layer

- Purpose of the link/data link layer
- Ethernet protocol
  - Ethernet Frames
    - preamble and Start of Frame Delimiter(SFD/SOF)
    - source and destination MAC address
    - length
    - DSAP, SSAP, Control
    - data payload
    - frame check sequence
  - Interframe Gap
  - Difference between ethernet standards
  - MAC Addresses
    - hubs vs switches
- A Problem of Scale

---

## The Internet/Network Layer

- Purpose of the Internet/Network Layer
  - IPv4 and IPv6
- Data Packets
  - version
  - ID, flags, fragment offset
  - TTL
  - protocol
  - checksum
  - source address
  - destination address
- IP Addresses IPv4
  - network address & broadcast address
- Routing and Routing Tables
- IPv6
- Networked Applications

---

## Overview

- The internet is a network of networks, comprised of the _network infrastructure_(devices, routers, switches, cables, etc.) and the _protocols_ that allow the infrastructure to function.
- _Physical network_: the tangible infrastructure that transmits electrical signals, light, and radio waves that carry network communications.
- _Protocol_: a system of rules.
- _Network Protocols_: the system of rules that dictate the transmission of data over the internet.
- Different network protocols are concerned with different aspects of network communication and can be thought of as the different layers of the network.
- The different network layers pass data by _encapsulating_ it at each step in the layering system through the use of _Protocol Data Units(PDUs)_.
- The _PDU_ of a protocol at one layer, becomes the _data payload_ of the PDU of a protocol at a lower layer.
- _Protocol data units:_ the encapsulation of data at each layer of network communication(ethernet frame, IP packets, TCP segments, etc.)
- _Data payload_: the piece of data to be encapsulated from the layer above in the protocol hierarchy.
- _Latency_ is a measure of delay that indicates the time it takes for data to travel from one point to another point.
- _Bandwidth_: a measure of capacity. It indicates the amount of data that can be transmitted in a set period of time.
- _Ethernet_: a set of standards and protocols that enables communication between devices on a local network.
- _Frame_: the protocol data unit utilized within the Ethernet protocol layer.
- _MAC addressing_: what's used to identify devices within a local network.
- _IP Address_: system of addressing to direct data between one device and another across networks.
- _Internet Protocol_: primary protocol used for _inter-network_ communication.
- _Packet_: the protocol data unit utilized within the Internet Protocol layer.
