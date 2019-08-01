if type -q nvim
    set -x EDITOR 'nvim'
else
    set -x EDITOR 'vim'
end

if type -q emacsclient
    set -x ALTERNATE_EDITOR $EDITOR
    set -x EDITOR 'emacsclient'
end
