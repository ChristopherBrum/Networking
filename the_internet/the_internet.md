# The Internet

## What is the Internet?

- Network
- LAN/WLAN
- Inter-network communication
- Network of Networks

## Protocols

- What is a protocol?
  A **protocol** is a well-known set of rules and standards used to communicate between machines.
- Common internet communication protocols
- Main reasons there are so many protocols for network communication
  - Protocols for different aspects of communication
  - Different protocols for the same aspect of communication

## A Layered System

- Why layering systems are beneficial
- most popular
  - OSI Model
  - TCT/IP(DoD)
- Data Encapsulation in terms of network model protocol layers
  - Protocol Data Unit(PDU)
  - Header and Trailer
  - Data Payload

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

## Overview

- The internet is a network of networks, comprised of the _network infrastructure_(devices, routers, switches, cables, etc.) and the _protocols_ that allow the infrastructure to function.
- _Physical network_: the tangible infrastructure that transmits electrical signals, light, and radio waves that carry network communications.
- _Protocol_: a system of rules.
- _Network Protocols_: the system of rules that dictate the transmission of data over the internet.
- Different network protocols are concerned with different aspects of network communication and can be thought of as the different layers of the network.
- The different network layers pass data by _encapsulating_ it at each step in the layering system through the use of _Protocol Data Units(PDUs)_.
- The _PDU_ of a protocol at one layer, becomes the _data payload_ of the PDU of a protocol at a lower layer.
- _Protocol data units:_ the encapsulation of data at each layer of network communication(frames, packets, etc.)
- _Data payload_: the piece of data to be encapsulated from the layer above in the protocol hierarchy.
- _Latency_ is a measure of delay that indicates the time it takes for data to travel from one point to another point.
- _Bandwidth_: a measure of capacity. It indicates the amount of data that can be transmitted in a set period of time.
- _Ethernet_: a set of standards and protocols that enables communication between devices on a local network.
- _Frame_: the protocol data unit utilized within the Ethernet protocol layer.
- _MAC addressing_: what's used to identify devices within a local network.
- _IP Address_: system of addressing to direct data between one device and another across networks.
- _Internet Protocol_: primary protocol used for _inter-network_ communication.
- _Packet_: the protocol data unit utilized within the Internet Protocol layer.
