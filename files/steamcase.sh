#!/bin/bash -e

### ## #
# Steamcase 1.0; creates a case-insensitive volume and prepares it for use with Steam.
# Does not download Steam.
#
# By Dustin L. Howett <dustin@howett.net>
# Public Domain
# Tries to be careful about moving and not destroying existing content.
### ## #

### ## #
#Section to customize
IMAGE="/path/to/image/steamfs.sparsebundle"
VOLNAME="steamfs"
### ## #

if [[ -z $1 ]]; then
	echo "Syntax: $0 <size>(g|t)" >&2
	echo "g = gigabytes, t = terabytes" >&2
	echo "This script creates a sparse bundle disk image at /Case\ Insensitive.sparsebundle" >&2
	exit 1
fi

echo Creating $IMAGE...
hdiutil create -size $1 "$IMAGE" -type SPARSEBUNDLE -fs HFS+J -volname "$VOLNAME" -layout NONE
echo Mounting $IMAGE...
hdiutil attach "$IMAGE"
echo Creating Basic Structure in /Volumes/$VOLNAME
mkdir -p "/Volumes/$VOLNAME/Applications"
mkdir -p "/Volumes/$VOLNAME/Users/$USER/Documents/Steam Content"
mkdir -p "/Volumes/$VOLNAME/Users/$USER/Library/Application Support/Steam"

echo -n "Migrating existing Steam Content... "
if [[ -d "$HOME/Documents/Steam Content" && ! -h "$HOME/Documents/Steam Content" ]]; then
	rsync -qa "$HOME/Documents/Steam Content" "/Volumes/$VOLNAME/Users/$USER/Documents/Steam Content"
	rm -rf "$HOME/Documents/Steam Content"
	echo "OK."
else
	echo "Skipped."
fi

echo -n "Migrating existing Steam Application Support... "
if [[ -d "$HOME/Library/Application Support/Steam" && ! -h "$HOME/Library/Application Support/Steam" ]]; then
	rsync -qa "$HOME/Library/Application Support/Steam" "/Volumes/$VOLNAME/Users/$USER/Library/Application Support/Steam"
	rm -rf "$HOME/Library/Application Support/Steam"
	echo "OK."
else
	echo "Skipped."
fi

echo -n "Symlinking Steam Content... "
if [[ ! -h "$HOME/Documents/Steam Content" ]]; then
	echo "OK."
	ln -s "/Volumes/$VOLNAME/Users/$USER/Documents/Steam Content" "$HOME/Documents/Steam Content"
else
	echo "Skipped."
fi

echo -n "Symlinking Steam Application Support... "
if [[ ! -h "$HOME/Library/Application Support/Steam" ]]; then
	echo "OK."
	ln -s "/Volumes/$VOLNAME/Users/$USER/Library/Application Support/Steam" "$HOME/Library/Application Support/Steam"
else
	echo "Skipped."
fi

echo Settings up /volumes...
mkdir -p /volumes
ln -s "/Volumes/$VOLNAME" "/volumes/$(echo $VOLNAME | tr A-Z a-z)"

echo Done.
