export function toRna(dna:string):string {
  let result = ""
  for (let char of dna){
    switch(char){
      case "C":
        result += "G"
        break
      case "G":
        result += "C"
        break
      case "A":
        result += "U"
        break
      case "T":
        result += "A"
        break
      default:
        throw new Error("Invalid input DNA.")
    }
  }
   return result 
}
