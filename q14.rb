#解答を見た😂

country = [
  "Brazil",
  "Cameroon",
  "Chile",
  "Greece",
  "Uruguay",
  "Italy",
  "France",
  "Bosnia and Heregovina",
  "Gernany",
  "USA",
  "Russia",
  "Croatia",
  "Spain",
  "Australia",
  "Cote d'lvoire",
  "Costa Rica",
  "Switzerland",
  "Honduras",
  "Iran",
  "Portugal",
  "Belgium",
  "Korea Republic",
  "Mexico",
  "Netherlands",
  "Colombia",
  "Japan",
  "England",
  "Ecuador",
  "Agentina",
  "Nigeria",
  "Ghana",
  "Algeria",
]

country_upcase = country.map(&:upcase)

def search(countrys, prev, depth)
  next_country = countrys.select { |c| c[0] == prev[-1] }
  if next_country.size > 0
    next_country.each { |c|
      search(countrys - [c], c, depth + 1)
    }
  else
    $max_depth = [$max_depth, depth].max
  end
end

$max_depth = 0
country_upcase.each { |c|
  search(country_upcase - [c], c, 1)
}

puts $max_depth
