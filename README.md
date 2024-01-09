# httpbin(1): HTTP Request & Response Service

Run locally:
```sh
docker pull jzarris/httpbin
docker run -p 80:80 jzarris/httpbin
```

See http://httpbin.org for more information.

## Added status_code query arg to /anything
You can use the same status code syntax from `/status` for the query argument `status_code` for the path `/anything`
Example: 
```
/anything?status_code=200:0.9,500:0.1
```
When the status code 200 is returned, the normal requests data will be reflected in the response data.

## Officially Deployed at:

- http://httpbin.org
- https://httpbin.org
- https://hub.docker.com/r/kennethreitz/httpbin/


## SEE ALSO

- http://requestb.in
- http://python-requests.org
- https://grpcb.in/

## Build Status

[![Build Status](https://travis-ci.org/requests/httpbin.svg?branch=master)](https://travis-ci.org/requests/httpbin)
