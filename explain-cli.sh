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
KLASOR_SAYISI=$(find . $dizin -type f | wc -l)

#dosya sayısı
DOSYA_SAYISI=$(find . $dizin -type d | wc -l)

#dizin boyutu
DIZIN_BOYUTU=$(du -ch $dizin | grep total)

#en büyük boyutlu dosya ve boyutu
BUYUK_DOSYA=$(du -sh $dizin)

#en küçük boyutlu dosya ve boyutu
KUCUK_DOSYA=$(du -ah $dizin | sort -r | head -n 1)

#içindeki dosyalar ve uzantıları
DOSYALARI=$(find . $dizin -type f -name "*" | grep "$dizin")

echo "Çalışılan dizin: $dizin"
echo "Dizin sahibi: $SAHIBI"
echo "Klasör sayısı: $KLASOR_SAYISI"
echo "Dizindeki dosya sayısı: $DOSYA_SAYISI"
echo "Dizin boyutu: $DIZIN_BOYUTU"
echo "Dizindeki en büyük boyutlu dosya: $BUYUK_DOSYA"
echo "Dizindeki en küçük boyutlu dosya: $KUCUK_DOSYA"
echo "Dizindeki dosyalar ve uzantıları: "
echo "$DOSYALARI"
