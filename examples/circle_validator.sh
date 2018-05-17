#!/bin/bash
if [ $# -ne 0 ];then
	file="$1"
else
	file="$(dirname $0)/config.yml"
fi
log=Log
export CIRCLE_TOKEN=cae03d83c34138fb9a059db1920072e5d8bf1bb8
curl -s --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=$(git rev-parse HEAD)\
    --form config=@"$file" \
    --form notify=false \
    https://circleci.com/api/v1.1/project/github/smontsaroff-luxoft/CircleCi/tree/master #>& $log
if [ $? -ne 0 ];then
	cat $log
fi

echo
echo "From $file"
