####################### SSH KEY FOR GIT ###################################
eval `ssh-agent -s` && ssh-add -k
####################### To be added to git account settings ################


###################### GIT PARAMETERS #####################################
export GIT_PARENT_DIR=~
export GIT_REPO_NAME=ml-cpcs-law-db
export GIT_BRANCH_NAME=main
export GIT_USER=ArinW
export GIT_EMAIL=arinwyl@bu.edu
export GITHUB_ACCESS_TOKEN=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
export GIT_USER_UPSTREAM=ArinW


############################################################################
#### DO NOT EDIT BELOW THIS LINE: derived variables
############################################################################

export GIT_REMOTE_URL=git@github.com:$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_URL_HTTPS=https://github.com/$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_UPSTREAM=$GIT_USER_UPSTREAM/$GIT_REPO_NAME


####################### Git Repo where notebooks will be pushed ############
cd $GIT_PARENT_DIR && git clone $GIT_REMOTE_URL_HTTPS



####################### Change in jupyter config ###########################
if [ ! -f ~/.jupyter/jupyter_notebook_config.py ]; then
   jupyter notebook --generate-config
fi

echo 'c.NotebookApp.disable_check_xsrf = True' >> ~/.jupyter/jupyter_notebook_config.py

cp $GIT_PARENT_DIR/githubcommit/config ~/.ssh/config
