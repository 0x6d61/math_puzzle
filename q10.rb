def europe_roulette(start, range)
  europe = [0, 32, 15, 19, 4, 21, 2, 25, 17, 34, 6, 27, 13, 36, 11, 30, 8, 23, 10, 5, 24, 16, 33, 1, 20, 14, 31, 9, 22, 18, 29, 7, 28, 12, 35, 3, 26]
  if start + range > europe.size
    list = europe[start..europe.size]
    list = list + europe[0...(range - list.size)]
  else
    europe.slice(start, range)
  end
end

def america_roulette(start, range)
  america = [0, 28, 9, 26, 30, 11, 7, 20, 32, 17, 5, 22, 34, 15, 3, 24, 36, 13, 1, 0, 27, 10, 25, 29, 12, 8, 19, 31, 18, 6, 21, 33, 16, 4, 23, 35, 14, 2]
  if start + range > america.size
    list = america[start..america.size]
    list = list + america[0...(range - list.size)]
  else
    america.slice(start, range)
  end
end

count = 0
2.upto(36) do |n|
  europe_max = 0
  america_max = 0
  37.times do |start|
    america_max = america_roulette(start, n).sum if america_roulette(start, n).sum > america_max
    europe_max = europe_roulette(start, n).sum if europe_roulette(start, n).sum > europe_max
  end
  if america_max > europe_max
    count += 1
  end
end

p count