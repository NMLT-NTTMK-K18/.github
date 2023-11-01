#!/bin/bash

USER_GITHUB_TOKEN=$1

git clone https://$USER_GITHUB_TOKEN@github.com/NMLT-NTTMK-K18/nmlt-nttmk-k18.github.io Github-Page-Repo --depth 1

rm -rf ./Github-Page-Repo/docs/

cp profile/README.md Github-Page-Repo/docs/
cp -r ./img/ ./Github-Page-Repo/docs/
