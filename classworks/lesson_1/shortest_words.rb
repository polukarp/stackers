def shortest_words str
  words = str.split(" ").sort_by(&:length)
  return words.select {|word| word.length == words.first.length}
end

p shortest_word("bitcoin take over the world maybe who knows perhaps")
