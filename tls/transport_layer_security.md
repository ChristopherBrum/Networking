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
  - For this system to work securely both parties must have the same key with nobody else having access to it.


#### Asymmetric Key Encryption

#### The TLS Handshake

#### Cipher Suites

---

### TLS Authentication

#### Certificate Authorities and the Chain of Command

---

### TLS Integrity

#### TLS Encapsulation

#### Message Authentication Code (MAC)