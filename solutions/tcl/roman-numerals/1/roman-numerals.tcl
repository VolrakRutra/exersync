proc helper {count if9 if4 ifgt5 iflt5} {
    if {$count == 9} {
        return $if9
    } elseif {$count == 4} {
        return $if4
    } elseif {$count >= 5} {
        set rem [string repeat $iflt5 [expr $count - 5]]
        return $ifgt5$rem
    } else {
        return [string repeat $iflt5 $count]
    }
}

proc toroman {n} {
    set c1000 [expr $n / 1000]
    set t1000 [expr $c1000 * 1000]

    set c100 [expr [expr $n - $t1000] / 100]
    set t100 [expr $c100 * 100]

    set c10 [expr [expr $n - [expr $t1000 + $t100]] / 10]
    set t10 [expr $c10 * 10]

    set c1 [expr $n - [expr $t1000 + $t100 + $t10]]
    
    set s1000 [string repeat M $c1000]
    set s100 [helper $c100 CM CD D C]
    set s10 [helper $c10 XC XL L X]
    set s1 [helper $c1 IX IV V I]

    return $s1000$s100$s10$s1
}
