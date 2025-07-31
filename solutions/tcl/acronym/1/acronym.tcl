proc abbreviate {phrase} {
    set noPunct [string map {- " " _ ""} $phrase]
    set split [join $noPunct " "]

    set res ""

    foreach a $split {
        append res [string index $a 0]
    }
    return [string toupper $res]
}