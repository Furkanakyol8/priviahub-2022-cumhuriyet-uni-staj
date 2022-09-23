=begin
    
Yineleme Metotları:
each_byte, Her ardışık bayt ile verilen bloğu çağırır.
each_char, içindeki her ardışık karakterle birlikte verilen bloğu çağırır.
each_codepoint, içindeki her ardışık tamsayı kod noktasıyla birlikte verilen bloğu çağırır.
each_grapheme_cluster, içindeki her bir ardışık grafik kümesiyle birlikte verilen bloğu çağırır. 
each_line, Belirli bir kayıt ayırıcı tarafından belirlendiği gibi , verilen her satırda verilen bloğu çağırır.
upto, Ardışık çağrılar tarafından döndürülen her dize değeriyle verilen bloğu çağırır.
 
=end

"merhaba".each_byte {|c| puts c }  # 109 (m)
                                   # 101 (e)
                                   # 114 (r)
                                   # 104 (h)
                                   # 97  (a)
                                   # 98  (b)
                                   # 97  (a)

"merhaba".each_char {|c| puts c }  # m
                                   # e
                                   # r
                                   # h
                                   # a
                                   # b
                                   # a

"Merhaba\nDünya\nNasıl sın?".each_line {|l| puts l } # Merhaba
                                                     # Dünya
                                                     # Nasıl sın?

"a1".upto("b1"){ |t| puts t }  # a1
                               # a2
                               # a3
                               # a4
                               # a5
                               # a6
                               # a7
                               # a8
                               # a9
                               # b0
                               # b1                    
