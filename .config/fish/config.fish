if status --is-login
	set -gx PATH $PATH ~/linux/bin
end

neofetch

function on_exit --on-event fish_exit
	echo fish is now exiting
end
