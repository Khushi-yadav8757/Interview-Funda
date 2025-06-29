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
-----------------------------------------------------------------------------------------
// Q2. Factorial using Recursion
// Company: Infosys - 2022
public class JavaQ2 {
    public static int factorial(int n) {
        if (n == 0 || n == 1) return 1;
        return n * factorial(n - 1);
    }

    public static void main(String[] args) {
        System.out.println("Q2: " + factorial(5));  // Output: 120
    }
}
----------------------------------------------------------------------------------------
// Q4. Swap Two Numbers without using third variable
// Company: Accenture - 2022
public class JavaQ4 {
    public static void main(String[] args) {
        int a = 5, b = 10;
        System.out.println("Before: a=" + a + ", b=" + b);

        a = a + b;
        b = a - b;
        a = a - b;

        System.out.println("After: a=" + a + ", b=" + b);
    }
}
