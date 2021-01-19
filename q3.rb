card = Array.new(100) {"x"}

def face_up(n,card)
    (n-1).step(100,n-1) do |num|
        if card[num] == "x"
            card[num] = num
        else
            card[num] = "x"
        end
    end
    card 
end

(2..100).each do |n|
    card = face_up(n,card)
end
p card.select{|x| x != "x"}