proc isIsogram {input} {
    set seen ""
    set isIsogram true

    set stripped [string map {- "" " " ""} $input]
    set lowered [string tolower $stripped]
    
    foreach char [split $lowered {}] {
        if {[string first $char $seen] != -1} {
            set isIsogram false
            break
        }
        append seen $char
    }

    return $isIsogram
}
