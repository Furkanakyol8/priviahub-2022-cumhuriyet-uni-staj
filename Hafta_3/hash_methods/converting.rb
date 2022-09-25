=begin
    
to_hash, to_h, to_a, to_s Metotları:
to_h ve to_hash eğer kendisi Hash ise sonuç yine kendisi olur.
to_a ise Hash'den Array yapmak için kullanılır. 
to_s de String'e çevirmek için kullanılır.
    
=end

h = {:foo => "bar"}
h                                 # => {:foo=>"bar"}
h.to_hash                         # => {:foo=>"bar"}
h.to_h                            # => {:foo=>"bar"}
["foo", "bar"].respond_to?(:to_h) # => true
[[:foo, "bar"]].to_h              # => {:foo=>"bar"}

[["a", 1], ["b", 2]].to_h   # => {"a"=>1, "b"=>2}

h.to_a                            # => [[:foo, "bar"]]
h.to_s                            # => "{:foo=>\"bar\"}"