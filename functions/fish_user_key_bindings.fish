function fish_user_key_bindings
    bind \es prepend_sudo
    bind \e\; copy_prev_shell_word
    bind \e\[1\;5C nextd-or-forward-word
    bind \e\[1\;5D prevd-or-backward-word

    type -q fzf_key_bindings; and fzf_key_bindings
end
