// ✅ JAVA INTERVIEW QUESTIONS - TCS, INFOSYS, WIPRO, ACCENTURE

 //Q1. Check if a String is a Palindrome
 //Company: TCS - 2023
public class JavaQ1 {
    public static boolean isPalindrome(String s) {
        String reversed = new StringBuilder(s).reverse().toString();
        return s.equals(reversed);
    }

    public static void main(String[] args) {
        System.out.println("Q1: " + isPalindrome("madam"));  // Output: true
    }
}
