export class Anagram {
  input: string;
  constructor(input: string) {
    this.input = input.toLocaleLowerCase();
  }

  private countLetters(word: string, letter: string): number {
    return word
      .toLocaleLowerCase()
      .split("")
      .filter((c) => c === letter).length;
  }

  public matches(...potentials: string[]): string[] {
    const filtered = potentials.filter(
      (p) =>
        p.length === this.input.length &&
        p.toLocaleLowerCase() !== this.input.toLocaleLowerCase()
    );

    const result = [];
    for (let word of filtered) {
      let shouldWordBeAdded = true;
      for (let letter of this.input) {
        if (
          this.countLetters(word, letter) !==
          this.countLetters(this.input, letter)
        ) {
          shouldWordBeAdded = false;
        }
      }
      if (shouldWordBeAdded) {
        result.push(word);
      }
    }
    return result;
  }
}
