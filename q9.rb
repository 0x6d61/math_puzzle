#情報欠けてる気がするw
man, women = 21, 11
list = Array.new(man * women) { 0 }
list[0] = 1
women.times { |w|
  man.times { |m|
    if (m != w) && (man - m != women - w)
      list[m + man * w] += list[m - 1 + man * w] if m > 0
      list[m + man * w] += list[m + man * (w - 1)] if w > 0
    end
  }
}

puts list[-2] + list[-man - 1]
