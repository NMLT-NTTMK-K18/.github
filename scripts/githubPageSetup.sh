#!/bin/bash

USER_GITHUB_TOKEN=$1

git clone https://$USER_GITHUB_TOKEN@github.com/NMLT-NTTMK-K18/nmlt-nttmk-k18.github.io Github-Page-Repo --depth 1

folder_path="path/to/your/folder"

if [ ! -d "./Github-Page-Repo/docs" ]; then
    mkdir -p "./Github-Page-Repo/docs"
    echo "Folder Github-Page-Repo/docs has been created."
else
    rm -rf ./Github-Page-Repo/docs/*
    echo "Delete all things in Github-Page-Repo/docs."
fi
mkdir Github-Page-Repo/docs/img

cp profile/README.md Github-Page-Repo/docs/README.md
cp -r ./img/ ./Github-Page-Repo/docs/img/
