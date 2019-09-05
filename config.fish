function fish_greeting
    if type -q systemctl
        set failed (systemctl list-units --state=failed --no-legend ^ /dev/null)
        if not set -q $failed
            echo Failed Units: (set_color brred)(count $failed)(set_color normal)
            for unit in $failed
                echo '  '(string split -m 1 ' ' -- $unit)[1]
            end
        end
    end

    if type -q custom_fish_greeting
        custom_fish_greeting
    end
end

set -g fish_term24bit 1
set -gx STARSHIP_SHELL fish

set -x LESS '-R -n -X -m -i -S'
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -x RIPGREP_CONFIG_PATH $HOME/.config/ripgreprc

set -U __done_exclude '(git (?!push|pull|fetch)|sudoedit|emacsclient)'

set -U FZF_DEFAULT_OPTS "--color light"
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_TMUX 1

if type -q fd
    set -U FZF_FIND_FILE_COMMAND "fd -t f"
    set -U FZF_CD_COMMAND "fd -t d"
    set -U FZF_CD_WITH_HIDDEN_COMMAND "fd -H -t d"
    set -U FZF_OPEN_COMMAND "fd -H -t f"
end

if type -q bat
    set -x BAT_THEME 'Monokai Extended Light'
    set -U FZF_PREVIEW_FILE_CMD 'bat --color always'
end

if type -q exa
    set -U FZF_PREVIEW_DIR_CMD 'exa --tree --group-directories-first -s extension --color always -F -L 2'
end

set -U FZF_ENABLE_OPEN_PREVIEW 1
