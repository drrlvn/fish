function t -d "Attach to a tmux session if exists, or create it otherwise. If no arguments were given, the session will be called main"
    if set -q $argv[1]
        set session_name main
    else
        set session_name $argv[1]
    end
    tmux new-session -A -s $session_name
end
