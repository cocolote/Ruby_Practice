def measure(t = 1, &block)
  start = Time.now
  t.times {block.call}
  (Time.now - start)/t
end