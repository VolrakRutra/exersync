object ArmstrongNumber {

    fun check(input: Int): Boolean {
        val inputStr = input.toString()

        if (inputStr.length == 1){
            return true
        }
        var sum = 0
        for ((index, char) in inputStr.withIndex()) {
            val charInt = char.toString().toInt()
            val pow = inputStr.length;
            println((charInt to pow) to Math.pow(charInt.toDouble(), pow.toDouble()).toInt())

            sum += Math.pow(charInt.toDouble(), pow.toDouble()).toInt()
        }
        return sum == input
    }
}
