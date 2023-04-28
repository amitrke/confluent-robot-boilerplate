FROM python:3.7-alpine

#Add gcc
RUN apk add --no-cache gcc musl-dev linux-headers
RUN apk add git busybox-extras

COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /app
CMD tail -f /dev/null