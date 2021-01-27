#解答見た😂
N = 10
STEPS = 4

def move(a,b)
    return 0 if a> b
    return 1 if a == b
    cnt = 0
    (1..STEPS).each do |da|
        (1..STEPS).each do |db|
            cnt += move(a+da,b - db)
        end
    end
    cnt
end

puts move(0,N)