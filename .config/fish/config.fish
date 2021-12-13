#######################
#  Fish Shell Config  #
#######################

set fish_greeting                   # Disable greeting message
set -g fish_prompt_pwd_dir_length 9 # Set prompt directory name length

if status --is-login
	set -gx PATH $PATH ~/dw/bin
end

neofetch

function on_exit --on-event fish_exit
	echo fish is now exiting
end
