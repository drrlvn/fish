set -U fish_user_paths
for path in /usr/local/opt/coreutils/libexec/gnubin ~/.cargo/bin ~/.yarn/bin ~/.local/bin
    test -d "$path"; and set -U fish_user_paths "$path" $fish_user_paths
end
