class Lasagna
{
    public int ExpectedMinutesInOven() => 40;
    public int RemainingMinutesInOven(int actual)
    {
        return ExpectedMinutesInOven() - actual;
    }

    public int PreparationTimeInMinutes(int layers)
    {
        return layers * 2;
    }


    public int ElapsedTimeInMinutes(int layers, int minutes)
    {
        return PreparationTimeInMinutes(layers) + minutes;
    }
}
