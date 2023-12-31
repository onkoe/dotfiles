if status is-interactive
    # Commands to run in interactive sessions can go here
end

# enable grc (colorizer)
# https://github.com/garabik/grc
source /etc/grc.fish

# remind me to get `rye` through the function
# (otherwise some setups get messed up by the venv)
# (ahem: https://github.com/espressif/esp-idf/issues/8470)
alias rye 'set_color yellow; echo -n "Please use the `"; set_color blue; echo -n "rye_setup"; set_color yellow; echo "` function to continue with Rye..."'

# shorthand for gnome text editor
alias gte gnome-text-editor
