const letters = "abcdefghijklmnopqrstuvwxyz";
export function isPangram(s: string): boolean {
  for (const letter of letters) {
    if (!s.toLowerCase().includes(letter)) {
      return false;
    }
  }
  return true;
}
