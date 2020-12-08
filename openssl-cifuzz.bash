#!/bin/bash

export WORKDIR=/tmp/cifuzz-workdir

# Make this script idempotent
rm -rf $WORKDIR
# cifuzz.bash will use this directory
rm -rf /tmp/cifuzz
mkdir $WORKDIR

#git clone https://skia.googlesource.com/skia.git --depth 1 $WORKDIR/skia
cp -r ~/cifuzz/openssl $WORKDIR/openssl
CIFUZZ_SCRIPT_PATH=$PWD/cifuzz.bash

pushd $WORKDIR

# pushd skia
# ./bin/sync
# pushd third_party/externals/swiftshader/
# git checkout 45510ad8a77862c1ce2e33f0efed41544f5f048b
# popd
# popd

MANUAL_SRC_PATH=$PWD/openssl OSS_FUZZ_PROJECT_NAME=openssl REPO_NAME=openssl COMMIT_SHA=fake $CIFUZZ_SCRIPT_PATH
