# Transport Layer Security

- [TLS Protocol](#tls-protocol)
  - [TLS Encryption](#tls-encryption)
    - [Symmetric Key Encryption](#symmetric-key-encryption)
    - [Asymmetric Key Encryption](#asymmetric-key-encryption)
    - [The TLS Handshake](#the-tls-handshake)
    - [Cipher Suites](#cipher-suites)
  - [TLS Authentication](#-tls-authentication)
    - [Certificate Authorities and the Chain of Command](#certificate-authorities-and-the-chain-of-command)
  - [TLS Integrity](#tld-integrity)
    - [TLS Encapsulation](#tls-encapsulation)
    - [Message Authentication Code (MAC)](#message-authentication-code)

---

## TLS Protocol

- TLS started life as a protocol named Secured Socket Layer(SSL) and was standardized and renamed Transport Layer Security(TLS) in 1999.
- There re three main security services provided by TLS:
  1. **Encryption**: the process of encoding a message so it can only be read by those with an authorized means decrypting the message.
  2. **Authentication**: the process that verifies the identity of a particular party in the message exchange.
  3. **Integrity**: the process of detecting whether a message has been tampered with or falsified.

### TLS Encryption

#### Symmetric Key Encryption

- **Symmetric Key Encryption** is a form encryption where both parties involved in sending messages have the same key used to encrypt and decrypt messages.
  - **_It uses the same key to encrypt and decrypt._**
  - For this system to work securely both parties must have the same key with nobody else having access to it.
  - In order for this key to be shared between both parties safely, we need to actually encrypt the key itself.

#### Asymmetric Key Encryption

- **Asymmetric Key Encryption**, also known as **public key encryption**, uses a pair of _keys_, a _public key_ and a _private key_.
  - Unlike with symmetric key encryption where the same key is used to encrypt and decrypt the message, _**asymmetric key encryption used a public key to encrypt and a private key to decrypt**_.
  - Messages encrypted with the public key can **only** be decrypted with the private key.
  - The public key is openly available but the private key is possessed by the _**message receiver**_.
  - This form of encryption is intended to work in one direction only.

#### The TLS Handshake

- TLS uses a combination of symmetric and asymmetric cryptography.
  - Most of the message exchange uses symmetric key encryption, but the initial symmetric key exchange is conducted using asymmetric key encryption.
  - The process where the initial secure connection is setup is conducted within the **_TLS handshake_**
    - TLS assumes that TCP is being used at the Transport Layer.
    - The _TLS handshake_ takes place after the _TCP Handshake_.

TLS Handshake:

1. A `ClientHello` message is sent after the TCP `ACK` message, and includes a number of things including:
    - Maximum version of the TLS protocol the client can support.
    - List of Cipher Suites the client can use.
2. When the server receives the `ClientHello` message it responds with its own message, that includes:
    - A `ServerHello` message that sets the protocol version, Cipher Suite, and other relevant info.
    - It sends its certificate(which contains its public key), and a...
    - `ServerHelloDone` marker that tells the client its done with this step of the handshake.
3. When the client receives the `ServerHelloDone` marker, it initiates the key exchange process that enables the client and server to both securely receive a copy of the symmetric encryption key used for the majority of secure message transfer between client and server.
    - The process for generating the symmetric keys varies depending on the key exchange algorithm selected as part of the Cipher Suite.
4. The server sends messages with a `ChangeCipherSpec` and `Finished` flags, and now the client and server can begin secure communication using the symmetric key.

**Key components that TLS handshake is used for:**

- To agree on which version of TLS to use.
- To agree on the algorithms to be used in the Cipher Suite.
- Enable the exchange of symmetric keys to be used for message encryption.

The complexity of the TLS handshake can add additional round trips of latency on top of the latency of the TCP handshake, so has a significant impact on efficiency.

#### Cipher Suites

- A _cipher_ is a cryptographic algorithm. A set of steps used for encrypting, decrypting, and related tasks.
- A _cipher suite_ is a set of ciphers.
- TLS uses different algorithms for different aspects of establishing and maintaining a secure connection.
- The combined set of algorithms to be used form the Cipher Suite, and is agreed upon as part of the TLS handshake.
- As part of the ClientHello message, the client sends a list of algorithms it supports for each required task, and the server chooses from these according to which algorithms it also supports.

---

### TLS Authentication

#### Certificate Authorities and the Chain of Command

---

### TLS Integrity

#### TLS Encapsulation

#### Message Authentication Code (MAC)