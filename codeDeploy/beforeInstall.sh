#!/usr/bin/env bash

rm -rf /usr/share/nginx/exposure/storage/logs/*
rm -rf /usr/share/nginx/exposure/storage/framework/*

if [[ -e /usr/share/nginx/exposure/.env ]]; then
    rm /usr/share/nginx/exposure/.env
fi
