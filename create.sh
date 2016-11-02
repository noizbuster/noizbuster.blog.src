#! /bin/bash

cmd="python3 ./stemcell/postgen/articlegen.py -d ./raw_source/_posts/ -a noizbuster -c development"

if [ -n $1 ]
then
    cmd="$cmd -t $1"
fi

echo $cmd
${cmd}
