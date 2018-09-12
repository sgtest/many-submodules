#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

for r in $(cat repos.txt); do
    git submodule add "https://github.com/$r" "modules/${r/\//__}"
done
