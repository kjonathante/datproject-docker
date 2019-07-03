#!/bin/sh
docker run -ti --rm --name two --link one kit/dat:latest bash
