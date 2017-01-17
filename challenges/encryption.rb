# Abdullah wants to encrypt his messages to avoid hacker attacks. He decides to shift each character in his Message by k. Help him to encrypt his message.

# Example:

#     Encryption("Ab", 1) = "Bc"
#     Encryption("z", 2) = "b"

#     [time limit] 4000ms (rb)

#     [input] string Message

#     [input] integer k

#     k ≥ 1

#     [output] string

# https://codefights.com/challenge/fHtSgYwtgiLvXG3Rt/solutions/Wq5Fi4yHjb4dSdqEd

def Encryption m, k
  m.chars.map { |c| 
    k.times { c.next! } 
    c[-1] 
  } * ''
end	