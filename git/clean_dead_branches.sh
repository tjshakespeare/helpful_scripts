#!/bin/sh

# Fetch and prune deleted remote branches
git fetch -p

# Find local branches with no upstream remote
branches_to_delete=$(git branch -vv | awk '/: gone]/{print $1}')

if [ -z "$branches_to_delete" ]; then
  echo "No local branches to delete."
  exit 0
fi

echo "The following local branches have no upstream and will be deleted:"
echo "$branches_to_delete"

# Delete each branch
for branch in $branches_to_delete; do
  git branch -D "$branch"
done