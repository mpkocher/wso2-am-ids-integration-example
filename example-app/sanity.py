#!/usr/bin/env python
import sys
import logging
import json
import requests


class Constants(object):
    HEADERS = {'Content-type': 'application/json'}


def _post_requests(headers):
    def wrapper(url, d_):
        data = json.dumps(d_)
        return requests.post(url, data=data, headers=headers)

    return wrapper


def _get_requests(headers):
    def wrapper(url):
        return requests.get(url, headers=headers)

    return wrapper

rqpost = _post_requests(Constants.HEADERS)
rqget = _get_requests(Constants.HEADERS)



def main(args=sys.argv):

    host = "http://localhost"
    port = 5000
    endpoints = ("status", "alpha", "beta")

    def to_url(s):
        return "{h}:{p}/{s}".format(h=host, p=port, s=s)

    for endpoint in endpoints:
        url = to_url(endpoint)
        response = rqget(url)
        response.raise_for_status()
        print response, url

    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))