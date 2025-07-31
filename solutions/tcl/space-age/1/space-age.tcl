proc onEarth {seconds} {return [expr {$seconds / 31557600.0 / 1.0}]}
proc onMercury {seconds} {return [expr {$seconds / 31557600.0 / 0.2408467 }]}
proc onVenus {seconds} {return [expr {$seconds / 31557600.0 / 0.61519726 }]}
proc onMars {seconds} {return [expr {$seconds / 31557600.0 / 1.8808158 }]}
proc onJupiter {seconds} {return [expr {$seconds / 31557600.0 / 11.862615 }]}
proc onSaturn {seconds} {return [expr {$seconds / 31557600.0 / 29.447498 }]}
proc onUranus {seconds} {return [expr {$seconds / 31557600.0 / 84.016846 }]}
proc onNeptune {seconds} {return [expr {$seconds / 31557600.0 / 164.79132 }]}
proc onSun {seconds} {error "not a planet"}
