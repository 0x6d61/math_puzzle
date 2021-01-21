before_num = 0
after_num = 1

ans = Array.new
while true
  tmp = after_num
  after_num += before_num
  before_num = tmp

  if after_num > 144
    divided_num = after_num.to_s.split("").map(&:to_i).sum
    if after_num % divided_num == 0
      ans << after_num
    end
  end
  break if ans.size == 5
end

ans.each{|x|puts x}