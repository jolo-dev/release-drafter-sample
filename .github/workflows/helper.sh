#!/bin/bash

DEV="dev"
TEST="test"
QA="qa"
PROD="main"


if [ "$REF_NAME" = "$DEV" ]; then
    echo "value=alpha1" >> $GITHUB_OUTPUT
    echo "It's dev"
elif [ "$REF_NAME" = "$TEST" ]; then
    echo "value=beta1" >> $GITHUB_OUTPUT
    echo "It's test"
elif [ "$REF_NAME" = "$QA" ]; then
    echo "value=rc.1" >> $GITHUB_OUTPUT
    echo "It's qa"
elif [ "$REF_NAME" = "$PROD" ]; then
    echo "It's prod"
else
    echo "It's a feature"
fi
