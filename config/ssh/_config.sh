SSH_KEY=${HOME}/.ssh/id_rsa

if test -f "$SSH_KEY"; then
    echo "$SSH_KEY exists."
    exit
fi

ssh-keygen -t rsa -q -f "$HOME/.ssh/id_rsa" -N ""
