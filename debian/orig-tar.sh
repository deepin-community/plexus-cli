#!/bin/sh -e

# There is no svn tag for plexus-cli! :-(

# VERSION=$2
VERSION=1.2
REVISION=7025

TAR=../plexus-cli_$VERSION.orig.tar.gz
DIR=plexus-cli-$VERSION
TAG=plexus-cli-$VERSION

svn export -r$REVISION http://svn.codehaus.org/plexus/plexus-components/trunk/plexus-cli $DIR
# New versions should appear here:
#svn export http://svn.codehaus.org/plexus/plexus-components/tags/$TAG $DIR

GZIP=--best tar -c -z -f $TAR $DIR || exit 2
rm -rf $DIR ../$TAG
