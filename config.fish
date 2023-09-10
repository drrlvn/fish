function fish_greeting
    if type -q custom_fish_greeting
        custom_fish_greeting
    end
end

set -g fish_term24bit 1

set -x LESS '-R -n -X -m -i -S'
set -x RIPGREP_CONFIG_PATH $HOME/.config/ripgreprc

if type -q brew
    set -x HOMEBREW_NO_ENV_HINTS 1
end

if type -q bat
    set -x BAT_THEME 'OneHalfDark'
    set -x BAT_STYLE 'plain'
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p --paging always'"
    set -x MANROFFOPT "-c"
end

source (starship init fish --print-full-init | psub)
