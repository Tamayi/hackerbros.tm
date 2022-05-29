# Intrioduction to Git

This exercise will help us to understand Git.

# Key steps (Existing Source Code)

* Create my source code folder
* Initialise a Git repository 
    * Inspect the git Repository
* Create online Git repository
* Push our local Git repository to the online

## Tracked vs Untracked Files
Suppose you have a file with passwords. Including it in your Git repo has 2 problems:
- Including files with passwords in your repository is not good for security
- Users in our environment with will overwrite each others credentials

Create a .gitignore file to list all permanently untracked files and folders.

## Understanding "git add" and "git commit"

Working directory - where our source code is (adding and editing our files + folders)
Stage - [git add] where our "changes" are held before being committed to the Git repository, can undo
Local Repository - [git commit] commit the changes into our repository, hard to to undo
Remote Repository - [git push] commit that changes onto our remote repository
