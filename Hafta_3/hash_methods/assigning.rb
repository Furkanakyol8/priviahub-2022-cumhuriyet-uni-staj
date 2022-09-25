# store Metotu: Atama yapmanın farklı bir yöntemidir.

h = {:user => "vesile", :password => "123456"}
h.store(:email, "vesile@example.com") # => "vesile@example.com"
h                                   # => {:user=>"vesile", :password=>"123456", :email=>"vesile@example.com"}


# merge, uptade, merge! Metotları: İki Hash’i birbiryle birleştirmek için merge kullanılır. Eğer bu birleşmenin kalıcı olmasını isteseydik ya update ya da merge! kullanırdık.

h1 = { "a" => 100, "b" => 200 }
h2 = { "x" => 1, "y" => 2, "z" => 3 }
h1.merge(h2) # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}
h1           # => {"a"=>100, "b"=>200}

h1 = { "a" => 100, "b" => 200 }
h2 = { "x" => 1, "y" => 2, "z" => 3 }
h1.update(h2) # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}
h1            # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}

h1 = { "a" => 100, "b" => 200 }
h2 = { "x" => 1, "y" => 2, "z" => 3 }
h1.merge!(h2) # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}
h1            # => {"a"=>100, "b"=>200, "x"=>1, "y"=>2, "z"=>3}


# replace Metotu: Hash’in içeriğini başka bir Hash ile değiştirmek için kullanılır.

h1 = { "a" => 100, "b" => 200, "c" => 0 }
h1.__id__ # => 70320602334320
h1.replace({ "foo" => 1, "bar" => 2 })
h1        # => {"foo"=>1, "bar"=>2}
h1.__id__ # => 70320602334320