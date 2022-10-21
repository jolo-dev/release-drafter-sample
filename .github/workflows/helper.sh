#!/bin/bash

REF_NAME="foo"

DEV="dev"
TEST="test"
QA="qa"
PROD="main"


if [ "$REF_NAME" = "$DEV" ]; then
    echo "::set-output name=value::alpha1"
    echo "It's dev"
elif [ "$REF_NAME" = "$TEST" ]; then
    echo "::set-output name=value::beta1"
    echo "It's test"
elif [ "$REF_NAME" = "$QA" ]; then
    echo "::set-output name=value::rc.1"
    echo "It's qa"
elif [ "$REF_NAME" = "$PROD" ]; then
    echo "It's prod"
else
    echo "It's a feature"
fi
