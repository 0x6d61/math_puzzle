count = 0
(0..9).to_a.permutation(10) do |r,e,a,d,w,i,t,l,k,s|
    next if r == 0 || w == 0 || t == 0 || s == 0
    ans = eval("#{r}#{e}#{a}#{d}+#{w}#{r}#{i}#{t}#{e}+#{t}#{a}#{l}#{k}")
    if ans == "#{s}#{k}#{i}#{l}#{l}".to_i
        count+=1
    end
end

puts count