  # Intro to HTTP

- [The Application Layer](#the-application-layer)
  - [Application Layer Protocols](#application-layer-protocols)
- [HTTP and the Web](#http-and-the-web)
  - [Brief History of the Web](#brief-history-of-the-web)
- [Intro to HTTP Book](#intro-to-http-book)
  - [Background](#background)
    - [Introduction](#introduction)
      - [A Brief Overview & History](#a-brief-overview-and-history)
      - [How the Internet Works](#how-the-internet-works)
        - [DNS](#dns)
      - [Clients and Servers](#clients-and-servers)
      - [Resources](#resources)
      - [Statelessness](#statelessness)
    - [What is a URL?](#what-is-a-url)
      - [URL Components](#url-components)
      - [Query Strings/Parameters](#quesry-strings-and-parameters)
      - [URL Encoding](#url-encoding)
    - [Preparations](#preparations)
      - [HTTP GUI Tools](#http-gui-tools)
      - [HTTP Command line Tools](#http-command-line-tools)
  - [HTTP](#http)  
    - []

---

## The Application Layer

- The Application layer is not the Applications running on a host but rather the protocols that provide communication between application processes.
- Application processes primarily interact with the protocols defined at the Application layer of both the OSI and TCP/IP models, but are not relegated to _only_ interacting with this layer, for example application processes interact with the Transport layer when opening a TCP socket.

> The Application layer is focused on the structure of the message being sent and the data that is should contain, as opposed to protocols at the lower layers of the Network Model, which are concerned with sending/managing data from one point to another.

### Application Layer Protocols

- Application layer protocols are the rules that dictate how applications communicate at a syntactical level.
- Different Application level protocols exists to aide in different applications being able to communicate.

## HTTP and the Web

- The World WIde Web, or _web_, is a **service** that is accessible via the internet. It's a giant information system that is navigable by use of URLs.
- URL stands for; _Uniform Resource Locator_.
  
### Brief History of the Web

- The idea was conceived at CERN in 1989 by Tim Berners-Lee.
- Formalized in 1990 by Berners-Lee and Robert Cailliau.
- Berners-Lee was trying to find an easier way for computers connected to the network in different parts of the world to be able to access the data stored at CERN.
- His idea was to utilize the internet and a new technology known as _hypertext_ to create an easily accessible information system. The information would be stored in computers as structured resources, and these resources could be connected together by use of hyperlinks to create a vast world wide _web_ of shared information.
- This system would require a _uniformity_ in:
  - ...structure for rendering information in a viewable format.
  - ...how the resources were addressed so they could be easily accessed.
  - ...the way a request for a particular resource was made, and responded to.
- **Hypertext Markup Language**: was the way in which recourses in the system were to be structured, which allowed a computer to render the accessed resource viewable.
- **Uniform Resource Identifier**: is the uniform way in which resources are _addressed_ so that a particular string of characters could be used to access a resource from the web.
- **Hypertext Transfer Protocol**: is the set of rules that provide uniformity to the way in which resources on the web are transferred between applications.

## Intro to HTTP Book
  
### Background

#### Introduction

##### A Brief Overview & History

##### How the Internet Works

###### DNS

##### Clients and Servers

##### Resources

##### Statelessness

#### What is a URL?

##### URL Components

##### Query Strings/Parameters

##### URL Encoding

#### Preparations

##### HTTP GUI Tools

##### HTTP Command line Tools

## HTTP
