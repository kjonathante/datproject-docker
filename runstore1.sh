#!/bin/sh
docker run -ti --rm -p 3472:3472 --name one -w="/root" -v $(pwd)/root:/root kit/dat:latest bash
