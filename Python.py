# PYTHON INTERVIEW QUESTIONS - TCS, INFOSYS, WIPRO, ACCENTURE
✅ Basic Python Programming Questions

Check if a number is Prime
Check if a string is a palindrome
Print Fibonacci series up to n terms
Find factorial of a number using recursion
Count vowels and consonants in a string
Swap two numbers without using a third variable
Find the largest/smallest number in a list
Reverse a list or string
Find duplicate elements in a list
Check if a number is Armstrong

✅ Intermediate Python Questions (Logic + Programming)

Sort a list without using sort() or sorted()
Find the second largest element in a list
Check if two strings are anagrams
Find missing number in a list of 1 to n
Find all pairs in an array whose sum is equal to a target number
Print pattern programs (like pyramid, triangle, etc.)
Implement binary search
Count frequency of characters in a string (using dictionary)
Write a Python program to check if a list is palindrome
Flatten a nested list

✅ Data Structure and Algorithm Based

Implement Stack using List
Implement Queue using Collections module
Check balanced parentheses using Stack
Detect a loop in a linked list (advanced)
Merge two sorted lists
Find the first non-repeating character in a string
Sort dictionary by value
Use map, filter, reduce in a real-world example
Count number of words in a paragraph
Group anagrams from a list of words

---------------------------------------------------------------------------------------
✅ Basic Python Programming Questions
1. Check if a number is Prime
python
Copy
Edit
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5)+1):
        if n % i == 0:
            return False
    return True
------------------------------------------------------------------------------------------------    
2. Check if a string is a Palindrome
def is_palindrome(s):
    return s == s[::-1]
-----------------------------------------------------------------------------------
3. Print Fibonacci series up to n terms
def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        print(a, end=' ')
        a, b = b, a + b
--------------------------------------------------------------------------------------        
4. Find factorial of a number using recursion
def factorial(n):
    if n <= 1:
        return 1
    return n * factorial(n - 1)
--------------------------------------------------------------------------------------
5. Count vowels and consonants in a string
def count_vowels_consonants(s):
    vowels = 'aeiouAEIOU'
    v = sum(1 for ch in s if ch in vowels)
    c = sum(1 for ch in s if ch.isalpha() and ch not in vowels)
    return v, c
-----------------------------------------------------------------------------------------    
6. Swap two numbers without using a third variable
a, b = 5, 10
a, b = b, a
------------------------------------------------------------------------------------------------
7. Find the largest/smallest number in a list
def largest_smallest(lst):
    return max(lst), min(lst)
---------------------------------------------------------------------------------------------    
8. Reverse a list or string
lst = [1, 2, 3]
reversed_lst = lst[::-1]
s = "python"
reversed_str = s[::-1]
--------------------------------------------------------------------------------
9. Find duplicate elements in a list
def find_duplicates(lst):
    return list(set([x for x in lst if lst.count(x) > 1]))
-----------------------------------------------------------------------------------
10. Check if a number is Armstrong
def is_armstrong(n):
    digits = str(n)
    power = len(digits)
    return n == sum(int(d)**power for d in digits)
✅ Intermediate Python Questions (Logic + Programming)
-------------------------------------------------------------------
11. Sort a list without using sort() or sorted()

def bubble_sort(arr):
    for i in range(len(arr)):
        for j in range(0, len(arr)-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr
---------------------------------------------------------
12. Find the second largest element in a list
def second_largest(lst):
    lst = list(set(lst))  # remove duplicates
    lst.sort()
    return lst[-2]
--------------------------------------------------------    
13. Check if two strings are anagrams
def is_anagram(s1, s2):
    return sorted(s1) == sorted(s2)
-------------------------------------------------------------------    
14. Find missing number in a list of 1 to n
def missing_number(lst, n):
    return (n * (n + 1)) // 2 - sum(lst)
----------------------------------------------------------------------
15. Find all pairs with a given sum
def pair_sum(arr, target):
    result = []
    seen = set()
    for num in arr:
        if target - num in seen:
            result.append((num, target - num))
        seen.add(num)
    return result
---------------------------------------------------------------------
16. Print pattern (e.g. pyramid)

def print_pyramid(n):
    for i in range(1, n+1):
        print(' '*(n-i) + '*'*(2*i-1))
------------------------------------------------------------------------
17. Implement binary search
def binary_search(arr, x):
    low, high = 0, len(arr)-1
    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == x:
            return True
        elif arr[mid] < x:
            low = mid + 1
        else:
            high = mid - 1
    return False
--------------------------------------------------------------------
18. Count frequency of characters in string

from collections import Counter
def char_freq(s):
    return dict(Counter(s))
-------------------------------------------------------------------------    
19. Check if list is palindrome
def is_list_palindrome(lst):
    return lst == lst[::-1]
----------------------------------------------------------------------------
20. Flatten a nested list
def flatten(lst):
    flat = []
    for i in lst:
        if isinstance(i, list):
            flat.extend(flatten(i))
        else:
            flat.append(i)
    return flat
✅ Data Structure and Algorithm Based
----------------------------------------------------------------------------
21. Implement Stack using List
stack = []
stack.append(10)
stack.append(20)
stack.pop()  # removes 20
---------------------------------------------------------------------------------
22. Implement Queue using collections.deque

from collections import deque
queue = deque()
queue.append(10)
queue.append(20)
queue.popleft()  # removes 10
-----------------------------------------------------------------------------------------------------
23. Check balanced parentheses using Stack
def is_balanced(expr):
    stack = []
    pairs = {')': '(', '}': '{', ']': '['}
    for ch in expr:
        if ch in '({[':
            stack.append(ch)
        elif ch in ')}]':
            if not stack or stack.pop() != pairs[ch]:
                return False
    return not stack
----------------------------------------------------------------------------------------------------    
24. Detect a loop in a linked list (advanced logic)
def detect_loop(head):
    slow = fast = head
    while fast and fast.next:
        slow = slow.next
        fast = fast.next.next
        if slow == fast:
            return True
    return False
-------------------------------------------------------------------------------------------    
25. Merge two sorted lists

def merge_sorted(l1, l2):
    i, j, merged = 0, 0, []
    while i < len(l1) and j < len(l2):
        if l1[i] < l2[j]:
            merged.append(l1[i])
            i += 1
        else:
            merged.append(l2[j])
            j += 1
    merged += l1[i:]
    merged += l2[j:]
    return merged
-------------------------------------------------------------------------------    
26. First non-repeating character in a string
from collections import Counter
def first_non_repeating(s):
    freq = Counter(s)
    for ch in s:
        if freq[ch] == 1:
            return ch
    return None
-----------------------------------------------------------------------------------
27. Sort dictionary by value
d = {'a': 3, 'b': 1, 'c': 2}
sorted_d = dict(sorted(d.items(), key=lambda x: x[1]))
---------------------------------------------------------------------------------------
28. Use map, filter, reduce

from functools import reduce

lst = [1, 2, 3, 4]

mapped = list(map(lambda x: x*2, lst))
filtered = list(filter(lambda x: x % 2 == 0, lst))
reduced = reduce(lambda x, y: x + y, lst)
---------------------------------------------------------------------------------
29. Count words in a paragraph
def word_count(text):
    return len(text.split())
    --------------------------------------------------------------------------
30. Group anagrams
from collections import defaultdict
def group_anagrams(words):
    groups = defaultdict(list)
    for word in words:
        groups[''.join(sorted(word))].append(word)
    return list(groups.values())
    ---------------------✅ Extra Practice
Check if a number is Palindrome

def is_num_palindrome(n):
    return str(n) == str(n)[::-1]

num = int(input("Enter number: "))
if is_num_palindrome(num):
    print("Palindrome")
else:
    print("Not a Palindrome")

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
✅ Q6. Find the Frequency of Elements in a List
Company: Capgemini - 2023

# -----------------------------
# Q6. Count frequency of elements in a list
# Company: Capgemini - 2023
def count_frequency(lst):
    freq = {}
    for item in lst:
        freq[item] = freq.get(item, 0) + 1
    return freq

print("Q6:", count_frequency([1, 2, 2, 3, 3, 3]))  
# Output: {1: 1, 2: 2, 3: 3}
✅ Q7. Check Prime Number
Company: Cognizant - 2022

# -----------------------------
# Q7. Check if a number is prime
# Company: Cognizant - 2022
def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

print("Q7:", is_prime(7))  # Output: True


