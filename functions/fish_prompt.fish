function fish_prompt
    if test $status -eq 0
        set prompt_status (set_color green)' ✔'
    else
        set prompt_status (set_color red)' ✘'
    end

    if not set -q $SSH_TTY
        echo -n (set_color magenta)$USER@(prompt_hostname)
    end
    if test "$USER" = 'root'
        echo -n (set_color red)"#"
    end

    echo -n $prompt_status (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '(set_color normal)
end
