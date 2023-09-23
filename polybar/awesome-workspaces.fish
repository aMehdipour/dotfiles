#!/usr/bin/fish

# Source: https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/info-awesomewm
# Make sure you have the 'awesome-client' command installed on your system

# Icons used for workspaces: adjust as desired
set occupied_icon ""
set focused_icon ""
set urgent_icon ""

while true
    set workspaces (awesome-client 'return require("awful.screen").focused().selected_tag.index, require("awful.tag").gettags(require("awful.screen").focused())' | awk -F',' '{print $1-1","$2}' | tr -d '()')

    set current (echo "$workspaces" | awk -F',' '{print $1}')
    set tags (echo "$workspaces" | awk -F',' '{print $2}' | tr -d '{}')

    set output ""
    set index 0

    for tag in $tags
        switch "$tag"
            case "true*"
                # Tag is occupied
                if test $index -eq $current
                    set output "$output%{F#FF0000}$focused_icon%{F-}"
                else
                    set output "$output$occupied_icon"
                end
            case "false*"
                # Tag is not occupied
                if test $index -eq $current
                    set output "$output%{F#FF0000}$focused_icon%{F-}"
                else
                    set output "$output"
                end
            case "urgent*"
                # Tag is urgent
                if test $index -eq $current
                    set output "$output%{F#FF0000}$focused_icon%{F-}"
                else
                    set output "$output$urgent_icon"
                end
        end
        set index (math $index + 1)
    end

    echo "$output"
    sleep 1
end
