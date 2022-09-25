# '<' Metotu: Belirli bir nesnenin uygun bir alt kümesi olup olmadığını döndürür.

h1 = {foo: 0, bar: 1}
h2 = {foo: 0, bar: 1, baz: 2}
h1 < h2 # => true
h2 < h1 # => false
h1 < h1 # => false


# '<=' Metotu: Belirli bir nesnenin alt kümesi olup olmadığını döndürür.

h1 = {foo: 0, bar: 1}
h2 = {foo: 0, bar: 1, baz: 2}
h1 <= h2 # => true
h2 <= h1 # => false
h1 <= h1 # => true


# '==' Metotu: Belirli bir nesnenin eşit olup olmadığını döndürür.

h1 = {foo: 0, bar: 1, baz: 2}
h2 = {foo: 0, bar: 1, baz: 2}
h1 == h2 # => true
h3 = {baz: 2, bar: 1, foo: 0}
h1 == h3 # => true


# '>' Metotu: Belirli bir nesnenin uygun bir üst kümesi olup olmadığını döndürür.

h1 = {foo: 0, bar: 1, baz: 2}
h2 = {foo: 0, bar: 1}
h1 > h2 # => true
h2 > h1 # => false
h1 > h1 # => false


# '>=' Metotu: Belirli bir nesnenin uygun bir üst kümesi olup olmadığını döndürür.

h1 = {foo: 0, bar: 1, baz: 2}
h2 = {foo: 0, bar: 1}
h1 >= h2 # => true
h2 >= h1 # => false
h1 >= h1 # => true