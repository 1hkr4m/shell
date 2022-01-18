#!/bin/bash

echo 'Hello'

WORD='script'

echo "$WORD"

echo '$WORD'

echo "This is the $WORD"

echo "This is the ${WORD}"

echo "${WORD}ing is fun!"

echo "$WORDing is fun!"

ENDING='ed'

echo "This is ${WORD}${ENDING}"

ENDING='ing'

echo "This is ${WORD}${ENDING}"

ENDING='s'

echo "You are going to write many $WORD$ENDING in this class!"