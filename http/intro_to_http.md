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
  - [HTTP](#http)  
    - [Making Requests](#making-requests)
    - [Request Methods](#request-methods)
    - [GET Requests](#get-requests)
    - [POST Requests](#post-requests)
    - [HTTP Header](#http-headers)
  - [Processing Responses](#processing-responses)

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

---

## Intro to HTTP Book
  
### Background

#### A Brief Overview & History

- **Hypertext Transfer Protocol(HTTP)** was created by Tim Berners-Lee in the 1980's as the set of rules that act as the link applications and the transfer of hypertext documents.
- Essentially, an agreed message format for how computers communicate over the web.
- **Request Response Protocol**: HTTP follows a simple model where a _client_ makes a **request** to a _server_ and then waits for a **response**. It is therefore known as a **request response protocol**.

#### How the Internet Works

- Internet is made up of millions of interconnected networks allowing all devices connected to it to communicate with one another.
- All devices connected to the internet are provided a unique marker called an **IP address** that allows other devices to locate and communicate with it. IP Addresses will be provided by an internet service provider.
- A **Port number** provides additional information about how to communicate.

Example of an IP Address(192.35.212.69):

```txt
192.35.212.69
```

When a port number(2345) is included with an IP address:

```txt
192.35.212.69:2345
```

- The IP Address is used to identify a networked device and the port number is used to direct messages to a specific application process on the networked device.

#### DNS

- **Domain Name System(DNS)**: handles mapping from a URL to an IP Address so that the IP Address can then be used to make a request to the server.
- DNS is a distributed database that maps URLs like `www.launchschool.com` to their corresponding IP Address `197.251.230.45`.
- DNS databases are stored on system of **DNS servers** around the world.
- Because it is a distributed system if one DNS server does not contain the requested domain name it will route the request to another DNS server up the hierarchy until it is found. Once the domain is found the DNS server will return the corresponding IP Address to complete the client request.

Typical Process of entering a url into a browser(aka how the internet works):

1. Enter URL into browser address bar.
2. Browser creates HTTP request, its packaged up and sent to the devices network interface.
3. If browser has a record of the IP Address for the requested URL in its DNS cache;\
  3a. it uses cached address.\
  3b. otherwise a DNS request is made to the Domain Name System to get the IP Address for the requested domain.
4. Packaged HTTP request is sent to the server with the matching IP Address, via the internet.
5. The server sends a response back to your devices network interface where it hands it to the browser.
6. The browser displays the response in the form a webpage/webapp.


#### Clients and Servers

- **Client**: the most commonly used client is an application called _the web browser_, and is responsible for issuing HTTP requests and processing HTTP responses in a user-friendly manner on your screen.
- Web browsers aren't the only applications that use HTTP but are the most frequently used on a day-to-day basis.
- **Server**: a server is a remote device capable of handling incoming requests, and then issuing a response back relative to the request received.

#### Resources

- **Resource**: a generic term for things you interact with on the internet by way of a URL.
  - This includes images, videos, webpages, files, and can even be a piece of software.
  - There's no limit to the number of resources on the internet.

#### Statelessness

- **Stateless**: a protocol is considered _stateless_ if it's been designed in a way where each request/response pair is completely independent of the previous one.
- HTTP _is_ a stateless protocol.
  - This mean the server does not hold on to data/information(_state_) between requests.
  - Because of this if a request is broken/lost there is no clean up to be done by the system.
  - This makes HTTP resilient while also a difficult protocol for building _stateful_ applications.

> Because HTTP is the protocol of the internet web developers must work hard to simulate a stateful experience in web applications.

#### What is a URL?

- **Uniform Resource Locator**: is a subset of URI and specifies where a resource exists(e.g. domain name) and the mechanism for retrieving it(scheme).
- **Uniform Resource Identifier**: is a superset of URL and specifies how resources are located.

#### URL Components

Example URL: "`http://www.example.com:88/home?item=book`"

- **The Scheme:** `http`
  - Always precedes the colon and two forward slashes(`://`) and tells the web client(e.g. browser) how to access the resource(e.g. webpage). In the example above it instructs the web client to make a HTTP request.
- **The Host:** `www.example.com`
  - Tells the client where the resource is hosted or located.

- **The Port:** `:88`
  - The port or port number is only required if you intend to use a port different then the default.

- **The Path:** `/home/`
  - The path shows what local resource is being requested, and is optional.
  - Sometimes the path can point to a specific resource on the host.
  - `www.example.com/home/index.html` points to an HTML file on the `example.com` server.

- **The Query String:** `?item=book`
  - This is made up of query parameters and is used to send to data to the server. Also optional.

#### Query Strings/Parameters

Example URL with a query string: `http://www.example.com?search=ruby&results=10`

| Query String Component | Description |
|---|---|
| `?` | Reserved character that marks the start of a query string |
| `search=ruby` | A parameter name/value pair |
| `&` | Reserved character used when adding more parameters to the query string |
| `results=10` | Another name/value pair |

Another example URL with a query string: `http://www.phoneshop.com?product=iphone&size=32gb&color=white`

- `http` is the **scheme** and tells the client to make a HTTP request...
- ...to the **host** `www.phoneshop.com`.
- The `?` signifies the begin of the query string.
- `product=iphone` is a parameter name/value pair.
  - the parameter name is `product` and the parameter value is `iphone`.
- the `&` is a query string separator.
- `size=32gb` is a parameter name/value pair.
  - the parameter name is `size` and the parameter value is `32gb`.
- the `&` is a query string separator.
- `color=white` is a parameter name/value pair.
  - the parameter name is `color` and the parameter value is `white`.

The url with query strings above is asking for the `www.phoneshop.com` to narrow down its search for a product that matches`iphone`, with a size that matches `32gb`, abd its color matches `white`.

Because query strings are passed in through the URL they are only used in **HTTP GET requests**.

- Query String are handy but have their limitations:
  - They have a max length so you are limited in the number of query string you can pass them.
  - The name/value pairs are visible in the URL so no sensitive information should not be passed in this way.
  - Space and special characters, like `&`, cannot be used in a query string and must be URL encoded.

#### URL Encoding

- URLs only accept certain characters from teh 128-character ASCii char set. Reserved or unsafe characters must be encoded by using the `&` character followed by 2 hexadecimal digits that represent the ASCii code of the character.

| Character | ASCii Code | Example |
|---|---|---|
| Space | 20 | `/tommy%20hilfiger.html` |
| ! | 21 | `/moredesigns%21.html` |
| + | 2B | `/spencer%2B.html` |
| # | 23 | `/%23somequotes%23.html` |

- Characters must be encoded if:
  1. They have no corresponding value in the standard [ASCii Character Set](https://www.asciitable.com/).
  2. Using the character may be misinterpreted or possibly modified by some systems. `%` can't be used for encoding other characters, so is unsafe.
  3. The character is reserved for a special use with URLs.(e.g. `/`, `:`, `&`, `@`)

--

## HTTP

### Making Requests

When using a web browser, the URL is typed in the address bar.

- This URL is used to:
  - identify the protocol to be used for a request by using the **scheme**.
  - determine the IP Address to send the request to by using the **host**.
  - determine the appropriate port number based on the protocol being used.
  - and optionally:
    - locate a specific resource on the host by way of the **path**.
    - add additional parameters to the request by way of query params.

The web browser will package this request and send it to the appropriate web server that issues an appropriate response back, which the browser then processes into a webpage.

- The resource requested by entering our URL into the address bar returns some Hypertext Markup Language(HTML) which is what the browser uses to display the desired webpage.
- Within the HTML body are references to many other resources such as css stylesheets, javascript files, images, videos, etc.
- The browser knows these resources will need to be fetched as well in order for the webpage to look and function appropriately so it automatically makes requests for each of these additional resources.

#### Request Methods

- **HTTP Request Method**: this command tells the server the action to be performed on a resource.
- For every request sent to the server a _status code_ is sent back with the response. (e.g. 200, 301, 404)

| HTTP Method | CRUD Operation | Description | Possible Status COde Response(not complete) |
|---|---|---|---|
| GET |  Read | The HTTP GET method is used to read (or retrieve) a representation of a resource. | 200 (OK), single entity. 404 (Not Found), if ID not found or invalid. |
| POST | Create | The POST method is most often utilized to create new resources. | not applicable |
| PATCH | Update | PATCH is used to modify resources. | 200 (OK) or 204 (No Content). 404 (Not Found), if ID not found or invalid. |
| DELETE | Delete | DELETE is used to delete a resource identified by filters or ID. | 204 (No Content). 404 (Not Found), if ID not found or invalid. |
| PUT | Update/Replace | PUT is used to update or replace a resource. | not implemented |

#### GET Requests

- `GET` will be the two most common method, and is used when wanting to retrieve information.
- A _GET_ request can be initiated by typing a URL into the address bar, by clicking a link on a webpage, or ny a number of other ways.
- GET requests are used to retrieve a resource, and most links are GETs.
- The response from a GET request can be anything, but if it's HTML and that HTML references other resources, your browser will automatically request those referenced resources. A pure HTTP tool will not.

#### POST Requests

- POST is used when you want to initiate some sort of action on the server or send data to the server.
- POST requests are often used when submitting a form.
- They allow you to send much more data than through query strings.
- They allow you to send data privately, not exposed in the URL like query strings are.

> The **body** contains the data with which we want transmitted to the server in a HTTP message, and is optional.

- The body can be empty when sending a request. Think of it like the letter placed inside an envelope thats being mailed. It doesn't need to contain anything for the letter to be delivered.
- When you fill out a form and submit it you're making a POST request, the browser, HTTP tool or curl is submitting the data entered into the body of the HTML document, and then redirecting to a new page.
- Where you are redirected to is determined by the `Location` header in the POST response and uses a GET request to navigate to that resource.

#### HTTP Headers

- HTTP headers send additional information along with a request/response cycle.
- They are colon separated name/value pairs.

**Request Headers** provide more info about the client and the resource being fetched.

| Field Name | Description | Example |
|---|---|---|
| Host | Domain name of the server | Host: www.google.com |
| Accept-Language | Acceptable languages | Accept-Language: en-US,en;q=0.8 |
| User-Agent | String that identifies the client | User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36 |
| Connection | Type of connection the client prefers | Connection: keep-alive |

---

## Processing Responses

### Status Code

- The **Status Code** is a 3 digit number sent back by the server after receiving a request and signals the status of the request.
- There may be `status text` accompanying the `status code` that will give a brief description of the code.
- This can be found under the **Status** column within the Inspector.

Here are the most common status codes:

| Status Code | Status Text | Meaning |
|---|---|---|
| 200 | OK | Request was handled successfully |
| 302 | Found | Requested resource has changed temporarily/usually a redirect |
| 404 | Not Found | Requested resource cannot be found |
| 500 | Internal Server Error | Server encountered generic error |

### Status Headers

- **Status Headers** give us more information about the resource being sent back from a request.

Here are a few of the response headers to be aware of:

| Header Name | Description | Example |
|---|---|---|
| Content-Encoding | Type of encoding used on the data | Content-Encoding: gzip |
| Server | Name of the server | Server:thin 1.5.0 codename Knife |
| Location | Notifies client of new resource location | Location: https://www.github.com/login |
| Content-Type | Type of data the response contains | Content-Type:text/html; charset=UTF-8 |
