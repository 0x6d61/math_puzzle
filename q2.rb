op = ["+", "-", "*", "/", ""]
1000.upto(9999) do |n|
  num = n.to_s
  op.length.times do |j|
    op.length.times do |k|
      op.length.times do |l|
        exp = num[0] + op[j] + num[1] + op[k] + num[2] + op[l] + num[3]
        next if exp.include?("0") 
        if exp.length > 4
            if eval(exp).to_s.reverse == num
                p num
            end
        end
      end
    end
  end
end