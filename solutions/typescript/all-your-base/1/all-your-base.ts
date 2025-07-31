export function convert(
  digits: number[],
  inputBase: number,
  outputBase: number
): number[] {
  if(inputBase <= 1){
    throw new Error("Wrong input base")
  }

  if(
    outputBase <= 1 || 
    outputBase != Math.floor(outputBase)
  ){
    throw new Error("Wrong output base")
  }
  
  if(
    digits.some(d => d < 0) || 
    digits.length == 0 || 
    digits[0] == 0 && digits.length > 1 ||
    digits.some(d => d >= inputBase)
  ){
    throw new Error("Input has wrong format")
  }

  if (digits[0] == 0){
    return [0]
  }
  
  let decimal = 0
  
  for (let i = 0; i < digits.length; i++){
    decimal += digits[i] * Math.pow(inputBase, digits.length - 1 - i)
  }

  let baseN = []
  
  while (decimal != 0){
    const mod = decimal % outputBase
    baseN.push(mod)
    decimal = Math.floor(decimal/outputBase)
  } 
 
  return baseN.reverse();
}
