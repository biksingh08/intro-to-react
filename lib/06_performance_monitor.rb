def measure(default = 1)
  start_time = Time.now
  default.times {yield}
  (Time.now - start_time) / default
end
