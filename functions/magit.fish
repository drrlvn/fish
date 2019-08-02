function magit -d "Open Magit status window"
    emacsclient -e "(magit-status)" -c -n
end
