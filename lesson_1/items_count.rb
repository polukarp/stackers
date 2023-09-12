
def items_count arr
  return arr.tally.each {|val, key| "#{val} #{key}"}
end

p items_count(["Стол", "Ручка", "Ручка"])
