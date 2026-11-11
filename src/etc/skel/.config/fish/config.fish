if status is-interactive
    set -g fish_greeting

    abbr --add .. 'cd ..'
    abbr --add ... 'cd ../..'
    abbr --add .... 'cd ../../..'

    if type -q starship
        starship init fish | source
    end

end

alias ll='ls -lah'
alias update='sudo pacman -Sy'
