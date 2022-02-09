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
    - [Status Codes](#status-codes)
    - [Status Headers](#status-headers)
  - [Stateful Web Applications](#stateful-web-applications)
    - [A Stateful App](#a-stateful-app)
    - [Sessions](#sessions)
    - [Cookies](#cookies)
    - [AJAX](#ajax)
  - [Security](#security)
    - [Secure HTTP (HTTPS)](#secure-http)
    - [Same-origin Policy](#same-origin-policy)
    - [Session Hijacking](#session-hijacking)
      - [Countermeasures for Session Hijacking](#countermeasures-for-session-hijacking)
    -[Cross-Site Scripting](#cross-site-scripting)
      - [Potential Solutions for XSS](#potential-solutions-for-xss)
  - [Some Background](#some-background)
    - [Client Server](#client-server)
    - [HTTP Over TCP/IP](#http-over-tcp/ip)

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

---

## HTTP

### Making Requests

The most important components to understand about an HTTP request are:

- HTTP method
- path
- headers
- message body (for POST requests)

---

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

The most important parts of an HTTP response are:

- status code
- headers
- message body, which contains the raw response data

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

---

## Stateful Web Applications

- HTTP is a _stateless_ protocol, meaning the server does not hold on to data between request/response cycles.
  - Each request is seen as a brand new entity, and different request are not aware of each other.

> Web developers utilize a few key things to simulate a _stateful_ experience for users:
> - sessions
> - cookies
> - AJAX

### A Stateful App

When you login to a website it should display your username somewhere to verify that you are indeed logged in. When you click on a link within the resource the website should take you to that specific page but still shows that you're logged in. If HTTP is a stateless protocol and each request/response is independent and does not contain data from previous request/response cycles, how does the website know that you're still logged in when it takes to a different page?

### Sessions

- **Session Identifier**: is a token sent by the server back to the client with its response. This token will be appended to each subsequent request sent by the client so that the server can identify the client, and therefore display information specific to the client.
- The passing back and forth of this `session id` allows the client and server to impersonate a state of '_persistent connection_' between client and server, even though each response/request is stateless and unaware of any previous requests/responses.
- This faux statefulness has some consequences:
  1. Every request is inspected for a `session id` by the server.
  2. If the request contains a `session id` it must be inspected to ensure it is still valid.
      - The server needs rules for handling session expiration.
      - The server needs to decide how to store session data.
  3. The server needs to find the session data based on the `session id`.
  4. The server needs to recreate the session data(HTML in the case of a web request) and send it back to the client as part of its response.

An example:

If you login to your facebook page a request is sent to the server that calculates a likes on a photos, generates a list of your friends and their recent posts, generates a list of people you might know, etc. This is a massively expensive webpage to parse in terms of rendering HTML to send to the browser. And because each request/response is stateless every time you click the 'like' button the server needs to render all of this all over again. On and on, for every interaction with Facebook in the browser.

Thankfully we have ways of storing session information, and one common way is by the use of _session cookies_.

### Cookies

- **Cookie** or **HTTP Cookie**: is a piece of data stored in the client and sent by the server during a request/response cycle that contain session information.
- Most browsers have cookies enabled by default.
- The browser stores the cookies.
- The actual session data is stored on the server.
- When you first access a webpage the server sends session info and sets it in your _browser cookie_ on your local computer.
- On subsequent request/response cycles with the webpage the client-side cookie is compared with the server-side session data to confirm the current session.
- This is how on future visits to the webpage you will be recognized because of the stored cookie and its associated information.
- The session id is unique and will expire after a certain amount of time.

How it works:

- When you first visit a website in the request headers there is no mention of **cookies**
- When looking at the response header you will find the header **set-cookie** which sets some cookie data in the browser on your local computer.
- Then when making another request to the same webpage the request header will now have a **cookie** header set containing the cookie data sent by the previous response.
- This piece of data will be sent with each request made to the same webpage to help the server identify your browser.
- The browser on your computer stores the cookie which means you can shut your restart your computer the cookie info would still exist.

> When logging into a website a new **session id** is created and saved in a **cookie** on your browser, which is attached to every new request sent to that webpage that allows the server to identify this client. When the server gets a request containing a session id it finds the data associated with that id, and this is where it "remembers" the state for that session id(client). 

> The session id is implemented as a random string and comes in the form of a cookie stored on the computer.

- The session data is stored somewhere on the _server_.
- The session id is served on the _client_.
- The session id acts as the "key" that can access the session data.

## AJAX

- **AJAX** or **Asynchronous Javascript and XML**: main feature is that it allows browsers to issue requests _without a full page refresh_.
- All AJAX requests from the client are done _asynchronously_, meaning the page doesn't refresh.

An example:

- When navigating to google.com and opening the network inspector we can see that:
  - each key-press into the search bar triggers an AJAX request.
  - the responses of these requests are processed by a _callback_.
    - A _callback_ is a piece of logic you can pass on to a function when a certain event has occurred, in this circumstance it is triggered when the response is returned.
    - The callback processing the responses to the key-downs in the google search bar is updating the possible search result you are typing.
  
> An AJAX request is a normal request sent to the server will all the standard components of a HTTP request, the server handles the request like any other request, _the only difference being_ that instead of the browser processing the response it is handled by a _callback_, which is usually some client-side JS code.

---

## Security

### Secure HTTP

- **Packet Sniffing** is when an entity connected to the same network as two other devices that are sending requests/responses back and forth, purposely reads the messages.
- Because session ids are sent with a request to identify the client, if that session id were intercepted it could theoretically be used to pose as the client, and be automatically logged into the clients account.
- With **HTTPS** every request and response is encrypted prior to being sent over the network.
- HTTPS send messages through a cryptographic protocol called Transport Layer Security(TLS) for encryption.
  - Earlier versions used Secured Socket Layer(SSL) before TLS was created.
- These cryptographic protocols use certificates to talk with remote servers and exchange security keys prior to data encryption.

### Same-origin Policy

- **Same-origin Policy** allows for unrestricted interaction between resources that originate from the same origin, while restricting certain interactions between resources that originate from different origins.
  - Same-origin policy considers an _origin_ is the combo of a url's **scheme**, **host** and **port number**.
  - For example, the url: `http://example.com/path1`
    - _would_ have the same origin as `http://example.com/path2`
    - but _wouldn't_ have the same origin as `https://example.com/path2` (different scheme)
    - and _wouldn't_ have the same origin as `http://example.com:4000/path2` (different port)
    - and _wouldn't_ have the same origin as `http://anothersite.com/path2` (different host).
- Same-origin Policy doesn't restrict every cross-origin request:
  - Linking, redirects, and form submissions are generally allowed.
  - Embedded resources such as css stylesheets, scripts, images, and other media are allowed.
  - What is typically _restricted_ are cross-origin requests accessed programmatically via APIs, `XMLHttpRequests` or `fetch`.
- This can be an issue for developers trying to make legitimate cross-origin requests.
  - **Cross-origin Resource Sharing(CORS)** was developed for just this purpose. It allows requests that normally aren't allowed cross-origin to occur by adding new HTTP headers that give permission for servers to serve resources cross-origin.

> Same-origin Policy is important in guarding against _session hijacking attacks_.

### Session Hijacking

When a client sends a request to a server to login to their account the server responds by sending back a unique token that the client uses in subsequent requests to identify themselves to the server. This enables specific session data to be sent back to the client in order to mimic the experience of statefulness. The session id is generally implemented as a string of random characters and is stored in a cookie on the clinet computer. Every request sent to the sever from the client utilizes this session id to identify the client and adds any new data to the session data, stored on the server.

If an attacker gets ahold of the session id, both the client and the attacker have access to the session and can both access the web application. Most times the client won't even be aware that an attacker has access to their session without needing their username or password.

#### Countermeasures for Session Hijacking

- **Resetting Sessions**
  - With authorization systems when a new session is initiated all previous sessions are made invalid.
  - Most websites implement this strategy when a user is entering sensitive information, and they are asked again to authenticate again prior to entering the info.

- **Setting Expiration Time**
  - Giving sessions an expiration time, for example 30 minutes, gives any potential attackers a much smaller window to commit nefarious actions within.
  - Sessions that have no expiration time give attackers infinite time to pose as the user.

- **HTTPS**
  - By using HTTPS across the entire application minimizes the chances that an attacker can hijack a session id.

### Cross-Site Scripting

- **Cross-Site Scripting(XSS)** is a type of attack that occurs when you allow users to input HTML or JavaScript that ends up being displayed directly by the site(e.g. a comment section).
- If the server code doesn't take any measures to sanitize the input, it will be injected into the contents of the page and the browser will interpret the HTML or JavaScript and execute it.
- Attackers can inject very harmful HTML and JavaScript that can be destructive to the server and negative for future users of the webpage, too.
  - e.g. the attacker can user JavaScript to grab the session id of all future users of the webpage and log onto the site as them.

#### Potential Solutions for XSS

- **Sanitize Input**
  - Eliminate any problematic input such as `<script>` tags, or completely disallow HTML or JavaScript input for something safer like markdown.

- **Escape User Input**
  - Sometimes you'll need to allow HTML or JavaScript input but you can escape the input so you only render the characters instead of the actual HTML or JavaScript code.

---

## Some Background

### Client Server

- When referring to servers in the request/response cycle we don't acknowledge the complexity of a server, nor do we generally need to. But it is good to be aware of a few of a servers main distinctions. If we zoom in on a server we can categorize the main components as:
  1. **Web Server**: the server that responds to requests for static assets(e.g. images, files, css, javascript) that don't require any processing.
  2. **Application Server**: the server where application/business logic resides and where more complicated logic resides. Where your server side code lives.
  3. **Data Store**: is where the application server will often need to consult a data store, like a rational database, to retrieve or create data. Can also be simple files, key/value stores, document stores, or any variation that can save data in some way that it can be retrieved and processed.

### HTTP Over TCP/IP

- HTTP operates at the Application layer and is mostly concerned with formatting the messages that are exchanged between applications.
- TCP/IP are actually doing the bulk of the heavy lifting of ensuring the request/response cycles travels between your browser and the server.