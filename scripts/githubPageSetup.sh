#!/bin/bash

USER_GITHUB_TOKEN=$1

git clone https://$USER_GITHUB_TOKEN@github.com/NMLT-NTTMK-K18/nmlt-nttmk-k18.github.io Github-Page-Repo --depth 1

if [ -d "./Github-Page-Repo/img" ]; then
    rm -rf ./Github-Page-Repo/img/
    mkdir Github-Page-Repo/img
    echo "Re-create img folders"
fi

cp -f profile/README.md Github-Page-Repo/README.md
sed -i 's/\.\.\/\.\.\/\.\.\//https:\/\/github.com\/NMLT-NTTMK-K18\//g' Github-Page-Repo/README.md
cp -r ./img/ ./Github-Page-Repo/
