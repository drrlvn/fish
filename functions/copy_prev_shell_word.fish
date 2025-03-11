function copy_prev_shell_word
    commandline -i (commandline -cx | tail -n1 | string escape)
end
