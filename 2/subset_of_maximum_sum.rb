# taken from https://gist.github.com/pithyless/9738125
class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

def subset_of_maximum_sum(s)
  max_index = find_index_of_max(s)
  a, b, max_a, max_b = max_index, max_index, max_index, max_index
  sum_max = s[max_index]

  while a >= 0 do
    while b < s.length
      if s[a..b].sum > sum_max
        sum_max = s[a..b].sum
        max_a = a
        max_b = b
      end
      b += 1
    end
    b = max_index
    a -= 1
  end

  [max_a, max_b]
end

def find_index_of_max(s)
  max = Integer::MIN
  max_index = 0
  s.each.with_index do |element, index|
    if element > max
      max = element
      max_index = index
    end
  end
  max_index
end