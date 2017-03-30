The script git-create_ShivaramKPA was made basically by copying things
from https://coderwall.com/p/mnwcog/create-new-github-repo-from-command-line
   With this, we can create a new repo in github from the command line as follows:

To create a repository named 'mynewrepo' in my github account
https://github.com/ShivaramKPA, I need to execute the git-create script
as follows: 

./git-create_ShivaramKPA mynewrepo

Enter the password for ShivaramKPA account in github.


After that, in the local directory 'mynewrepo' in your machine, do as follows:

1)  ======= Go to your local repo dir ..
cd 'mynewrepo'

2) =======   # to initialize the local repo

git init

3) =======  # to add files to the list that will be committed later

git add  filenames
or
git add  dirname/filenames

4) =======  Commit the added files to the repo so that it can be pushed to the remote repo in github

git commit -am 'comment about the commit'

5) =======  Before the first push, we have to also configure it to connect it to the github repo as follows:

git remote add origin https://github.com/ShivaramKPA/GUIprojects.git
git config credential.username ShivaramKPA

6) ======= Now push the latest commits:

git push -u origin master

Enter the password for ShivaramKPA

