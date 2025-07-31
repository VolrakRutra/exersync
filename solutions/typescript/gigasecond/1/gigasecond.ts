export class Gigasecond {
  seconds: number;
  constructor(date: Date) {
    this.seconds = date.getTime() / 1000;
  }
  public date(): Date {
    return new Date((this.seconds + 1000000000) * 1000);
  }
}
