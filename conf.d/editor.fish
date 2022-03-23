if type -q micro
    set -x EDITOR 'micro'
else if type -q nvim
    set -x EDITOR 'nvim'
else
    set -x EDITOR 'vim'
end
