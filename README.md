Bu themeplate dosyası vscode uygulamasında kullanmak için kenara koyduğum cmake themeplate dosyasıdır. sonradan tekrar gerekebileceğinden tekrardan yazmakla uğraşmamak için buraya yedekledim . linux için kullanımı ;

terminal aç ve alttaki kodları yaz   

`git clone https://github.com/OIHD/cmake-themeplate.git   `

`cd $HOME/cmake-themeplate/ && sh setup.sh`   

vscodeyi aç ve ;   
vscode menubar -> file -> open folder -> themeplate dosyasını aç ve unspecified i seç   
vscode menubar -> terminal -> run task -> FIRST   
vscode menubar -> terminal -> run task -> SECOND -> continue without scan the ...   

Artık F5 ile veya
vscode menubar-> run -> start debugging
yaparak debug yapabilirsin

Kurulumdan sonra cmake-themeplate klasörünün ismini istediğin gibi değiştirip , istediğin klasöre taşıyabilirsin. Yollarla ilgili bir sorun oluşursa FIRST ve SECOND taskını tekrardan çalıştır.

SON GÜNCELLEME : 6 Mart 2023
