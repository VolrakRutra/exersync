import java.math.BigInteger

object Board {

    fun getGrainCountForSquare(number: Int): BigInteger {
        if(number < 1){
            throw IllegalArgumentException()
        }
        if(number > 64) {
            throw IllegalArgumentException()

        }
        return Math.pow(2.0, (number - 1).toDouble()).toULong().toString().toBigInteger()
    }

    fun getTotalGrainCount(): BigInteger {
        var sum: BigInteger = 0.toBigInteger()
        for (i in 1..64){
            sum +=getGrainCountForSquare(i)
        }
       return sum
        
 
    }
}
