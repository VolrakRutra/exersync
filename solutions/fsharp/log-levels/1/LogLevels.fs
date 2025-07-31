module LogLevels

let message (logLine: string): string = 
    (logLine.Split("]:")[1]).Trim()

let logLevel(logLine: string): string = 
    (((logLine.Split("["))[1]).Split("]:")[0]).ToLower()

let reformat(logLine: string): string = 
    let m = message logLine
    let l = logLevel logLine
    sprintf "%s (%s)" m l

