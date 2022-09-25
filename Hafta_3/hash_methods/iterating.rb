=begin
    
each, each_pair, each_value, each_key Metotları:
each_value sadece value, each_key de sadece key döner.
each, each_pair ise Her bir anahtar/değer çiftiyle belirli bir bloğu çağırır.
    
=end

h = { "a" => 100, "b" => 200, "c" => 0 }
h.each { |key, value| puts "key: #{key}, value: #{value}" }
h.each_pair { |key, value| puts "key: #{key}, value: #{value}" }

# key: a, value: 100
# key: b, value: 200
# key: c, value: 0

h = { "a" => 100, "b" => 200, "c" => 0 }

h.each_value { |value| puts "value: #{value}" }

# value: 100
# value: 200
# value: 0

h.each_key { |key| puts "key: #{key}" }

# key: a
# key: b
# key: c