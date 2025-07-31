export class QueenAttack {
  constructor(position) {
    const posW = position?.white ?? [7, 3];
    const posB = position?.black ?? [0, 3];

    if (posW.some((v) => v < 0 || v > 7) || posB.some((v) => v < 0 || v > 7)) {
      throw new Error("Queen must be placed on the board");
    }
    if (posW[0] == posB[0] && posW[1] == posB[1]) {
      throw new Error("Queens cannot share the same space");
    } else {
      this.white = posW;
      this.black = posB;
    }
  }

  toString() {
    return Array(8)
      .fill(true)
      .map((_, i) => this.buildRow(i))
      .join("\n");
  }

  get canAttack() {
    if (this.sameRow || this.sameColumn || this.sameDiagonal) {
      return true;
    } else {
      return false;
    }
  }

  get sameRow() {
    return this.white[0] == this.black[0];
  }

  get sameColumn() {
    return this.white[1] == this.black[1];
  }

  get sameDiagonal() {
    return (
      Math.abs(this.white[0] - this.black[0]) ==
      Math.abs(this.white[1] - this.black[1])
    );
  }

  buildRow(n) {
    return Array(8)
      .fill(true)
      .map((_, i) => {
        if (this.white[0] == n && this.white[1] == i) {
          return "W";
        } else if (this.black[0] == n && this.black[1] == i) {
          return "B";
        } else {
          return "_";
        }
      })
      .join(" ");
  }
}
