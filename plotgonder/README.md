GİRİŞ
---------------------------------

Bu repo da accounları oluşturmak gibi işlemleri 1 sefer yapıp diğer sunuculara kopyala yapıştır yöntemi ile (scp komutu, FTP protokolü vb.) gönderebilirsiniz.

Bütün işlemleri yaptıktran sonra kopyaladığınız sunucularda Proje oluşturma, Service account u oluşturma vb. işlemleri yapmanıza gerek yok.

Adım 1. Kodları sanal sunucunuza kopyalayın
---------------------------------
 Herşeyden önce python3 ü yükleyin
 ```
 apt-get install -y python3 python3-pip
 ```

**Linux İçin**
---------------------------------
 ```
 sudo apt-get install screen git && curl https://rclone.org/install.sh | sudo bash
 ```
 Rclone kurulumu bittikten sonra bu komutu çalıştırıp repoyu çekelim
 ```
 sudo git clone https://github.com/puffytr/AutoRclone AutoRclone && cd AutoRclone && sudo pip3 install -r requirements.txt
 ```
**Windows İçin**
---------------------------------
 Python3 ü indirelim ve kuralım
 İndirme linki: [https://www.python.org/downloads/release/python-395/](https://www.python.org/downloads/release/python-395/)<br />
 **Önemli NOT:** Kurulum dosyasını açtıktan sonra altta bulunan **Add to PATH** Kutucuğunu işaretleyin.
 
 Repoyu ister ZIP olarak ister GIT kullanarak çalışma alanımıza atalım.<br />
 RClone u indirelim ve AutoRclone un bulunduğu klasöre atalım.<br />
 İndirme linki: [https://rclone.org/downloads/](https://rclone.org/downloads/)<br />
 WinFSP gerekebilir.<br />
 İndirme Linki: [https://github.com/billziss-gh/winfsp/releases/download/v1.9/winfsp-1.9.21096.msi](https://github.com/billziss-gh/winfsp/releases/download/v1.9/winfsp-1.9.21096.msi)<br />
 
 AutoRclone un bulunduğu klasörde Powershell penceresi açalım.<br />
 `pip3 install -r ./requirements.txt`

Adım 2. GDrive için Google Cloud üzerinde projemizi oluşturalım.
 ---------------------------------
 * [Google Cloud](https://console.cloud.google.com/) hesabınıza giriş yapın
 * Sol üstten 1 adet proje oluşturun, oluştuırduktan sonra projeyi seçin
 * Arama kısmına Drive yazın ve [Google Drive API](https://console.cloud.google.com/marketplace/product/google/drive.googleapis.com) Kısmına giriş yapıp Enable butonuna  basın.
 * Soldaki Menüden [API & Services](https://console.cloud.google.com/apis/dashboard) kısmına gelin
 * Soldaki menüden OAuth consent screen kısmına gelin External seçeneğini seçin ve devam edin. * ile işaretlenen bilgileri doldurmanız yeterli.
 * Oluşturduktan sonra tekrar OAuth consent screen kısmına gelin Testing kısmının altındaki Publish App butonuna basın.
 * Credentials kısmına gelin **+ Create Credential** e tıklayıp OAuth client ID ye tıklayın ve oluşturma işlemine devam edin. (Application Type ı ben Windows App olarak  seçiyorum size kalmış seçim.)
 * Crentials i oluşturduktan sonra **Credentials** sekmesine geri gelin ve oluşturduğunuz keyi indiirp AutoRclone un bulunduğu klasöre **credentials.json** ismiyle atın.

Adım 3. Rclone Config
 ---------------------------------
 
 Linux için: rclone config
 Windows için: ./rclone.exe config
 
 Config yapmanız gerekmektedir.
 
 * Name olarak GDrive yazbilirsiniz. Sizin tercihiniz.
 * Storage kısmına hangi storage kısmını bağlayacaksanız onu seçin. GDrive için 15 (Rclone güncelleme alırsa sıralma değişebilir kontrol etmekte fayada var.)
 
 
 * Bundan sonraki adımlar sadece Google Drive için verilmiştir. Diğer storage sistemleri için kendiniz ayar bulmalısınız.
 
 * Client ID: BOŞ
 * Client_secret: BOŞ
 * scope kısmında 1 e basıp devam ediyoruz. (1 e bastığımızda direkt olarak full yetki vermiş oluyoruz. İsteyen istediği gibi özelleştirebilir.)
 * root_folder_id BOŞ
 * service_account_file BOŞ
 * Advanced Config için N diyoruz.
 * Use auto config? Sorusuna **N** diyoruz.
 * Terminalde çıkan linki kopyalayıp tarayıcımızda açıyoruz. Projeyi oluşturduğumuz hesap ile giriş yapıp herşeye izin veriyoruz.
 * İzinleri verdikten sonra karşımıza kod çıkıyor. Bu kodu kopyalayıp Terminal e yapıştırıyoruz.
 * Configure this as a Shared Drive (Team Drive)? Sorusuna **Y** diyoruz.
 * Karşımıza açtığımız Shared Drive Lar çıkıyor. Hangisini kullanmak istiyorsak solundaki sayıyı yazıyoruz ve enter a basıyoruz.
 * Config işlemimiz tamamlandı. Q enter yaparak config ekranından çıkabiliriz.
 
 
Adım 4. GDrive için Service accountlarını oluşturma
---------------------------------
 
 Kodumuz gayet basit.<br />
 `python3 multifactory.py --quick-setup N`<br />
 
 Ensondaki N yerine kaç tane proje açmak istiyosanız onu belirtin.<br />
 Örnek kod:  `python3 multifactory.py --quick-setup N`<br />
 1 Proje = 100 Kullanıcı = 75TB<br />
 
 **Herkese önerim 1 projeden fazla açmayın aksi takdirde google dan ban yiyebilirsiniz.**

Adım 5. GDrive için Service Accountlarını Shared Drive'a ekleme
---------------------------------

 Yine buradada komudumuz basit.
 `python3 masshare.py -d FolderID`
 
 **FolderID** Kısmına shared driveınınz ID sini yazıcaksınız. Bulması çok basit.
 
 * Google Drive'ı açın Shred drive ınıza girin ve linkin sonundaki kodu kopyalayın.
 
 Örnek Link: `https://drive.google.com/drive/folders/0APX5ggfgZnmEUayPVA`<br />
 Örnek FolderID: `0APX5ggfgZnmEUayPVA`<br />
 Örnek Kod: `python3 masshare.py -d 0APX5ggfgZnmEUayPVA`<br />

Adım 6. Ayar Yapmak
---------------------------------
 autorclone.py adlı dosyayı editörümüz ile açıyoruz
 
 Sizin için gereklı olan yorum satırlarını türkçeleştirdim ve gerekli bilgileri verdim. Yorum satırlarını okuyarak gerekli yerleri doldurun.

Adım 7. Otomatikleştirme
---------------------------------

 Sonunda buraya gelebildik :D<br />
 Basit bir işlem yapacağız.<br />
 `crontab -e` yazıyoruz ve crontab ımıza ulaşıyoruz.<br />
 **NOT: Crontab ı ilk defa açıyorsanız hangi editör ü kullanmak istediğinizi sorar. Tercihim `nano` kullanmanız kullanımı basit.**<br />
 en alt satıra `0 */1 * * * /usr/bin/python3 /root/autorclone/autorclone.py` yazıyoruz ve bitiyor.
 **NOT: klasörün yeri değişik ise klasörün ismini vs. değiştirin.**