history
    | get command 
    | each {
        |cmd|
    | split words
    }
    | where (
        $it
        | is-not-empty
    )
    | each {
        |cmd|
        get 0
    }
    | histogram
    | sort-by count --reverse
    | range ..15