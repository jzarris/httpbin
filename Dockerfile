FROM ubuntu:18.04

LABEL name="httpbin"
LABEL version="0.9.3"
LABEL description="A simple HTTP service."
LABEL org.jzarris.vendor="Jack Zarris"

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt update -y && apt install python3-pip git -y && pip3 install --no-cache-dir pipenv

ADD Pipfile Pipfile.lock /httpbin/
WORKDIR /httpbin
RUN /bin/bash -c "pip3 install --no-cache-dir -r <(pipenv lock -r)"

ADD . /httpbin
RUN pip3 install gunicorn
RUN pip3 install gevent
RUN pip3 install gunicorn
RUN pip3 install --no-cache-dir /httpbin
RUN pip3 install Flask

EXPOSE 80

CMD ["gunicorn", "-b", "0.0.0.0:80", "httpbin:app", "-k", "gevent"]
