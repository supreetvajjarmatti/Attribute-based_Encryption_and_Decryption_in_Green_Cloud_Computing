package Elgamal;

import java.math.BigDecimal;
import java.math.BigInteger; 


public class elgmal2 {

	public static BigInteger power(int a,int b) {

	    int base = a, exponent = b;

	    double result = 1;

	    for (; exponent != 0; --exponent) {
	      result *= base;
	    }
	    System.out.println("Answer = " + result);
	    return BigDecimal.valueOf(result).toBigInteger();
	  }
	
	public static BigInteger modexp(BigInteger big1,BigInteger exp,BigInteger big2) {
		
		BigInteger  result=big1.modPow(exp,big2);  
		
		
		return result;
		
		
		
			
	}
	
}
