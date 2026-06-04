_git_down() {
    if (( COMP_CWORD != 2 )); then
        return
    fi

    local cur="${COMP_WORDS[COMP_CWORD]}"
    local IFS=$'\n'
    local branches
    branches=$(git for-each-ref --format='%(refname:short)' refs/heads/ 2>/dev/null)
    COMPREPLY=($(compgen -W "$branches" -- "$cur"))
}
