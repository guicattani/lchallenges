def length_of_last_word(s)
  return nil if s.length >= 104 || s.length < 1
  s.gsub(/ +/,' ').split(' ').last.length
end