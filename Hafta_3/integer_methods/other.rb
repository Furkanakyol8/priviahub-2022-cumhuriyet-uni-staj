# downto Metotu: Aşağıdan ' ye kadar her tamsayı değeriyle verilen bloğu çağırır.

= []
10.downto(5) {|i| a << i }              # => 10
a                                       # => [10, 9, 8, 7, 6, 5]


# times Metotu: İçindeki her tamsayı ile verilen blok sürelerini çağırır.

a = []
5.times {|i| a.push(i) } # => 5
a                        # => [0, 1, 2, 3, 4]


# upto Metotu: Verilen değere kadar olan her tamsayı değeri ile verilen bloğu çağırır.

a = []
5.upto(10) {|i| a << i }              # => 5
a                                     # => [5, 6, 7, 8, 9, 10]




