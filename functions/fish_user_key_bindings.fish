function fish_user_key_bindings
    bind \e\; copy_prev_shell_word
    bind \e\[1\;5C nextd-or-forward-word
    bind \e\[1\;5D prevd-or-backward-word
    bind \e\r accept-autosuggestion execute
end
