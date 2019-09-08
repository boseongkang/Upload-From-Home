package rjava;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.REXPMismatchException;
import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.rosuda.REngine.Rserve.RserveException;

public class JavaRLab1 {

	public static void getHotel() throws RserveException, REXPMismatchException {
		RConnection rc = new RConnection();
		rc.eval("install.packages(\"KoNLP\")");
		rc.eval("library(KoNLP)");
		rc.eval("useSejongDic()");
		rc.eval("hotel <- readLines(\"hotel.txt\",encoding = \"UTF8\")");
		rc.eval("hotel_1 <- sapply(hotel, extractNoun, USE.NAMES = F)");
		rc.eval("hotel_2 <- unlist(hotel_1)");
		rc.eval("hotel_3 <- Filter(function(x){ nchar(x) >= 2}, hotel_2)");
		rc.eval("hotel_4 <- table(hotel_3)");
		rc.eval("hotel_4 <- head(sort(hotel_4, decreasing = T),10)");
		REXP x = rc.eval("hotel_5 <- names(hotel_4)");

		String[] s = x.asStrings();
		for (int i = 0; i < s.length; i++) {
			if (i == s.length - 1) {
				System.out.print(s[i]);
			} else {
				System.out.print(s[i] + ", ");
			}
		}
		rc.close();

	}

	public static void main(String[] args) throws RserveException, REXPMismatchException {
		System.out.println("-----------R 실습------------");
		JavaRLab1.getHotel();

	}

}
