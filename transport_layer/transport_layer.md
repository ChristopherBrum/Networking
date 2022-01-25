# The Transport Layer

- [Communication Between Processes](#communication-between-processes)
  - [Multiplexing and Demultiplexing](#multiplexing-and-demultiplexing)
  - [Ports](#ports)
    - [Netstat](#netstat)
  - [Sockets](#sockets)
    - [Sockets and Connections](#sockets-and-connections)
- [Network Reliability](#network-reliability)
  - [Building a Reliable Protocol](#building-a-reliable-protocol)
  - [Pipelining for Performance](#pipelining-for-performance)
- [Transmission Control Protocol(TCP)](#transmission-control-protocol)
  - [TCP Segments](#tcp-segments)
  - [TCP Connections](#tcp-connections)
  - [Flow Control](#flow-control)
  - [Disadvantages of TCP](#disadvantages-of-tcp)
- [User Datagram Protocol(UDP)](#user-datagram-protocol)
  - [Use cases for UDP](#use-cases-for-udp)
- [Overview](#overview)

---

## Communication Between Processes

The Transport Layer provides:

- direct connections between application processes, and...
- reliable network communication

> The Internet Protocol provides communication between _hosts_, or devices, that can be on a local network or on local networks in different parts of the world. The Network Layer protocols allow application/programs running on different hosts to communicate with each other.

### Multiplexing and Demultiplexing

**_What is Multiplexing/Demultiplexing?:_**

- Multiplexing is a general programming concept of sending _multiple_ signals over a _single_ channel, and de-multiplexing as the reverse.

**_Why do we need Multiplexing/Demultiplexing?:_**

- When on your computer you may be running multiple programs at one. You may have you email open, be listening to Spotify, and talking on Slack at the same time. These are _individual application processes_ that all connect using the _same internet connection_.
- The multiple application processes running will(each have a port) associated with them but will running on the same Network connection(unique IP Address).

**_How is Multiplexing/Demultiplexing implemented?:_**

- Achieved using port numbers in combination with IP addresses.
- Application processes are assigned a port number that can be used to identify that same application process running on a different networked device.
- IP addresses in conjunction with port numbers make up a _network socket_.
- These sockets are what allow Network and Transport Layer protocols to move data between devices and application processes.

> Within the Transport Layer we achieve multiplexing/demultiplexing by using _ports_ which are determined by the messages passed down from the application layer. These messages are encapsulated into segments along with a header, which includes the source and destination port numbers. From there, the Transport Layer passes these segments to the Network Layer which encapsulates them into packets along with a header, which includes source and destination IP addresses.

> The process of decapsulating this data by the destination host is called demultiplexing.

### Ports

- A _port_ is an identifier for a specific process running on a host, and is an integer ranging between 0-65535.
  - 0-1023 --> **well-known ports** (HTTP port 80, FTP port 20/21, SMTP port 25, etc.)
  - 1024-49151 --> **registered ports**
  - 49152-65535 --> **dynamic ports**

- **Source Port**: Services running on a client machine will have an _ephemeral_ or temporary port number assigned to it by the OS.
- **Destination Port**: Application processes will be assigned a this port number according to the specific process.
- Both of these port numbers will be included in the header of the DPU utilized at the Transport Layer.
- **Socket**: The port number and IP address together make up a _communication end-point_, referred to as a **_socket_**.

### Sockets



#### Sockets and Connections

---

## Network Reliability
  
### Building a Reliable Protocol

### Pipelining for Performance

---

## Transmission Control Protocol(TCP)
  
### TCP Segments

### TCP Connections

### Flow Control

### Disadvantages of TCP

---

## User Datagram Protocol(UDP)
  
### Use cases for UDP

---

## Overview
