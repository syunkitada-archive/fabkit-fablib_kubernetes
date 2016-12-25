#!/bin/sh -xe

[ -e ca-key.pem ] || openssl genrsa -out ca-key.pem 2048
[ -e ca.pem ] || openssl req -x509 -new -nodes -key ca-key.pem -days 10000 -out ca.pem -subj "/CN=kube-ca"