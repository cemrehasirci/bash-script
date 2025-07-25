#!/bin/bash
#alias explain="bash explain-cli.sh"

if [ "$#" -eq 0 ];then
	dizin=$(pwd)
else
	dizin=$1
fi

#dizin sahibi
SAHIBI=$(stat -c %U $dizin)

#klasör sayısı
KLASOR_SAYISI=$(find . $dizin -mindepth 1  -maxdepth 1 -type d | grep "$dizin" | wc -l )

#dosya sayısı
DOSYA_SAYISI=$(find . $dizin  -maxdepth 1 -type f | grep "$dizin" | wc -l)

#dizin boyutu
DIZIN_BOYUTU=$(du -ch $dizin | grep total)

#en büyük boyutlu dosya ve boyutu
BUYUK_DOSYA=$(du -ah $dizin --max-depth=1 | sort -rn | head -n 2 | tail -1 )

#en küçük boyutlu dosya ve boyutu
KUCUK_DOSYA=$(du -ah $dizin --max-depth=1 | sort -rn | tail -1)

#içindeki dosyalar ve uzantıları
DOSYALARI=$(find .  $dizin -type f -name "*.*" | grep "$dizin" | sed -n 's/.*\././p' | sort | uniq )

echo "Çalışılan dizin: $dizin"
echo "Dizin sahibi: $SAHIBI"
echo "Klasör sayısı: $KLASOR_SAYISI"
echo "Dizindeki dosya sayısı: $DOSYA_SAYISI"
echo "Dizin boyutu: $DIZIN_BOYUTU"
echo "Dizindeki en büyük boyutlu dosya: $BUYUK_DOSYA"
echo "Dizindeki en küçük boyutlu dosya: $KUCUK_DOSYA"
echo "Dizindeki dosyalar ve uzantıları: "
echo "$DOSYALARI"
