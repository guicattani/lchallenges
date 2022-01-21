def longest_same_char_substring(s)
  first_index, second_index, max_first_index, max_second_index = 0, 0, 0, 0
  longest_substring = s[0]

  while first_index < s.length
    character = s[first_index]

    while second_index < s.length
      second_index += 1
      if s[second_index] == character
        if s[first_index..second_index].length > longest_substring.length
          max_first_index = first_index
          max_second_index = second_index
          longest_substring = s[first_index..second_index]
        end
      else
        break
      end
    end
    first_index = second_index
  end

  longest_substring
end
