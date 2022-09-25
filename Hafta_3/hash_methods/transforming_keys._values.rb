# transform_keys, transform_values Metotları: Hash değerlerini dönüştürmek için transform_values ve hash'in anahtarlarını dönüştürmek için transform_keys yöntemleri kullanılır.

h = { a: 1, b: 2, c: 3 }
h.transform_keys {|k| k.to_s }  #=> { "a" => 1, "b" => 2, "c" => 3 }

{ a: 1, b: 2, c: 3 }.transform_values { |x| x * 2 } # => { a: 2, b: 4, c: 6 }