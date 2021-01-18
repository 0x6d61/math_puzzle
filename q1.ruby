(10..).each do |n|
    if (n.to_s == n.to_s.reverse) && (n.to_s(2) == n.to_s(2).reverse) && (n.to_s(8) == n.to_s(8).reverse)
        puts n
        exit
    end
end     