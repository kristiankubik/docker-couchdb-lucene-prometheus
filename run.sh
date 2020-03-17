#!/bin/bash
INSTANCE_PATH=`eval "cd .;pwd;cd - > /dev/null"`
INSTANCE_NAME=$(basename $INSTANCE_PATH)

# prepare couchdb
[ -d "$INSTANCE_PATH/couchdb/local.d" ] || $(echo "Missing couchdb/local.d in INSTANCE_PATH !!" && exit 0);
[ -d $INSTANCE_PATH/couchdb/data ] || mkdir -p $INSTANCE_PATH/couchdb/data

# prepare lucene
[ -d $INSTANCE_PATH/lucene/config ] || $(echo "Missing lucene/config in INSTANCE_PATH !!" && exit 0);

docker-compose up
