# The Transport Layer

- [Communication Between Processes](#communication-between-processes)
  - [Multiplexing and Demultiplexing](#multiplexing-and-demultiplexing)
  - [Ports](#ports)
    - [Netstat](#netstat)
  - [Sockets](#sockets)
    - [Sockets and Connections](#sockets-and-connections)
      - [Connectionless](#connectionless)
      - [Connection-Oriented](#connection-oriented)
- [Network Reliability](#network-reliability)
  - [Building a Reliable Protocol](#building-a-reliable-protocol)
  - [Pipelining for Performance](#pipelining-for-performance)
- [Transmission Control Protocol(TCP)](#transmission-control-protocol)
  - [TCP Segments](#tcp-segments)
  - [TCP Connections](#tcp-connections)
  - [Flow Control](#flow-control)
  - [Congestion Avoidance](#congestion-avoidance)
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

### Sockets

- **Socket**: The port number and IP address together make up a _communication end-point_, referred to as a **_socket_**.
  - The IP address connects us with the correct device or host.
  - The Port connects us with the correct application on the host.
- This is ket to creating end-to-end communication between devices/hosts.

> At a _conceptual level_ a socket is a communication end-point defined by an address-port pair(e.g facilitates multiplexing).

> In socket _programming terms_, the concept of implementing this concept involves instantiating a socket object to implement a TCP or UDP connection.

#### Sockets and Connections

> Having a conversation with 5 people at once would be easier if we could duplicate ourselves so that we had an instance of ourselves to have a one-on-one conversation with each of the 5 individuals. Otherwise trying to keep up the conversation could be difficult and prone to poor unreliable communication.

> This is a rough analogy for the differences between _connectionless_ and _connection-oriented_ network communication.

##### Connectionless

- A connectionless system would instantiate a socket object defined by the destination port and IP address that would listen for messages coming to it by invoking a `listen()` method. Messages could come from any source, but the connectionless system is only listening for messages that match the destination IP address/port pair.

##### Connection-Oriented

- Like the connectionless system, a socket object is defined by the destination ip address/port pair, and the `listen()` method is invoked and listens for incoming messages. But here's where things are different, when a message is received a new socket object is created that listens for messages that match the destination IP address/port pair, **and** match the source IP address/port pair.
- Any messages received that do not match the source and destination IP address/port pair will have a new socket object created for a new connection.

---

## Network Reliability

- All of the network communication layers up to the Transport Layer are effectively unreliable. Even though they may include checksum data within their header to ensure the data hasn't become corrupted along its journey, the data will just be discarded if it has.
  
### Building a Reliable Protocol

- Many of the applications we use rely on _reliable data transfer_.
- A communication network requires four fundamental elements for _reliable data transfer_.
  - In order delivery: data is received in the order that it was sent
  - Error detection: corrupt data is identified using a checksum
  - Handling data loss: missing data is retransmitted based on acknowledgements and timeouts
  - Handling duplication: duplicate data is eliminated through the use of sequence numbers
- These four elements alone ensure reliability but at the cost of inefficiency if other measures are not taken.
- A connection where each message and response is received one at a time is very slow and referred to as _stop-and-wait protocol_, and is a poor use of bandwidth.

### Pipelining for Performance

- **Pipelining**: sending multiple messages at once while still waiting for acknowledgments keeps the network reliable while simultaneously improving performance.
- Much better use of bandwidth while keeping the network reliable.

---

## Transmission Control Protocol(TCP)

- This is the protocol that provides reliable data transfer.
- Hides the complexity of reliable network communication from the application layer by :
  - data integrity
  - de-duplication
  - in-order delivery
  - retransmission of lost data.
- The reliability that makes TCP the protocol of choice at the Transport layer comes with performance challenges, which it tries to mitigate using:
  - flow control
  - congestion avoidance

### TCP Segments

- TCP encapsulates data from the Application layer above into the payload of the PDUs called _segments_.
- The main fields of segment header:
  - Source port number
  - Destination port number
  - Checksum: provides error detection for the segments. If segment is corrupted during its journey it will be discarded.
  - Sequence Number and Acknowledgement Number: used together to provide elements of reliability in communication process.
  - Window Size: utilized within flow control.
  - Flags: used for establishing connection between hosts.

### TCP Connections

- TCP is a _connection-oriented_ protocol.
- TCP uses a process called the **Three-way Handshake** to establish a connection:
  1. The sender sends a SYN message (a TCP Segment with the SYN flag set to 1)
  2. Upon receiving this SYN message, the receiver sends back a SYN ACK message (a TCP Segment with the SYN and ACK flags set to 1)
  3. Upon receiving the SYN ACK, the sender then sends an ACK (a TCP Segment with the ACK flag set to 1)
- Upon receiving the ACK, the sender can begin sending application data.

**_Three-way Handshake_**

There is a lot of overhead in the process of establishing a connection and providing reliability with TCP. To help mitigate this TCP makes an effort to ensure transfer of data is as efficient as possible.

### Flow Control

- Flow control is a mechanism to prevent the sender overwhelming the receiver with more data than it can process. Each participant in a connection lets the other participant know how much data it is willing to accept using a field in the TCP header.

### Congestion Avoidance

- Congestion avoidance is a process by which TCP uses data loss (based on the volume of retransmissions required) as a feedback mechanism to determine how congested the network is, and adjusts the amount of data being sent accordingly.

### Disadvantages of TCP

- Even with flow control and congestion avoidance there is a significant amount of latency overhead with TCP. 
- **Head-of-Line blocking(HOL)**: is a general programming concept which relates to how issues in delivering/processing one message in a sequence of messages can delay or 'block' the delivery or processing of the subsequent messages in the sequence.
- HOL blocking can occur as a result of the fact that TCP provides for in-order delivery of segments. Although this in order delivery is one aspect of TCP's reliability, if one of the segments goes missing and needs to be retransmitted, the segments that come after it in the sequence can't be processed, and need to be buffered until the retransmission has occurred. This can lead to increased queuing delay which, as we saw in an earlier assignment, is one of the elements of latency

---

## User Datagram Protocol(UDP)

- UDP doesn't implement the safeguards for data transfer like TCP does.
- The PDU for UDP is called a **Datagram**.
- The header of a Datagram includes these fields:
  - **Source Port**
  - **Destination Port**
  - **Length**: 
  - **Checksum**: will discard corrupted Datagrams if corrupted along communication route, but will not recover them.
- UDP doesn't implement the reliable data transfer elements that TCP does:
  - It provides no guarantee of message delivery
  - It provides no guarantee of message delivery order
  - It provides no built-in congestion avoidance or flow-control mechanisms
  - It provides no connection state tracking, since it is a connectionless protocol

### Use cases for UDP

- The upside to UDP is its **speed** and **flexibility**.
- Works well for loss-tolerant application processes like voice and video communication and gaming.

---

## Overview
