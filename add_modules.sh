#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

for r in $(cat repos.txt); do
    echo "github.com/$r"
    git submodule add "https://github.com/$r" "modules/$r"
done
