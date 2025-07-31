export function hey(message: string): string {
  const trimmed = message.trim()
  
  const isQuestion = trimmed[trimmed.length - 1] == "?"
  const isShouting = trimmed == trimmed.toUpperCase() && trimmed != trimmed.toLowerCase()
  
  if ( isQuestion ){
    if( isShouting ){
      return "Calm down, I know what I'm doing!"
    }
    return "Sure."
  }
  if(trimmed == ""){
    return "Fine. Be that way!"
  }
  if(isShouting){
    return "Whoa, chill out!"
  }
  return "Whatever."
}
