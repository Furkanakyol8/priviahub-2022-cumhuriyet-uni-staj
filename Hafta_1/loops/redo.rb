# Döngü koşulunu kontrol etmeden en dahili döngünün bu yinelemesini yeniden başlatır.

for i in 0..5
    if i < 2 then
       puts "Değişkenin değeri: #{i}"
       redo
    end
 end
 # Çıktı sonsuz döner.