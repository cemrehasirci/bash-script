#!/bin/bash
#alias explain="bash explain-cli.sh"

if [ "$#" -eq 0 ];then
	dizin=$(pwd)
else
	dizin=$1
fi

#dizin boyutu
DIZIN_BOYUTU=$(du -ch $dizin | grep total)

#dosya sayısı
DOSYA_SAYISI=$(ls $dizin | wc -l)

#en büyük boyutlu dosya ve boyutu
BUYUK_DOSYA=$(du -sh $dizin)

#en küçük boyutlu dosya ve boyutu
KUCUK_DOSYA=$(du -ah $dizin | sort -r | head -n 1)

#klasör sayısı
KLASOR_SAYISI=$(find . $dizin -type f | wc -l)

#dizin sahibi
SAHIBI=$(stat -c %U $dizin)

#içindeki dosyalar ve uzantıları
DOSYALARI=$(find . $dizin -type f -name "*" | grep "/home")


echo "Dizin boyutu: "
echo "$DIZIN_BOYUTU"
echo "Dizindeki dosya sayısı: $DOSYA_SAYISI"
echo "Dizindeki en büyük boyutlu dosya: $BUYUK_DOSYA"
echo "Dizindeki en küçük boyutlu dosya: $KUCUK_DOSYA"
echo "Klasör sayısı: $KLASOR_SAYISI"
echo "Dizin sahibi: $SAHIBI"
echo "Dizindeki dosyalar ve uzantıları: "
echo "$DOSYALARI"
