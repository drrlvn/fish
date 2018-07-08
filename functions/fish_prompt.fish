function fish_prompt
    if test $status -eq 0
        set prompt_status (set_color -o green)' ✔'
    else
        set prompt_status (set_color -o red)' ✘'
    end

    if not set -q $SSH_TTY
        echo -n (set_color -o magenta)$USER@(prompt_hostname)
    end
    if test "$USER" = 'root'
        echo -n (set_color -o red)"#"
    end

    echo -n $prompt_status (set_color -o red)'❯'(set_color -o yellow)'❯'(set_color -o green)'❯ '(set_color -o normal)
end
