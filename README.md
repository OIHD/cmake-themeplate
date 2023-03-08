# Otomatik cmake projesi oluşturucu
 Bu otomatik hazırlanan themeplate dosyası vscode uygulamasında kullanmak için kenara koyduğum cmake themeplate dosyasıdır. isme göre generate olmaktadır. sonradan tekrar gerekebileceğinden tekrardan bu themeplatei hazırlamakla uğraşmamak için buraya yedekledim .   
   
### *linux* için kullanımı ;   

###### önce temel gereksinimleri kur ( Ubuntu&Debian ) :   
`sudo apt-get install  g++ gdb build-essential libssl-dev `
###### daha sonra vscode cmake tools eklentisini veya c++ extension packı kuruyoruz sonrada ;   
   
## terminal aç ve alttaki kodu yaz   

`git clone https://github.com/OIHD/cmake-themeplate.git&&cd $HOME/cmake-themeplate/ && sh setup.sh   `

> Terminalde projenize bir isim vermeniz istenecektir oraya projenizin ismini giriniz , girdiginiz isme göre tüm proje dosyası verdiğiniz isime göre isim_proje, buildisim , isim klasörleri hazırlanacaktır.   
   
###### vscodeyi aç ve ;
> vscode menubar -> file -> open folder -> verdiğiniz isimdeki dosyayı /home/kullaniciadiniz/ klasöründe bulun ve açın
(isim_Proje klasorunun icinde , verdiginiz isimde klasor ) sonrada gelen ekranda unspecified i seç
   
> vscode menubar -> terminal -> run task -> *FIRST*   
> vscode menubar -> terminal -> run task -> *SECOND* -> continue without scan the ...   

###### Artık *F5* ile veya
> vscode menubar-> run -> start debugging
/yaparak debug yapabilirsin

Kurulumdan sonra cmake-themeplate klasörünün ismi terminalde vermiş olduğunuz isim olmaktadır , istediğin klasöre taşıyabilirsin. Yollarla ilgili bir sorun oluşursa FIRST ve SECOND taskını tekrardan çalıştır.

##### SON GÜNCELLEME : 8 Mart 2023
