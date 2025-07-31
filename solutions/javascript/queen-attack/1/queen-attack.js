export class QueenAttack {
  constructor(position = { white: [0, 3], black: [7, 3] }) {
    if (
      position.white[0] == position.black[0] &&
      position.white[1] == position.black[1]
    ) {
      throw new Error("Queens cannot share the same space");
    } else {
      this.white = position.white;
      this.black = position.black;
    }
  }

  toString() {
      let board = "";
    for (let i = 0; i < 8; i++){
        let row = ""
        for(let j = 0; j < 8; j++){
            if (i == this.white[0] && j == this.white[1]){
                row += "W";
            } else if (i == this.black[0] && j == this.black[1]){
                row += "B";
            } else {
                row += "_"
            }
            if (j == 7){
                row += "\n";
            } else {
                row += " ";
            }
            
        }
        board += row;
    }
    return board;
  }

  canAttack() {
    if (
      this.white[0] == this.black[0] ||
      this.white[1] == this.black[1] ||
      Math.abs(this.white[0] - this.black[0]) ==
        Math.abs(this.white[1] - this.black[1])
    ) {
      return true;
    } else {
      return false;
    }
  }
}
