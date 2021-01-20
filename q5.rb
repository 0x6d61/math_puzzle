count = 0
0.upto(15) do |f|
    0.upto(15) do |h|
        0.upto(15) do |fi|
            0.upto(15) do |t|
                if 15 >= f+h+fi+t
                    ans = (f*500)+(h*100)+(fi*50)+(t*10)
                    if ans == 1000
                        count+=1
                    end
                end 
            end
        end
    end
end

puts count