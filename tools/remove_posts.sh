#!/bin/bash

for f in `cat post_to_remove.txt`
do
    echo "Deleting $f"
    python3 git-filter-repo  --invert-paths --force --path "$f"
done

# Let's remove the files that are not referenced anymore
for f in files/* assets/images/*
do
  if ! git grep -q "$f"; then
    echo "Deleting $f"
    python3 git-filter-repo  --invert-paths --force --path "$f"
  fi
done