proc abbreviate {phrase} {
    set noPunct [string map {- " " _ ""} $phrase]
    set split [join $noPunct " "]

    set res ""

    foreach a $split {
        set first [string index $a 0]
        set res $res$first
    }
    return [string toupper $res]
}