# Questions about the Internet

- Intro
  - What is do we mean by network infrastructure?
  - What is the physical network?
  - What are protocols?

- What is the Internet?
  - What is IP?
  - How does IP enable communications between devices?
  - What is the Internet?
  - What is a network?
  - What is a LAN?
  - What are networking bridging devices?
  - What limitations does a LAN present?
  - What does a hub or switch do?
  - What does a router do?
  - What do we mean by network of networks?

- Protocols
  - What is a protocol?
  - Why do we need protocols?
  - What are some common protocols used for internet communication?
  - Why so many different protocols?

- A Layered System
  - What does layering achieve?
  - What are the two most popular computer network communication layering systems used?
  - What are Data Protocol Units?
  - What do DPU's consist of?

- The Physical Network (layer 1)
  - How are bits and signals relevant to the physical network of the internet?
  - What are the 2 main characteristics of a physical network?
  - What are the different elements of latency?
  - What is bandwidth?
  - How can we as developers take the physical network into account?

- The Link/Data Link Layer (layer 2)
  - What does the Data/Data Link layer do overall?
  - What PDU does the Link/Data Link layer encapsulate data from the layer above into?
  - What does the Data/Data Link layer encapsulate data from above within?
  - How does the Data/Data Link layer know where to send data?
  - What is the interframe gap?
  - What's important to remember about ethernet standards?
  - What are MAC addresses?
  - What are differences between a hub and a switch?
  - What problem do we run into with connecting devices together using switches or routers?

- The Internet/Network Layer (layer 3)
  - What is the Internet?Network layer responsible for?
  - What PDU does the Internet/Network layer encapsulate data from the layer above into?
  - What are the two current IP protocols currently used?
  - How does an IP address differ from a MAC address?
  - What is an IP address?
  - How does the Internet protocol interact with routers when finding a specific IP address?
  - What is sub-netting?
  - What is routing and why its necessary?
  - Why do we need IPv6?

---

- What is a network?
  - In its simplest form a network is two computers connected together with a cable and configured in a way so they can communicate with one another.

- What is the internet?
  - The internet is the infrastructure that enables inter-network communication. It consists of a physical infrastructure that allows binary data to travel between devices, and the protocols that allows that infrastructure to function.

- What are the two main components that comprise the internet?
  - The internet is comprised of the physical network(cables, devices, routers, switches, etc.) and the protocols that enable the data to be shared across that infrastructure.

- What is a protocol?
  - A system of rules.

- What is a network protocol?
  - Network protocols are systems of rules governing the exchange or transmission of data over a network.




- What protocols are utilized at different layers of network communication and what are they responsible for?

- How is encapsulation utilized within the layered system of network protocols?




- What is the mechanism in which encapsulation is implemented within the layered system of network protocols?
  - Encapsulation is implemented through the use of Protocol Data Units(PDUs), where the PDU of one layer becomes the data payload of the PDU for the layer beneath it.

- What is the Physical Network and what is it responsible for?
  - The Physical Network is the tangible real-world infrastructure that binary data travels through, by way of electrical signals, light, and radio waves.

- What is Latency?
  - Latency is the measure of time. It is the amount of time that a piece of data takes to travel from one point to another.

- What is Bandwidth?
  - Bandwidth is a measure of capacity. It is the amount of data that can travel from one point to another within a set amount of time.

- What is Ethernet Protocol responsible for?
  - The Ethernet Protocol is responsible for the physical point-to-point communication between devices(NICs and switches specifically).

- What is the PDU used with Ethernet Protocol?
  - A frame is the PDU utilized with Ethernet Protocol.

- Within the Ethernet protocol what is used to identify where data will travel from hop-to-hop on its journey between hosts?
  - The Ethernet protocol uses MAC addresses to identify source and destination of devices along its path between hosts.

- What is Internet Protocol(IP) responsible for?
  - Internet protocol is responsible for logical inter-network communication.

- What are the two versions of IP, and why do we need more than one?
  - Currently we have IPv4 and IPv6. The need for IPv6 is because IP utilizes IP addresses to identify devices connected to the network and only allows for ~4.3 billion addresses. We will exceed that number in the near future, and IPv6 allows for substantially more.

- What does IP use to identify devices connected to the network?
  - IP uses IP Addresses to direct data between networked devices.
  
- What PDU is used with Internet Protocol?
  - A packet is the PDU utilized with Internet Protocol.
