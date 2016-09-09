function gitconflicts
    git status --porcelain | ack "UU?\s+" --no-color | cut -c 4-
end
