# 🚀 CI/CD Sunum Rehberi

Sunum sırasında sistemin tıkır tıkır çalışması için bu adımları sırasıyla takip et:

## 1. Hazırlık: Docker'ı Başlat
* Bilgisayarında **Docker Desktop** uygulamasını aç ve servislerin "Running" (Yeşil) olduğundan emin ol.

## 2. Dış Dünyaya Erişim: ngrok
* Terminali aç ve şu komutu çalıştır:
  ```bash
  .\ngrok http 8080
  ```
* **ÖNEMLİ:** Ekranda görünen `Forwarding` adresini (Örn: `https://abcd-123.ngrok-free.dev`) kopyala.

## 3. Bağlantı Ayarı: GitHub Webhook
* GitHub repona git -> **Settings** -> **Webhooks**.
* Mevcut webhook'u **Edit** butonuyla aç.
* **Payload URL** kısmındaki eski adresi sil, yeni kopyaladığın adresi yapıştır.
* **NOT:** Adresin sonu mutlaka `/github-webhook/` ile bitmeli.
* **Update Webhook** diyerek kaydet. GitHub'da yeşil bir tik görmelisin.

## 4. Ana Kontrol Merkezi: Jenkins
* Yeni bir terminal aç (ngrok kapanmasın!) ve Jenkins'in olduğu klasöre git:
  ```bash
  java -jar jenkins.war
  ```
* Tarayıcıdan `http://localhost:8080` adresine girip Jenkins'in açılmasını bekle.

## 5. Uygulama ve Demo: Git Push
* VS Code üzerinden `HelloController.java` dosyasındaki mesajı değiştir.
* Terminalden değişikliği gönder:
  ```bash
  git add .
  git commit -m "Sunum denemesi"
  git push
  ```
* **Jenkins Logları:** Jenkins Dashboard'a gir ve Build loglarını göster. Burada Maven build ve Docker imaj basma süreçlerini hocana anlatabilirsin.
* **Final Sonuç:** Tarayıcıda `http://localhost:8081` adresini yenile ve değişikliği göster.

---
**Bol şans Beishang! Başarılar!**
