#!/bin/bash -l

#search_dir=./cmd
#for entry in "$search_dir"/*
#do
#  echo "$entry"
#done
echo "Resolving the mod dependencies"
go mod tidy

echo "Building the plugin..."
GO111MODULE="on" go build ./cmd/kubectl-mook.go
if [ $? -ne 0 ]; then
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  echo "Something is wrong with the build...Exiting"
  echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  exit 1
fi
echo "Installing the plugin..."
rm -rf /usr/local/bin/kubectl-mook
cp ./kubectl-mook /usr/local/bin

echo "Installation complete!!"
