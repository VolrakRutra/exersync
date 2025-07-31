proc raindrops {number} {
    set res ""

    set divBy3 [expr $number % 3 eq 0]
    set divBy5 [expr $number % 5 eq 0]
    set divBy7 [expr $number % 7 eq 0]

    if {$divBy3} {
        append res Pling
    }

    if {$divBy5} {
        append res Plang
    }

    if {$divBy7} {
        append res Plong
    }

    if {!$divBy3 && !$divBy5 && !$divBy7} {
        return $number
    }

    return $res
}
