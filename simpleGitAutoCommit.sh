#!/bin/bash
#Github atuomation: Fetch, Pull, Add, Commit, and Push.
#By Michael Leonffu 2017
git fetch
git pull
git add .

printf 'Message to commit with: \n'
read commitMessage

printf '\nAre you sure?\n\n'

read -n1 -p '(y/n)' messageConfirmation
printf '\n'

if ( [[ "$messageConfirmation" = 'y' ]] );then
    git commit -m "$commitMessage"
    git push
    printf '\nSuccess!?'
else
    printf '\nConformation Failed, Exiting'   
fi

printf '\n\033[93m Have a Nice Day!\033[0m\n'

exit 1