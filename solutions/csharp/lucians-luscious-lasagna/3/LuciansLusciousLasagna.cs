class Lasagna
{
    public int ExpectedMinutesInOven() => 40;
    public int RemainingMinutesInOven(int actual) => ExpectedMinutesInOven() - actual;
    public int PreparationTimeInMinutes(int layers) => layers * 2;
    public int ElapsedTimeInMinutes(int layers, int minutes) => PreparationTimeInMinutes(layers) + minutes;
}
