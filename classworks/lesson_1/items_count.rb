def items_count(arr)
  arr.tally.each { |val, key| }
end

p items_count(%w[Стол Ручка Ручка])
