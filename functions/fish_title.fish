function fish_title
    set current_command (status current-command)
    switch $current_command
        case fish
            prompt_pwd
        case sudo
            echo (string split -m 2 ' ' $argv[1])[2]
        case '*'
            echo $current_command
    end
end
