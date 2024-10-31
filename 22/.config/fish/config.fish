# enable grc (colorizer)
# https://github.com/garabik/grc
if type -q grc
    source /etc/grc.fish
else
    set_color yellow
    echo -n "[warn]: `"
    set_color green
    echo -n grc
    set_color yellow
    echo "` is not installed on this system (or isn't available in the path)."
    echo "Please install it for colorful terminal output."
    echo
    set_color normal
end

# remind me to get `rye` through the function
# (otherwise some setups get messed up by the venv)
# (ahem: https://github.com/espressif/esp-idf/issues/8470)
alias rye 'set_color yellow; echo -n "Please use the `"; set_color blue; echo -n "rye_setup"; set_color yellow; echo "` function to continue with Rye..."'

# check to ensure fisher is installed.
#
# if it's not, we'll install it, alongside any plugins we want...
if ! test -n "$_fisher_plugins"
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
    fisher install edc/bass
end

# shorthand for gnome text editor
alias gte gnome-text-editor

# make `tree` always colorful
alias tree 'tree -C'

# source `ros2`
bass source /opt/ros/jazzy/setup.sh
