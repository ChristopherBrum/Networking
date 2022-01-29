# Questions about the Transport Layer

- Communication Between Processes
  - What is the difference between how devices communicate and applications communicate via the internet?
  - What is multiplexing and demultiplexing?
  - What is a port and what does it do?
  - What do we mean when we say a _server is listening_?
  - What information does a PDU within the transport layer include, regardless of the Transport Protocol used?
  - What two things allow end-to-end communication between applications on different machines?
  - What is a socket?
  - How can we relate a _communication end point_ to the postal service and an apartment building?
  - What do we mean by endpoint?
  - At the implementation level what can a _socket_ be referring to?
  - How does a connectionless system and a connection oriented system differ?
- Network Reliability
  - What about the early layers of our network model makes them unreliable?
  - What processes do we have in levels lower than the Transport layer to identify data thats been corrupted within the Internet or Ethernet protocol layers?
  - What does reliability mean in terms of the transport layer?
- Transportation Control Protocol(TCP)
  - What do we mean when we say TCP is a connection-oriented protocol?
  - What does TCP use to establish a connection?
  - What are the key things that TCP uses to ensure a reliable connection?
  - What is a key principal of TCP?
  - What abstraction does TCP provide?
  - What are the four main complexities of reliable network communication at the Application level that TCP attempts to solve/hide?
  - What is the PDU used with the TCP protocol?
  - What does TCP use to make an application data connection?
  - What is flow control in terms of the TCP protocol?
  - What does congestion avoidance do?
  - What is HOL blocking?
  - What are the downsides to TCP?
- User Datagram Protocol(UDP)
  - What's a major difference of UDP and TCP?
  - Whats the PDU for the UDP protocol?
  - What _doesn't_ UDP do when compared to TCP?
  - What's positives does UDP have over TCP?

---

1. ADDED**What is a network?**
2. ADDED**What is the Internet?**
3. **Is the Internet the same thing as a network?** 
4. ADDED**What is WEB (world wide web)**
5. **What is the difference between network, Internet, and WEB?**
6. ADDED**What are LAN and WLAN?**
7. **What is a protocol?**
8. **What is the role of protocols?** 
9. **Why there are many different types of protocols?**
10. **What does it mean that a protocol is stateless?**
11. **Explain briefly what are OCI and TCP/IP models? What is the purpose of having models like that?** 
12. **What is PDU? What is its role?**
13. **What is Data Payload?** 
14. **What is the relationship between PDU and Data Payload?** 
15. **Explain How lower-level protocols work in general?**
16. **What is encapsulation in the context of networking?**
17. **Why do we need encapsulation?** 
18. **What are the characteristics of a physical network?** 
19. **How can we as developers deals with the limitations of physical network?**
20. **What is Latency?**
21. **What is** **Bandwidth?**
22. **What are** **Network 'Hops'?**
23. **What is the relationship between network 'Hops' and latency?** 
24. **What is a switch and what is it used for?**
25. **What is a hub and what is it used for?**
26. **What is a modem and what it is used for?**
27. **What is a router and what is it used for?**
28. **What is the difference between a switch, hub, modem, and router?**
29. **How does the Internet works?**
30. **What is a MAC address and what is its role in network communication?** 
31. **Give an overview of the Link/Data Layer**
32. **What is included in an Ethernet frame?**
33. **Give an overview of the Internet/Network Layer and it's role.**
34. **What is IP?**
35. **What is IP address?** 
36. **What are the components of IP addresses?** 
37. **What is a packet in computer networking?**
38. **Why do we need both MAC addresses and IP addresses?** 
39. **What is DNS and how does it work?**
40. **How do port numbers and IP addresses work together?**
41. **What is a checksum and what is it used for? How is it used?**
42. **Give an overview of the Transport Layer.** 
43. **What are the fundamental elements of reliable protocol?**
44. **What is pipe-lining protocols? What are the benefits of it?**
45. **What is a network port?**
46. **What is a port number?**
47. **What is a network socket?**
48. **Is TCP connectionless? Why?**
49. **How do sockets on the implementation level relate to the idea of protocols being connectionless or connection-oriented?** 
50. **What are sockets on implementation and on a theoretical level?** 
51. **What does it mean that the protocol is connection-oriented?**
52. **What is a three-way handshake? What is it used for?**
53. **What are the advantages and disadvantages of a Three-way handshake?** 
54. **What are multiplexing and demultiplexing?**
55. **How does TCP facilitate efficient data transfer?**
56. **What is flow control? How does it work and why do we need it?**
57. **How TCP prevents from receiver's buffer to get overloaded with data?**
58. **What is congestion avoidance?**
59. **What is network congestion?**
60. **How do transport layer protocols enable communication between processes?**
61. **Compare UDP and TCP. What are similarities, what are differences? What are pros and cons of using each one?** 
62. **What does it mean that network reliability is engineered?**
63. **Give an overview of the Application Layer.** 
64. **What is HTML?**
65. **What is a URL and what components does it have?**
66. **What is a Query string? What it is used for?**
67. **What URL encoding is and when it might be used for?**
68. **Which characters have to be encoded in the URL? Why?**
69. **What is www in the URL?** 
70. **What is URI?**
71. **What is the difference between scheme and protocol in URL?**
72. **What is HTTP?**
73. **What is the role of HTTP?**
74. **Explain the client-server model of web interactions, and the role of HTTP as a protocol within that model**
75. **What are HTTP requests and responses? What are the components of each?**
76. **Describe the HTTP request/response cycle.**
77. **What is a** s**tate in the context of the 'web'?**
78. **What is** s**tatelessness?**
79. **What is a stateful Web Application?**
80. **How can we mimic a stateful application?**
81. **What is the difference between stateful and stateless applications?**
82. **What does it mean that HTTP is a 'stateless protocol?** 
83. **Why HTTP makes it difficult to build a stateful application?**
84. **How the idea that HTTP is a stateless protocol makes the web difficult to secure?** 
85. **What is a `GET` request and how does it work?** 
86. **How is `GET` request initiated?**
87. **What is the HTTP response body and what do we use it for?**
88. **What are the obligatory components of HTTP requests?** 
89. **What are the obligatory components of HTTP response?**
90. **Which HTTP method would you use to send sensitive information to a server? Why?**
91. **Compare `GET` and `POST` methods.**
92. **Describe how would you send a `GET` request to a server and what would happen at each stage.**
93. **Describe how would you send `POST` requests to a server and what is happening at each stage.**
94. **What is a status code? What are some of the status codes types? What is the purpose of status codes?** 
95. **Imagine you are using an HTTP tool and you received a status code `302`. What does this status code mean and what happens if you receive a status code like that?** 
96. **How do modern web applications 'remember' state for each client?**
97. **What role does AJAX play in displaying dynamic content in web applications?**
98. **Describe some of the security threats and what can be done to minimize them?**
99. **What is the Same Origin Policy? How it is used to mitigate certain security threats?**  
100. **What determines whether a request should use `GET` or `POST` as its HTTP method?**
101. **What is the relationship between a scheme and a protocol in the context of a URL?**
102. **In what ways can we pass information to the application server via the URL?**
103. **How insecure HTTP message transfer looks like?**
104. **What services does HTTP provide and what are the particular problems each of them aims to address?**
105. **What is TLS Handshake?**
106. **What is symmetric key encryption? What is it used for?**
107. **What is asymmetric key encryption? What is it used for?**
108. **Describe SSL/TLS encryption process.**
109. **Describe the pros and cons of TLS Handshake**
110. **Why do we need digital TLS/SSL certificates?** 
111. **What is it CA hierarchy and what is its role in providing secure message transfer?**
112. **What is Cipher Suites and what do we need it for?**
113. **How does TLS add a security layer to HTTP?**
114. **Compare HTTP and HTTPS.**
115. **Does HTTPS use other protocols?** 
116. **How do you know a website uses HTTPS?**
117. **Give examples of some protocols that would be used when a user interacts with a banking website. What would be the role of those protocols?** 
118. **What is server-side infrastructure? What are its basic components?**
119. **What is a server? What is its role?** 
120. **What are optimizations that developers can do in order to improve performance and minimize latency?**

---

- What is multiplexing/demultiplexing?
  - Multiplexing is the ability to transmit multiple signals over a single channel, and demultiplexing is the reverse.

- What enables multiplexing at the Transport layer?
  - Ports allow multiplexing at the Transport layer in that there can be multiple ports connected through a single IP address(e.g. a single server IP Address can create connections with via different Port numbers)

- What is a network socket?
  - A network socket is a combination of an IP Address and a Port number.

- How do sockets differ at the conceptual and implementation level?
  - On a conceptual level sockets facilitate multiplexing and on a practical level instantiating a socket object can implement a TCP or UDP connection.

- Is the underlying network reliable?
  - Nope, its inherently unreliable.

- How do we achieve seemingly reliable data transport over the network?
  - In order to achieve reliable data transport we need a system of rules(i.e. protocols) in place to enable it.

- What is a connection-oriented system?
  - In a connection-oriented system a _new socket object_ is instantiated that establishes a dedicated channel between processes running on separate devices.
  - This socket will only listen for messages coming from the source socket(IP address/Port pair) and sent to the destination socket(IP address/port pair).

- What is a four-tuple in terms of network connections?
  - A _four tuple_ is the source IP address and port number, and the destination IP address and port number used when establishing a connection-oriented system at the Transport Layer.

- What is a connectionless system?
  - In a connectionless system relies on a single socket for all communication, it does not establishing a dedicated line of communication, and responds to all communications individually as they arrive.

- What are the pros of a connection-oriented system?
  - _Reliability_: A connection-oriented system is useful for establishing specific rules regarding communications(i.e. message acknowledgement and in-order delivery in TCP)

- What are the pros of a connectionless system?
  - _Efficiency_: there is low latency overhead due to not needing to establish a dedicated line of communication nor waiting for acknowledgements from the receiver.
  - _Flexibility_: much simpler than a connection-oriented system and leaves room for some reliability elements to be incorporated if desired.

- What is pipelining?
  - Sending multiple messages at once without waiting for acknowledgements. As the acknowledgement messages are received additional messages can then be sent out. This helps mitigate the latency issues of waiting for acknowledgement messages of messages sent one at a time.

- What is Network Reliability?
  - Network reliability ensures a dedicated line of communication is established between two processes which enables four key services;
    1. In-order delivery
    2. Error handling (by way of checksums)
    3. Retransmitting lost data
    4. Handling duplicate data

- What is the Three-way-handshake?
  - The Three-way-handshake is the process that TCP utilizes to establish a dedicated and reliable line of communication between processes.
    - Sender sends a `SYN` segment to make receiver aware of incoming data.
    - Upon receiving the `SYN` segment, receiver sends back a `SYN ACK` segment ensuring it received the `SYN` segment and to ensure its responses are being received.
    - Upon receiving the `SYN ACk` acknowledgement, sender sends a `ACK` segment confirming its receiving messages from the receiver, and the connection can be established.
    - This ensures reliable connection between devices and synchronizes sequencing numbers used during this connection process.

- What are the upsides to using TCP?
  - TCPs reliability is a key aspect of its popularity. The connection process(three-way-handshake) enables in-order deliver, handles data loss, handles data duplication, and allows for flow control and congestion avoidance.

- What is flow control?
  - A service of TCP that helps ensure data is transmitted as efficiently as possible by preventing the sender from overwhelming the receiver with too much data at once. Uses the data passed back from the receiver in the window field of the segment header to adjust the amount of data it sends in the next segment.

- What is congestion avoidance?
  - A service of TCP that helps to prevent network congestion and mitigate latency overhead by using the number of retransmissions of data are occurring as a feedback mechanism to determine how congested the network is. More data loss/retransmissions of data will indicate theres more data on the network that it has capacity to transmit and will reduce the size of the transmissions being sent.

- What are the main downsides to using TCP?
  - TCP provides reliability at the cost of speed.
  - Head-of-line delays can occur because of its in-order delivery mechanism, which can cause delays when retransmissions of segments can "hold up" other segments behind it in the buffer.

- What are the upsides to using UDP?
  - _Speed_: there is low latency overhead due to not needing to establish a dedicated line of communication as is in TCP nor waits for acknowledgements from the receiver.
  - _Flexibility_: much simpler than a connection-oriented system and leaves room for some reliability elements to be incorporated if desired.

- What are the downsides to using UDP?
  - Inherently unreliable.
  - No guarantee of message delivery, delivery order, congestion avoidance, flow control, or state tracking.

- What characteristics do TCP and UDP share?
  - Both use checksums for error handling.
  - Both utilize port numbers in the Header of their PDUs.
