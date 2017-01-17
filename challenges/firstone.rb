# This is a reverse challenge. Have fun!

#     [time limit] 4000ms (rb)

#     [input] string s

#     [output] string

# https://codefights.com/challenge/jQHANjXgS7D6bR62t

def firstone s
    s = s.chars
    h = Hash.new 0
    s.map { |c| h[c] += 1 }
    x,y = h.sort_by{ |k,v| v }[0]
    y<2 ? x : '-1'
end
