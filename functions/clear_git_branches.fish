function clear_git_branches -d "Clear merged git branches"
    command git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
end
