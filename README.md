# ProgrammaticApp
Programmatic App Development


For more information about how this project was created visit :

##How to rename git local and remote branches

If you have named a branch incorrectly AND pushed this to the remote repository follow these steps before any other developers get a chance to jump on you and give you shit for not correctly following naming conventions.

1. Rename your local branch.
If you are on the branch you want to rename:

git branch -m new-name
If you are on a different branch:

git branch -m old-name new-name
2. Delete the old-name remote branch and push the new-name local branch.
git push origin :old-name new-name
3. Reset the upstream branch for the new-name local branch.
Switch to the branch and then:
git push origin -u new-name
Or you as a fast way to do that, you can use these 3 steps: command in your terminal

git branch -m old_branch new_branch         # Rename branch locally    

git push origin :old_branch                 # Delete the old branch    

git push --set-upstream origin new_branch   # Push the new branch, set local branch to track the new remote

