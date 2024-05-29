import java.util.LinkedHashMap;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
public class test {

    public static void main (String[] args) {
    	
    	
		String aa;
		ArrayList<BigInteger> aci=new ArrayList<>();
		char [] stopWords = {'a','b','c'};
		int aass=0;
		for (int j = 0; j < stopWords.length; j++) {
			System.out.println(stopWords[j]);
			aass=stopWords[j];
			System.out.println(aass);
			aci. add(new BigInteger(Integer.toString(aass)));
		}
		System.out.println(aci);
		

    }

    	
}
