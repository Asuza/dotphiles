function gab --description 'Show current branch of selected dev directories'
	for path in $GITDIRS
        set branch (git --git-dir=/home/$USER/dev/$path/.git --work-tree=/home/$USER/dev/$path rev-parse --abbrev-ref HEAD)
        printf "%10s %s\n" $path $branch
    end
end
