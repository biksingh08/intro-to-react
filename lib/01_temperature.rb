def ftoc(fahrenheit)
  celsius = (("#{fahrenheit}").to_i - 32) * 5.0/9.0
  return celsius.ceil

end

def ctof(celsius)
  fahrenheit = "#{celsius}".to_i * 9.0/5.0 + 32
  return fahrenheit
end
