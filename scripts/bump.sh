#!/bin/bash

if ! command -v podspec-bump &> /dev/null
then
    echo "podspec-bump could not be found. Installing it..."
    npm install -g podspec-bump
fi

OLD_VERSION=$(podspec-bump --dump-version)
podspec-bump -i major -w
NEW_VERSION=$(podspec-bump --dump-version)
echo "Bumped motor_pod version from ($OLD_VERSION) to ($NEW_VERSION)"
