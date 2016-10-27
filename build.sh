#! /bin/bash

hexo clean
rm ./public -r
python3 ./stemcell/postgen/postgen.py --src ./raw_source --dest ./source/_posts
hexo generate
