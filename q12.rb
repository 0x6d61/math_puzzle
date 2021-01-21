ans1 = 10000
ans2 = 10000
(3..).each do |number|
  sqrt =  "%10.10f"%Math.sqrt(number)
  if (0..9).map { |d| (sqrt.sub(".", "")[0..9]).include?(d.to_s) }.all? { |b| b == true }
    ans1 = [ans1,number].min
end

  if (0..9).map { |d| sqrt[2..sqrt.size].include?(d.to_s) }.all? { |b| b == true }
    ans2 = [ans2,number].min
  end
  break if ans1 != 10000 && ans2  != 10000
end

puts ans1
puts ans2
