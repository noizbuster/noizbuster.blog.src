#! /bin/bash

cmd="python3 ./stemcell/postgen/articlegen.py -d ./raw_source/_posts/ -a noizbuster"

if [ -n $1 ]
then
    cmd="$cmd -c $1"
fi

if [ -n $2 ]
then
    cmd="$cmd -t $2"
fi

echo $cmd
${cmd}
