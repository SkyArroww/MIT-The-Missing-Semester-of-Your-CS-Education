#!/usr/bin/env bash

# -type f: regular file
# -name "*.html": file name ends with .html
# xargs -d '\n': use newline as delimiter， 分隔find的结果
find . -type f -name "*.html" | xargs -d '\n' tar -cvzf html.zip