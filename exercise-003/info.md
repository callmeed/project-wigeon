# Exercise 3

## Making an HTTP request, parsing JSON, writing a local file

These days, HTTP (and HTTPS) is the way software communicates and JSON is the language we
speak. While many frameworks, APIs and services abstract this with SDKs or libraries,
it's important to understand how to make HTTP requests and parse JSON
in the language you're using.

**NOTE**: in this exercise, do your best to use standard libraries over 3rd party ones.

## Instructions

Create a file `user` (with extension if necessary) which does the following:

* Make's the following HTTP request: `https://randomuser.me/api?gender=female`
* Print out the status code of the HTTP request
* Parse the JSON response 
