#!/bin/bash

# script to start python processes

set -e

echo $0 $1 

if [ "$1" = 'producer' ]; then
    echo "Running Producer..."
    source /usr/local/fs-kafka/env/bin/activate && cd /usr/local/fs-kafka && python3 producer.py
fi

if [ "$1" = 'consumer' ]; then
    echo "Running Consumer..."
    source /usr/local/fs-kafka/env/bin/activate && cd /usr/local/fs-kafka && python3 consumer.py
fi

