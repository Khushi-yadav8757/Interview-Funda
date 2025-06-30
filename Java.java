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

✅ Q5. Find Second Largest Element in Array
Company: Infosys – 2022

// --------------------------------------------------------------------------
// Q5. Find second largest number in array
// Company: Infosys - 2022
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
✅ Q6. Check Even or Odd
Company: TCS – 2021
 
// ----------------------------------------------------------------
// Q6. Check even or odd number
// Company: TCS - 2021
public class JavaQ6 {
    public static void main(String[] args) {
        int num = 7;
        if (num % 2 == 0)
            System.out.println("Q6: Even");
        else
            System.out.println("Q6: Odd");
    }
}
✅ Q7. Print Fibonacci Series up to N terms
Company: Wipro – 2023

// -------------------------------------------------------------------
// Q7. Print Fibonacci series
// Company: Wipro - 2023
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
✅ Q8. Count Vowels in a String
Company: Accenture – 2022
 
// ------------------------------------------------------------------
// Q8. Count vowels in a string
// Company: Accenture - 2022
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
