for path in /usr/local/opt/python/libexec/bin /usr/local/opt/coreutils/libexec/gnubin ~/.cargo/bin ~/.yarn/bin ~/.emacs.d/bin ~/.local/bin
    test -d "$path"; and set -x PATH "$path" $PATH
end
