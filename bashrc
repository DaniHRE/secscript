# Custom bashrc settings

# This will log all of your bash stdin/stdout to the ~/shell_logs/ directory with a date and timestamp for every command. 
PS1='[\u@\h \W] \D{%F %T}\$ '
test "$(ps -ocommand= -p $PPID | awk '{print $1}')" == 'script' || (script -f $HOME/shell_logs/$(date +"%d-%b-%y_%H-%M-%S")_shell.log)