export class Squares {
  count: number;
  constructor(count: number) {
    this.count = count;
  }

  get sumOfSquares(): number {
    return Array(this.count)
      .fill(true)
      .map((_, i) => i + 1)
      .reduce((prev, curr) => {
        return prev + curr * curr;
      }, 0);
  }

  get squareOfSum(): number {
    return Math.pow((this.count + 1) * (this.count / 2), 2);
  }

  get difference(): number {
    return this.squareOfSum - this.sumOfSquares;
  }
}
