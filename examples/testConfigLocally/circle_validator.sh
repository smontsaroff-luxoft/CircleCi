#!/bin/bash
export CIRCLE_TOKEN=cae03d83c34138fb9a059db1920072e5d8bf1bb8
curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=2cedf60214eebfa7c685731fa93bb461acb77a3f\
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/smontsaroff-luxoft/CircleCi/tree/master
