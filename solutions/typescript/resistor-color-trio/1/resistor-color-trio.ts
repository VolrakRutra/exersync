const bands:Record<string, number> = {
  black: 0,
  brown: 1,
  red: 2,
  orange: 3,
  yellow: 4,
  green: 5,
  blue: 6,
  violet: 7,
  grey: 8,
  white: 9,
}

export function decodedResistorValue(r:[string, string, string]):string {
  const base = bands[r[0]] * 10 + bands[r[1]];
  const mul = Math.pow(10, bands[r[2]]);
  const ohms = base * mul;
  if (ohms >= 1000){
    return `${ohms / 1000} kiloohms`
  } else {
    return `${ohms} ohms`
  }
}
