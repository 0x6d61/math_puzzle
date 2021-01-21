#解答を見た😂

def move(log,n)
    return 1 if log.length == n + 1
    
    count = 0
    [[0,1],[0,-1],[1,0],[-1,0]].each do |d|
        next_pos = [log[-1][0] + d[0],log[-1][1] + d[1]]
        
        if !log.include?(next_pos)
            count += move(log + [next_pos],n)
        end
    end
    count
end

puts move([[0,0]],12)