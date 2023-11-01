#!/bin/bash

USER_GITHUB_TOKEN=$1

git clone https://$USER_GITHUB_TOKEN@github.com/NMLT-NTTMK-K18/nmlt-nttmk-k18.github.io Github-Page-Repo --depth 1

cd ./Github-Page-Repo/docs/
rm -rf ./*

cp profile/README.md Github-Page-Repo/docs/README.md
cp -r ./img/ ./Github-Page-Repo/docs/img/
