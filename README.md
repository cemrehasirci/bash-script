# Dizin Analiz Scripti (Bash)

Bu script, verilen bir dizin (parametre verilmezse mevcut dizin) üzerinde temel dosya sistemi analizleri yapar ve sonucu terminale yazdırır.



## Script Ne Yapar?

Script çalıştırıldığında analiz edilecek dizini belirler ve aşağıdaki bilgileri üretir:

- Analiz edilen dizinin tam yolu  
- Dizinin sahibi olan kullanıcı  
- Dizinin birinci seviyesindeki klasör sayısı  
- Dizinin birinci seviyesindeki dosya sayısı  
- Dizinin toplam disk kullanımı  
- Dizindeki en büyük boyutlu dosya veya klasör  
- Dizindeki en küçük boyutlu dosya veya klasör  
- Dizinde bulunan dosya uzantılarının benzersiz listesi  


Script yalnızca okuma işlemi yapar, sistem üzerinde değişiklik yapmaz.



## Kullanım

Mevcut dizini analiz etmek için:
```bash
chmod +x explain-cli.sh
./explain-cli.sh
