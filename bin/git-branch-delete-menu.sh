#!/bin/bash

# getRemoteBranchCommand=$(gs | grep "'origin/" | sed -E "s<^.*'origin/< -> origin/<" | sed "s/'.$//")

echo "Delete a branch"
branches=$(git branch | sed -E "/^\*.*$/d" | sed -E "/.*master.*/d")
PS3="> "
select BRANCH in $branches;
do
    git branch -d $BRANCH
    break
done

