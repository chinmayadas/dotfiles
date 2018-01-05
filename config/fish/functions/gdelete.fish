function gdelete
    git push origin --delete $argv
    git branch -D $argv
end
