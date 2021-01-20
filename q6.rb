def collatz(n, m, c = 0)
  if n == 1
    return 0
  elsif c != 0 && n == m
    return 1
  end
  if c == 0 && n.even?
    collatz(n * 3 + 1, m, c + 1)
  elsif n.even?
    collatz(n / 2, m, c + 1)
  elsif n.odd?
    collatz(n * 3 + 1, m, c + 1)
  end
end

p (1..10000).map{|n| collatz(n,n) if n.even?}.select{|x|x.is_a?(Numeric)}.inject(:+)