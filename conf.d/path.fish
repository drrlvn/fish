for path in /usr/local/opt/python/libexec/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/opt/curl-openssl/bin ~/.cargo/bin ~/.yarn/bin ~/.emacs.d/bin ~/.local/bin
    test -d "$path"; and set -x PATH "$path" $PATH
end
