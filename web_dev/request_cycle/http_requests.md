*****************************************************************************
*****************************************************************************
*****************************************************************************
What are some common HTTP status codes?
read and pulled/pasted & paraphrased from : https://www.globo.tech/learning-center/5-most-common-http-error-codes-explained/
first digit: defines what is known as the class of the status code.
--------------------------------------------------------------------
-  If the code starts with a 2, as in 200, that represents a successful response to the request.

- codes that start with 1. These represent informational messages

- 3xx represents a redirection response. Typically, the browser will handle these without user interaction and get the resource from the new location instead.

Errors:
- 400 level mean there was a client-side error — think of something like the user typing the wrong URL in the address bar
- 401 (unauthorized) errors - issue of authentication
- 403 access to the resource is forbidden - One common reason for 403 errors is the server maintaining a whitelist of machines that can access that system and the user’s machine not being on it. If the client’s certificate is no longer valid (or is just plain missing), that’s another reason for a 403 error response. There typically is no recovery from these, short of trying from a different machine. Finally, there’s also the possibility of wrong permissions associated to files. Often in Linux and sometimes in Windows, a webserver will not have access to website files because of faulty permissions. This will also result in a 403 error. The server owner will need to change the file permissions to fix this.


- 500 Internal Server Error: level mean there was a server-side error — think of something like the database server going down or perhaps running out of disk space.
- Moving over to the server-side error codes, the 500 error is the catchall. When none of the other 500 error codes make sense, or if the programmer is just lazy and doesn’t identify the specific problem, a 500 status code is returned. Typically, you can retry the request attempt again and possibly get a different response. Of course, retrying attempts that involved a shopping cart that resulted in a 500 error could result in a duplicate order, so tread carefully there.


503 Service Unavailable

Like many of the 500-level error codes, the 503 (service unavailable) status code could be a temporary problem. It basically means the web server isn’t available. Why? You don’t know. Perhaps the web server just restarted and is in the middle of initialization. Perhaps it is overloaded and can’t handle any more concurrent requests. Or perhaps it is just down for maintenance. Retrying the request could work or could return another 5xx error.



504 Gateway Timeout

The final of the top five error codes is the 504 status, indicating a gateway timeout. The name says it all. A proxy server needs to communicate with a secondary web server, such as an apache server, and access to that server timed out. There could be a DNS issue, a network device might be down, or the other machine could just be overly busy and unable to process the request in a timely fashion. This can only happen in a setup where a caching or proxy server is directly serving the webpage and the actual webserver behind it is unreachable. As with the other 5xx-level errors, just retrying the request could result in a successful response.

*****************************************************************************
*****************************************************************************
*****************************************************************************
What is the difference between a GET request and a POST request? When might each be used?
answer clipped from : http://www.w3schools.com/tags/ref_httpmethods.asp

*** Get request ***
pull data from somewhere

GET requests can be cached
GET requests remain in the browser history
GET requests can be bookmarked
GET requests should never be used when dealing with sensitive data
GET requests have length restrictions
GET requests should be used only to retrieve data


*** Post request ***  
sends data to somewhere.

POST requests are never cached
POST requests do not remain in the browser history
POST requests cannot be bookmarked
POST requests have no restrictions on data length




*****************************************************************************
*****************************************************************************
*****************************************************************************
Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

answer clipped from http://www.whatarecookies.com/

"Cookies are small files which are stored on a user's computer. They are designed to hold a modest amount of data specific to a particular client and website, and can be accessed either by the web server or the client computer. This allows the server to deliver a page tailored to a particular user, or the page itself can contain some script which is aware of the data in the cookie and so is able to carry information from one visit to the website (or related site) to the next."


