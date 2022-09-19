# Blokta veya for ifadesinin gövdesinde yeniden deneme görünürse, yineleyici çağrısının çağrısını yeniden başlatır.

for i in 1..5
    retry if some_condition # i'yi yeniden başlatır.
 end