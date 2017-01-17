# Define prime square of an integer x as follows:

#     if x is prime, its prime square is just x * x;
#     if x is not prime, its prime square equals the sum of composite numbers and squares of prime numbers in the range [0, x].

# Given an integer n, return its prime square.

# Example

#     For n = 4, the output should be
#     primeSquare(n) = 18.

#     Prime square of 4 equals 1 + 2 * 2 + 3 * 3 + 4 = 1 + 4 + 9 + 4 = 18.

#     For n = 5, the output should be
#     primeSquare(n) = 25.

#     5 is a prime number, so its prime square is just 5 * 5 = 25.

# Input/Output

#     [time limit] 4000ms (rb)

#     [input] integer n

#     Constraints:
#     1 ≤ n ≤ 1000.

#     [output] integer

#     The prime square of n.
# https://codefights.com/challenge/jHGYnJdmxD9SuJQYw/solutions/489MXesEyPFrubSf8

def primeSquare(n)
    return n*n if n==1 or n==2 or !z(n)
    s=5
    e,o=[],[]
    (3..n).map{ |a| a%2 == 0 ? e << a : o << a }
    s += e.inject :+
    o.map{ |b| s += z(b) ? b : b*b } 
    s        
end

def z n
  (2..(n-1)).map{ |c| n%c == 0 }.inject :|
end
