# Using scikit-lr via Docker

This directory contains a `Dockerfile` to make it easy to get
up and running with scikit-lr via [Docker](https://docker.com).

## Installing Docker

General installation instructions are
[on the Docker site](https://docs.docker.com/get-docker/),
but we give some quick links here:

* [Installing Docker Engine](https://docs.docker.com/engine/install/)

## Building the image

We are using a `Makefile` to simplify Docker commands within `make` commands.

To build the image from the `Dockerfile`:

```
make build
```

## Running the container

To start a bash:

```
make bash
```

To start a notebook:

```
make notebook
```
