function fish_right_prompt
    echo -ns (__fish_git_prompt '%s ') (prompt_virtualenv) (set_color -o blue) (prompt_pwd) (set_color normal)
end
