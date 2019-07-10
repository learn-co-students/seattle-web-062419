# GitHub Collaboration Walkthrough

This lecture is a walkthrough of how to (and how not to) collaborate with GitHub

## Part 1: When Things Go Right

Two people are collaborating on a project that uses an API and gets input from the command line. One person has agreed to work on the API part, and the other is going to work on the CLI part. In parallel we make feature branches, commit our changes, then create pull requests against the `master` branch. Both pull requests are successfully able to merge.

### Part 1: Setup

If the project is pre-existing complete the following steps:

One person starts the project by going to the GitHub project and clicking the "Fork" button in the upper right part of the page.

Now, from the forked repo add your programming parter as a collaborator.

1. Click on the "Settings" tab
2. Click on "Collaborators" in the menu on the left
3. Type your pair programming partner's username (with no @ sign) into the search box, select the result with their photo, and click "Add collaborator"

Each team member clones a copy of fork onto their computer terminal

1. `git clone https://github.com/partner1/project-repo-name.git`
2. `cd project-repo-name`

### Part 1: Adding Code Programmer 1

Programmer 1 makes a new feature branch to get the relevant code completed.

1. `git checkout -b programmer1-new-branch-name` creates the new branch
2. Make changes to the relevant file
   - At the end of making changes test the new feature code with hard coded data or test file.
3. `git status` shows changes made
4. `git add .` stages changes for commit
5. `git commit -m "detailed-commit-message"` commits the changes to the local copy of the `programmer1-new-branch-name` branch
6. `git push origin programmer1-new-branch-name` publishes the changes to GitHub for `programmer1-new-branch-name` branch
7. On GitHub, click the `New pull request` button
   - The base repository will be set to the repo that was originally forked. We want to change that to the cloned working repo and base: master. That will change the interface so it just says "base: **master**" on the left and "compare: **programmer1-new-branch-name**" on the right. The difference is that we are comparing across two branches of the same repository, rather than our branch on our fork vs. the forked origin repo.

### Part 1: Adding Code Programmer 2

Programmer 2 is working at the same time as Programmer 1, but on a different part of the code base (file).

1. `git checkout -b programmer2-new-branch-name` creates the new branch
2. Make changes to the relevant file
   - At the end of making changes test the new feature code with hard coded data or test file.
3. `git status` should show changes made
4. `git add .` stages changes for commit
5. `git commit -m "detailed-commit-message"` commits the changes to the local copy of the rajiprinze/cliAdditions branch
6. `git push origin programmer2-new-branch-name` publishes the changes to the GitHub `programmer2-new-branch-name` branch
7. On GitHub, click the `New pull request` button
   - The base repository will be set to the repo that was originally forked. We want to change that to the cloned working repo and base: master. That will change the interface so it just says "base: **master**" on the left and "compare: **programmer2-new-branch-name**" on the right. The difference is that we are comparing across two branches of the same repository, rather than our branch on our fork vs. the forked origin repo.

### Part 1: Merging

Both Programmer 1's branch and Programmer 2's branch have pull requests ready to go. Now that they have agreed that the changes should be merged into master, Programmer 1 clicks the `Pull requests` button underneath the repository name near the top of the page and approves both pull requests. (Either person could do this, since both are contributors on the repo.) There are no merge conflicts. Yay!

To get their local copies of the repository synced up with the remote GitHub copy, Programmer 1 and Programmer 2 each run the following:

1. `git checkout master` to move from their feature branch (`programmer1-new-branch-name` and `programmer2-new-branch-name`, respectively) back to master
2. `git pull origin master` to fetch changes from the remote GitHub copy and merge them in. There are no merge conflicts. Yay!

## Part 2: When Things Go Wrong (Gituations)

Programmer 1 and Programmer 2 agree that the README file should be edited to say that they are the authors. However, they don't communicate clearly about who is doing this task, so both are start making changes to the same file.

### Programmer 1 Part 2: Updating the Same File

1. `git checkout -b programmer1-update-readme` creates the new branch
2. Add "by Programmer 1 firstName and Programmer 2 firstName" to the second line of the README.md file
3. `git status` should show that the only file with changes is `README.md`
4. `git add README.md` stages changes for commit
5. `git commit -m "updated readme"` commits the changes to the local copy of the programmer1-update-readme branch
6. `git push origin programmer1-update-readme` publishes the changes to the GitHub programmer1-update-readme branch
7. On GitHub, click the `New pull request` button
   - IMPORTANT, Again the base repository will be set to the repo that was originally forked. We want to change that to the cloned working repo and base: master. That will change the interface so it just says "base: **master**" on the left and "compare: **programmer1-update-readme**" on the right. The difference is that we are comparing across two branches of the same repository, rather than our branch on our fork vs. the forked origin repo.

### Programmer 2 Part 2: Adding Authors

1. `git checkout -b programmer2-update-readme` creates the new branch
2. Add "authors : Programmer 1 firstName lastName and Programmer 2 firstName lastName :)" to the second line of README.md
3. `git status` should show that the only file with changes is `README.md`
4. `git add README.md`
5. `git commit -m "updated readme"` commits the changes to the local copy of the `programmer2-update-readme` branch
6. `git push origin programmer2-update-readme` publishes the changes to the GitHub programmer2-update-readme branch
7. On GitHub, click the `New pull request` button
   - IMPORTANT, Again the base repository will be set to the repo that was originally forked. We want to change that to the cloned working repo and base: master. That will change the interface so it just says "base: **master**" on the left and "compare: **programmer1-update-readme**" on the right. The difference is that we are comparing across two branches of the same repository, rather than our branch on our fork vs. the forked origin repo.

### Part 2: Merging

Both Programmer 1's branch and Programmer 2's branch have pull requests ready to go. Now that they have agreed that the changes should be merged into master, Programmer 2 clicks the `Pull requests` button underneath the repository name near the top of the page and approves both pull requests. (Either person could do this, since both are contributors on the repo.)

Programmer 2's pull request is successfully merged!

But then when they try to approve Programmer 1's pull request, there is a merge conflict :(

Because Programmer 1's changes are the ones that conflict with master, Programmer 2 needs to resolve the merge conflict.

1. `git pull origin master` will fetch the latest version of master (with Programmer 2's changes merged in) and attempt to merge them into Programmer 1's branch
   - This generates the output:
     ```
     CONFLICT (content): Merge conflict in README.md
     Automatic merge failed; fix conflicts and then commit the result.
     ```
2. `git status`

   - This generates the output:

   ```On branch programmer1-update-readme
      You have unmerged paths.
        (fix conflicts and run "git commit")
        (use "git merge --abort" to abort the merge)

      Unmerged paths:
        (use "git add <file>..." to mark resolution)

   d

      no changes added to commit (use "git add" and/or "git commit -a")
   ```

3. This tells Programmer 1 that they need to open README.md to find the merge conflict
4. When Programmer 1 looks at the README, there is a section that looks like this:
   ```<<<<<<< HEAD
     by Programmer 1 firstName and Programmer 2 firstName
      =======
      authors : Programmer 1 firstName lastName and Programmer 2 firstName lastName :)
      >>>>>>> 9960c6e102ffb03e65bd9eeb3d24863e12baa034
   ```
   - This means that since master was last pulled, two different commits have made changes to the same line. One of them (Programmer 1) was "by Programmer 1 firstName and Programmer 2 firstName", which is between the "<<<<<<< HEAD" and "=======". The other one (Programmer 2) was "authors : Programmer 1 firstName lastName and Programmer 2 firstName lastName :)", which is between the "=======" and the ">>>>>>> 9960c6e102ffb03e65bd9eeb3d24863e12baa034".
   - Programme 2 has three different options here:
     - **a) Accept Programmer 2's version**. To do that, she would erase the git markup ("<<<<<<< HEAD", "=======", and "">>>>>>> 9960c6e102ffb03e65bd9eeb3d24863e12baa034") and erase the line she added ("by Erin and Soundarya")
     - **b) Overwrite Programmer 2's version with her version**. To do that, they should erase the git markup ("<<<<<<< HEAD", "=======", and "">>>>>>> 9960c6e102ffb03e65bd9eeb3d24863e12baa034") and erase the line Programmer 2 added ("authors : Programmer 1 firstName lastName and Programmer 2 firstName lastName :)")
     - **c) Make some new version**. One example of that would be combining both "by Programmer 1 firstName and Programmer 2 firstName" and "authors : Programmer 1 firstName lastName and Programmer 2 firstName lastName :)" into a single line. They would still need to erase the git markup ("<<<<<<< HEAD", "=======", and "">>>>>>> 9960c6e102ffb03e65bd9eeb3d24863e12baa034") as well.
   - Programmer 1 chooses option (c) and combines the two lines into one, then saves the file
5. `git add README.md`
6. `git status`

   - This generates the output:

     ```On branch programmer1-update-readme
        All conflicts fixed but you are still merging.
          (use "git commit" to conclude merge)

        Changes to be committed:

     md
     ```

7. `git commit -m "resolved merge conflict with names in README"` commits the changes to the local copy of the programmer1-update-readme branch
8. `git push origin programmer1-update-readme` publishes the changes to the GitHub programmer1-update-readme branch
9. Now if Programmer 1 refreshes the page on the pull request for this branch, the button will turn green. Now we can approve Programmer 1's pull request!

(For Programmer 2's local copy to reflect this new version, they will need to run `git pull origin master`)

#### GitHub Resources
[Project Board Setup](https://help.github.com/en/articles/creating-a-project-board)</br>
[Organization Setup](https://help.github.com/en/articles/creating-a-new-organization-from-scratch)
