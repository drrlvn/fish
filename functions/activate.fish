function activate --argument-names 'venv'
    if test -n "$venv"
        source $venv/bin/activate.fish
        return
    end

    if test -f .env/bin/activate.fish
        source .env/bin/activate.fish
        return
    end

    set pipenv (env PIPENV_IGNORE_VIRTUALENVS=1 pipenv --venv ^/dev/null)
    if test -n "$pipenv"
        source $pipenv/bin/activate.fish
        return
    end

    echo "No virtualenv found"
    return 1
end
