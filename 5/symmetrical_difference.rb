def symmetrical_difference(n = [],m = [])
  return nil if n.nil? && m.nil?
  return n if m.nil?
  return m if n.nil?
  return nil if n.length >= 100 || m.length >= 100

  (n + m - n.intersection(m)).sort
end