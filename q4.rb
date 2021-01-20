#答え見た😂

def rod_split(rod,worker,c=0)
    if c > rod
        0
    elsif worker > c
        1 + rod_split(rod,worker,c*2)
    else
        1 + rod_split(rod,worker,c+worker)
    end
end

p rod_split(8,3,1)
p rod_split(20,3,1)
p rod_split(100,5,1)