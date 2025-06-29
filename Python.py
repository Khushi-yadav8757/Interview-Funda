# PYTHON INTERVIEW QUESTIONS - TCS, INFOSYS, WIPRO, ACCENTURE

# Q1. Reverse a String
# Company: TCS - 2023
def reverse_string(s):
    return s[::-1]

print("Q1:", reverse_string("hello"))  # Output: olleh

--------------------------------------------------------------------------------
# Q2. Check Palindrome
# Company: Infosys - 2022
def is_palindrome(s):
    return s == s[::-1]

print("Q2:", is_palindrome("madam"))  # Output: True

--------------------------------------------------------------------------------------
# Q3. Find Missing Number in 1 to N
# Company: Cognizant - 2023
def find_missing(arr, n):
    return n * (n + 1) // 2 - sum(arr)

print("Q3:", find_missing([1,2,4,5], 5))  # Output: 3
 
-------------------------------------------------------------------------------------------
# Q4. Armstrong Number Check
# Company: Wipro - 2024
def is_armstrong(n):
    return n == sum(int(d)**3 for d in str(n))

print("Q4:", is_armstrong(153))  # Output: True

---------------------------------------------------------------------------------------------
# Q5. Count Vowels in String
# Company: Accenture - 2022
def count_vowels(s):
    return sum(1 for ch in s.lower() if ch in 'aeiou')

print("Q5:", count_vowels("Interview"))  # Output: 4
