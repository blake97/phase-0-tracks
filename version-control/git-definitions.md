# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later.. this is great for when you're working on introducing new coding etc that might affect the functioning of a program. You can regress through versions until you find the code that's to blame for a problem you're having.

* What is a branch and why would you use one?
    - branches are beneficial because they allow us to duplicate the original file and work on it safely in a thread of work that's specific to the branch we're creating. That is, I can take the same file and branch it into 4 branches... each branch containing the same initial file, until i make a commit within that branch. I may choose to theme each branch for the purposes i'm working on them. I can then merge all branches into one secondary/combined branch to test how everything is working together. if it's all good, I'll merge that back to my master branch, which is where everything should be working without any problems. 

* What is a commit? What makes a good commit message?
<<<<<<< HEAD
    - A commit takes all of the files I've scheduled to be updated as a version, and it actually sends them off in the newly updated file, thus making a version. The message that's attached clearly identifies what was changed within the update, and why an update was needed.
    
* What is a merge conflict?
    - merge conflicts happen when the same file was changed as the same time in two different branches. You'll be asked to go through and verify the merge, then re-stage, and re-commit it for the conflict to be resolved. Rather than a conflict, i like to think of it as a safety check.
=======
* What is a merge conflict?

Here's my teacher change.
>>>>>>> tagging-teacher
