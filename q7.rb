require "date"

(Date.parse('1966-07-13')..Date.parse('2020-07-24')).each do |date|
    binary = date.strftime("%Y%m%d").to_i.to_s(2)
    if binary == binary.reverse
        puts date.strftime("%Y%m%d")
    end
end
