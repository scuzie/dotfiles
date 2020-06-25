systemctl --user import-environment DISPLAY
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
numlockx &
exec i3
