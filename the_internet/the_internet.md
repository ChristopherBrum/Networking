# The Internet

- [What is the Internet?](#what-is-the-internet)
  - [Network](#network)
  - [LAN/WLAN](#lan-and-wlan)
  - [Inter-network communication](#inter-network-communication)
  - [Network of Networks](#network-of-networks)
- [Protocols](#protocols)
  - [What is a Protocol?](#what-is-a-protocol)
  - [Why do we need Protocols?](#why-do-we-need-protocols)
  - [Main reasons there are so many protocols for network communication](#main-reasons-there-are-so-many-protocols-for-network-communication)
    - [Protocols for different aspects of communication](#protocols-for-different-aspects-of-communication)
    - [Different protocols for the same aspect of communication](#different-protocols-for-the-same-aspect-of-communication)
- [A Layered System](#a-layered-system)
  - [Why layering systems are beneficial](#why-layering-systems-are-beneficial)
  - [Network Communication Models](#network-communication-models)
    - [Data Encapsulation in terms of network model protocol layers](#data-encapsulation-in-terms-of-network-model-protocol-layers)
      - [Protocol Data Unit(PDU)](#protocol-data-unit)
      - [Header and Trailer](#header-and-trailer)
      - [Data Payload](#data-payload)
- [The Physical Network](#data-payload)
  - [Purpose of the physical layer](#purpose-of-the-physical-layer)
  - [Bits and Signals](#bits-and-signals)
  - [Characteristics of a physical network](#characteristics-of-a-physical-network)
    - [Latency](#latency)
    - [Bandwidth](#bandwidth)
  - [Limitations of the physical network](#limitations-of-the-physical-network)
- [The Link/Data Link Layer](#the-link-or-data-link-layer)
  - [Purpose of the link/data link layer](#purpose-of-the-link-or-data-link-layer)
  - [Ethernet protocol](#ethernet-protocol)
    - [Ethernet Frames](#ethernet-frames)
      - [Interframe Gap](#interframe-gap)
      - [Difference between ethernet standards](#difference-between-ethernet-standards)
      - [MAC Addresses](#mac-addresses)
  - [A Problem of Scale](#a-problem-of-scale)
- [The Internet/Network Layer](#the-internet-or-network-layer)
  - [Purpose of the Internet/Network Layer](#purpose-of-the-internet-or-network-layer)
  - [Data Packets](#data-packets)
  - [IP Addresses IPv4](#ip-addresses-ipv4)
    - [Network Address & Broadcast Address](#network-address-and-broadcast-address)
  - [Routing and Routing Tables](#routing-and-routing-tables)
  - [IPv6](#ipv6)
  - [Networked Applications](#networked-applications)
- [Concepts](#concepts)
- [Overview](#overview)

---

## What is the Internet

- We, as software developers, must understand how _network communication_ functions because that is at the foundation of how _network applications_ function.
- _The internet_ is a network of networks comprised of a physical infrastructure(switches, routers, cables, servers, etc.) that connects devices all across the world, and the protocols that allow these devices to communicate/share data with one another.
- The _Internet Protocol(IP)_ is a key part of the functionality odf the internet.

### Network

- In its simplest form a network is two or more devices connected in a way that allows them to communicate/share data with one another. (e.g. two computers connected using a LAN cable and configuring network settings in a way that they form a network.)

### LAN and WLAN

- A _Local Area Network(LAN)_ is most common computer environments(e.g. at an office, or at school). Is comprised of two or more computers or other devices connected by a bridging device(i.e. hub or switch) with network cables.
- A _Wireless Local Area Network(WLAN)_ is the same as above but connected using a wireless hub or switch rather than plugged in with a cable.
- **The scope of communication is limited to the devices connected via cables or wireless**, hence the _local_ in the title.

### Inter-network communication

- LANs limit communication to devices included in a LAN, but _Routers_ allow communication to occur between _networks_. _Routers_ 'route' network traffic to other networks.

### Network of Networks

- On a basic level, the internet consists of a multitude of individual networks connected together, and in between these sub-networks is a system of routers that direct network traffic.

---

## Protocols

### What is a Protocol

> A **protocol** is a well-known set of rules and standards used to communicate between machines.

### Why do we need Protocols

- The variety of electronic communication that needs to communicate these days is astounding:
  - Devices (phone brands, phone models, tvs, computers, toasters, etc.)
  - Connection devices (hubs, switches, routers, etc.)
  - Server configurations
  - Variety of software run on these components

- A number of different _protocols_ are used in order to standardize different aspects of network communication over the internet. 
  - IP, SMTP, TCP, HTTP, Ethernet, are all examples of different protocols.

### Main reasons there are so many protocols for network communication

#### _Protocols for different aspects of communication_

- Just like human speech, where the order of the words said matter, or the back and forth that occurs in a conversation, protocols can ensure communication across the network is understood between both parties.

#### _Different protocols for the same aspect of communication_

- Just like different scenarios require different styles of communication depending on the context(e.g. student speaking to teacher vs friends speaking in a group) within human speech, some scenarios of network communication can require different rules depending on the context.

- For example:
  - TCP and UDP would be examples of two protocols that address the transfer of messages between applications, but do so differently.
  - TCP and HTTP would be examples of two protocols that address different aspects of communication; TCP for the transfer of messages between applications, and HTTP for the structure of those messages.

---

## A Layered System

### Why layering systems are beneficial

- Since different protocols address different aspects of network communication it is useful to group these different protocols by the particular aspects of communication that they address, and is helpful to think of these different aspects as _layers_.

### Network Communication Models

There are a wide variety of models that break the different protocols of network communication into a layer system. The two most popular are;

- OSI Model
- Internet Protocol Suite(also known as TCT/IP or DoD)

The difference between these models is mostly in their approach, but they are roughly equivalent.

#### _Data Encapsulation in terms of network model protocol layers_

- In terms of network models, encapsulation is used to hide data from one layer of the network by encapsulating it within a _protocol data unit_ of the layer below.
  
##### _Protocol Data Unit(PDU)_

- A PDU is a block of data transferred over a network. Different protocols have different names for these PDUs.
  - Application layer:      **HTTP Request or Response**
  - Transport layer:        **Segment**(TCP) or **datagram**(UDP) 
  - Internet/Network layer: **Packet**
  - Link/Data Link layer:   **Frame**
  
- Regardless of the layer the PDU will consist of a _header_, a _payload_, and in some cases a _trailer_ or _footer_.

##### _Header and Trailer_

- the structure and what is contained within the header and, when applicable, the trailer will depends on the protocol. But their purpose is the same across all layers; _to provide protocol specific metadata about the PDU_.
  - For example; an IP packet header would include fields for the Source IP Address and the Destination IP Address, which would be used to correctly route the packet.

##### _Data Payload_

- The data payload is the data we want to transport over the network using a particular protocol at a particular layer of the data model.
- This is the key to encapsulation within the network model.
- **The entire PDU from a protocol at one layer is set as the _data payload_ for a protocol at the layer _below_**.
- A major benefit of this is that it creates a separation between the protocols at different layers, so a layer at one level doesn't need to know anything about how a protocol art another layer is implemented in order to interact properly.
- With this system lower layers essentially provide a service to the layer above.

  - This is especially apparent at the Application level, where the data payload could be a HTTP request, a SMTP command, or some other Application layer data, but the Transport layer doesn't care. It just knows it needs to encapsulate some data from the layer above.

---

## The Physical Network

### Purpose of the physical layer

- Underneath the layers of abstraction of network communication at it's most basic level is a 'physical' network made out of networked devices, cables and wires.
- The laws and rules of science and the components that comprise the physical network dictate the limitations of how data is actually transported from one part of the world to another.
- These limitations effect the protocols functioning further up at a conceptual level.

### Bits and Signals

- Functionality at the Physical level is primarily concerned with the transferring of _bits_(binary data).
- To transfer bits they are converted to electrical signals, light signals, or radio waves.

### Characteristics of a physical network

- _Latency_ and _Bandwidth_ are the two main characteristics of **performance** in the physical layer.

#### _Latency_

- **Latency**(time): measure of _time_ it takes for data to get from one point in a network to another.
- **Bandwidth**(amount): _amount_ of time that data can be sent in a particular unit of time.

#### _Bandwidth_

- Bandwidth across a network will vary.
- The core network will have more bandwidth than the part of the network infrastructure that connects to your home.
- The bandwidth you receive is only as good as the weakest point within the system you're connected to. This is known as the _bandwidth bottleneck_.

### _Limitations of the physical network_

- As developers we don't have control over elements of the physical network.
- Improving performance of applications we build will have to come from higher-level protocols.

---

## The Link or Data Link Layer

### Purpose of the link or data link layer

- Protocols at the Link/Data link layer are primarily concerned with the identification of devices on the physical network and moving data over the physical network between devices that comprise it(like computers, switches, routers, etc.).
- Its the interface between the physical network and the more logical layers above.

### Ethernet protocol

- The **Ethernet Protocol** is most commonly used at this layer, and has two main aspects we will concentrate on; _framing_ and _addressing_.

#### _Ethernet Frames_

- Ethernet frames are a PDU and encapsulate the data from the Internet/Network layer above.
- The Link/Data Link layer is the lowest layer that encapsulation takes place, from here data is sent to the physical layer as a stream of bits in some form without any logical structure.
- An Ethernet Frame adds logical structure to this binary data.
- The data within the frame is still in the form of bits, but the structure of the frame defines which bits are the payload, and which bits are metadata to process the transporting of the frame.

Ethernet compliant network devices can identify the different parts of a frame because the different 'fields' have specified lengths.

- **Preamble and Start of Frame Delimiter(SFD/SOF)**: (7 bytes) notifies receiving device to expect frame data and identifies start point of that data.
- **Source and destination MAC address**: (6 bytes) contains the sending and receiving addresses of the data.
- **Length**: (2 bytes) indicates size of payload.
- **DSAP, SSAP, Control**: (1 byte) identifies the Network Protocol.
- **Data payload**: (42-1497 bytes) contains the PDU from layer above.
- **Frame check sequence**: (4 bytes) device that created frame makes a checksum, calculated in some way, then the receiving device creates a checksum and calculates, then compare to see fi they're the same. Drop the frame if they're different.

##### _Interframe Gap_

- Ethernet protocol specifies a brief gap to the receiving device between each transmission which prepares the device to receive the next frame.

##### _Difference between ethernet standards_

- The differences between different Ethernet standards should not matter much.
- Just focus on...
  - ...the data payload being used as an encapsulation mechanism for the layer above, and...
  - ...the MAC address fields being used to direct the frame between network devices.

##### _MAC Addresses_

- A unique _MAC address_ is assigned to every network-enabled device when manufactured.
- Because this is linked to the specific physical device it is sometimes referred to as the _physical address_ or the _burned-in address_.
- MAC Addresses are formatted as a sequence of six two-digit hexadecimal numbers(`00:40:96:9d:68:0a`) with different ranges of addresses being assigned to different network hardware manufacturers.

In an environment thats using a hub, when a device wants to send frame to a specific MAC address, it sends the frame to the hub and the hub then sends that frame to every device connected to it. The receiving devices check to see if the MAC address is correct, and will return the frame is not.

This is highly inefficient and why most places no longer use hubs and instead use switches.

A switch will use the destination address to send the frame _only_ to the intended device. The switch directs the frames to the correct device by keeping a record of MAC addresses connected to it, and associates each address with an ethernet port that the device is connect to the switch through.

### A Problem of Scale

- While the scenario above works fine for local networks, there is a problem of _scale_ when it comes to larger networks like the internet, primarily because:
  - They are physical rather than logical. Each MAC Address is tied (burned in) to a specific physical device
  - They are flat rather than hierarchical. The entire address is a single sequence of values and can't be broken down into sub-divisions.

---

## The Internet or Network Layer

### Purpose of the Internet or Network Layer

- Primary function of the Internet/Network layer is to facilitate communication between hosts(computers, ect.) on different networks.
- The **Internet Protocol**(IP) is the predominant protocol for this layer and there are two versions in use: IPv4 and IPv6.
- The primary features of IPv4 and IPv6 are:
  - Routing using IP addresses.
  - Encapsulation into _packets_.

### Data Packets

- The PDU for the IP protocol is a _packet_, that consists of a Header and a Data Payload.
- The Data Payload of an IP Packet is the encapsulated data from the layer above(the Transport Layer).

- A glance at the Header fields of an IP Packet:
  - **Version**: the version of IP (IPv4)
  - **ID, flags, fragment offset**: related to fragmentation, if the PDU from layer above is too big, can be broken into fragments and then reassembled.
  - **TTL**: time to love value
  - **Protocol**: indicates protocol(TCP, UDP)
  - **Checksum**: this is an error checking value generated via an algorithm
  - **Source address**: 32-bit IP address of the source (sender
  - **Destination address**: 32-bit IP address of the destination (intended recipient)

### IP Addresses IPv4

- IP addresses are not tied to a specific device and can be assigned as required when devices join a network.
- The IP address assigned must fall within a range of IP devices tied to the network that the device is connected to.
- The range is set by a network hierarchy, where an overall network is split into logical sub-networks, each being defined by the range of IP addresses available to it.
- IPv4 addresses are 32 bits in length and are divided into four sections of eight bits each, each converted to a range of numbers from `0-255`. For instance, `110.54.203.175`.

#### Network Address and Broadcast Address

- Each network defines the IP at the start of its network range as the _Network Address_ and the end of its range as the _Broadcast Network_.
- When a router is looking for an IP address it uses the Network Address of a specific network to identify the segment of IP addresses within the network. This means if the router needs to send a packet to any address within that range it only needs to keep a record of the router that is associated with that range of addresses.
- This creates a hierarchal structure and means that routers don't need to keep track of every device within an addressable range.

- This splitting of a network into parts is called _sub-netting_.

### Routing and Routing Tables

- Routers on the network store a local routing table.
- When a router receives an IP packet it looks through the list of addresses on the routing table which represent a range of IP addresses within a particular sub-network. It determines where in the network hierarchy the matching address is and then chooses the best route for the packet to travel.

### IPv6

- The number of addresses available with IPv4 is only ~4.3 billion, so the IETF are developing a new version of the Internet Protocol called IPv6 which will make 340 undecillion (340 billion billion billion billion) new addresses available.

### Networked Applications

- The Ethernet Protocol allows for communication between devices on the same local network, the Internet Protocol allows for communication on any networked devices in the world.
- Being able to transport data from one device to the other isn't sufficient to ensure that a specific application on the client can access the correct service on the server.

---

## Concepts

- Different sets of rules, or protocols, address different aspects of communication.
- It can be useful to group these protocols together in terms of the particular aspect of communication that they address.
- We can think of those protocol groups as functioning within layers of an overall system of communication.

- Protocols act as systems of rules for network communication.
- Groups of protocols work in a layered system. Protocols at one layer provide services to the layer above.
- Data is encapsulated into a Protocol Data Unit, creating separation between protocols operating at different layers.

- A network at the physical level is many devices connected by cables, transmitting binary data in the form of electrical signals, light, or radio waves.
- Simply having these devices being physically connected to each other isn't sufficient for them to communicate.

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
