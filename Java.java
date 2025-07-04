JAVA INTERVIEW QUESTIONS - TCS, INFOSYS, WIPRO, ACCENTURE
Q1. Check if a String is a Palindrome
 Company: TCS - 2023

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
 Q2. Factorial using Recursion
 Company: Infosys - 2022
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
Q4. Swap Two Numbers without using third variable
 Company: Accenture - 2022
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
 --------------------------------------------------------------------------
 Q5. Find second largest number in array
 Company: Infosys - 2022
public class JavaQ5 {
    public static int secondLargest(int[] arr) {
        int first = Integer.MIN_VALUE, second = Integer.MIN_VALUE;
        for (int num : arr) {
            if (num > first) {
                second = first;
                first = num;
            } else if (num > second && num != first) {
                second = num;
            }
        }
        return second;
    }

    public static void main(String[] args) {
        int[] arr = {5, 1, 9, 6, 9};
        System.out.println("Q5: " + secondLargest(arr));  // Output: 6
    }
}
----------------------------------------------------------------
 Q6. Check even or odd number
 Company: TCS - 2021
public class JavaQ6 {
    public static void main(String[] args) {
        int num = 7;
        if (num % 2 == 0)
            System.out.println("Q6: Even");
        else
            System.out.println("Q6: Odd");
    }
}
 -------------------------------------------------------------------
 Q7. Print Fibonacci series
 Company: Wipro - 2023
public class JavaQ7 {
    public static void main(String[] args) {
        int n = 7, a = 0, b = 1;
        System.out.print("Q7: ");
        for (int i = 1; i <= n; ++i) {
            System.out.print(a + " ");
            int next = a + b;
            a = b;
            b = next;
        }
    }
}
---------------------------------------------------------------------
 Q8. Count vowels in a string
 Company: Accenture - 2022
public class JavaQ8 {
    public static int countVowels(String str) {
        int count = 0;
        for (char c : str.toLowerCase().toCharArray()) {
            if ("aeiou".indexOf(c) != -1)
                count++;
        }
        return count;
    }

    public static void main(String[] args) {
        System.out.println("Q8: " + countVowels("Interview"));  // Output: 4
    }
}
-------------------------------------------------------------------------------------
 Q9. Check if a Number is Armstrong (3-digit)
Company: Wipro – 2022
 
public class JavaQ9 {
    public static boolean isArmstrong(int n) {
        int original = n, result = 0;
        while (n > 0) {
            int digit = n % 10;
            result += Math.pow(digit, 3);
            n /= 10;
        }
        return result == original;
    }

    public static void main(String[] args) {
        System.out.println("Q9: " + isArmstrong(371));  // Output: true
    }
}
-----------------------------------------------------------------------------------------------
 Q10. Print Pattern – Right Triangle
Company: TCS – 2023

public class JavaQ10 {
    public static void main(String[] args) {
        int rows = 5;
        System.out.println("Q10:");
        for (int i = 1; i <= rows; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}
----------------------------------------------------------------------------------------------------
  Q11. Sum of Digits of a Number
Company: Infosys – 2022
public class JavaQ11 {
    public static int digitSum(int n) {
        int sum = 0;
        while (n != 0) {
            sum += n % 10;
            n /= 10;
        }
        return sum;
    }

    public static void main(String[] args) {
        System.out.println("Q11: " + digitSum(1234));  // Output: 10
    }
}
---------------------------------------------------------------------------------------------
Q12. Check if Number is Prime or Not
Company: Cognizant – 2023
public class JavaQ12 {
    public static boolean isPrime(int n) {
        if (n <= 1) return false;
        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0)
                return false;
        }
        return true;
    }

    public static void main(String[] args) {
        System.out.println("Q12: " + isPrime(17));  // Output: true
    }
}
