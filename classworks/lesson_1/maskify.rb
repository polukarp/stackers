def maskify str
  last_digits = str.length > 4 ? str.reverse[...4] : str
  hashes = (str.length - 4) > 0 ? "#" * (str.length - 4) : ""
  return hashes + last_digits
end

p maskify "123123123123124444"
p maskify "1"
p maskify ""
