function fish_prompt
    set -l uid (id -u)

    # username@hostname in bold green
    set_color --bold green
    echo -n (whoami)
    echo -n "@"
    echo -n (hostname -s)

    # colon
    set_color normal
    echo -n ":"

    # working directory in bold blue
    set_color --bold blue
    echo -n (prompt_pwd)

    # prompt symbol
    set_color normal
    if test $uid -eq 0
        echo -n "# "
    else
        echo -n "\$ "
    end
end 
