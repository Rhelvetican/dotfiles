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
    | select value count