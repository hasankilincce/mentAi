import SwiftUI
import SwiftData

struct University: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let type: String // "Devlet" veya "Vakıf"
    
    static let allUniversities: [University] = [
        University(name: "Abdullah Gül Üniversitesi", type: "Devlet"),
        University(name: "Acıbadem Mehmet Ali Aydınlar Üniversitesi", type: "Vakıf"),
        University(name: "Adana Alparslan Türkeş Bilim ve Teknoloji Üniversitesi", type: "Devlet"),
        University(name: "Adıyaman Üniversitesi", type: "Devlet"),
        University(name: "Afyon Kocatepe Üniversitesi", type: "Devlet"),
        University(name: "Afyonkarahisar Sağlık Bilimleri Üniversitesi", type: "Devlet"),
        University(name: "Ağrı İbrahim Çeçen Üniversitesi", type: "Devlet"),
        University(name: "Akdeniz Üniversitesi", type: "Devlet"),
        University(name: "Aksaray Üniversitesi", type: "Devlet"),
        University(name: "Alanya Alaaddin Keykubat Üniversitesi", type: "Devlet"),
        University(name: "Alanya Üniversitesi", type: "Vakıf"),
        University(name: "Altınbaş Üniversitesi", type: "Vakıf"),
        University(name: "Amasya Üniversitesi", type: "Devlet"),
        University(name: "Anadolu Üniversitesi", type: "Devlet"),
        University(name: "Ankara Bilim Üniversitesi", type: "Vakıf"),
        University(name: "Ankara Hacı Bayram Veli Üniversitesi", type: "Devlet"),
        University(name: "Ankara Medipol Üniversitesi", type: "Vakıf"),
        University(name: "Ankara Müzik ve Güzel Sanatlar Üniversitesi", type: "Devlet"),
        University(name: "Ankara Sosyal Bilimler Üniversitesi", type: "Devlet"),
        University(name: "Ankara Üniversitesi", type: "Devlet"),
        University(name: "Ankara Yıldırım Beyazıt Üniversitesi", type: "Devlet"),
        University(name: "Antalya Belek Üniversitesi", type: "Vakıf"),
        University(name: "Antalya Bilim Üniversitesi", type: "Vakıf"),
        University(name: "Ardahan Üniversitesi", type: "Devlet"),
        University(name: "Artvin Çoruh Üniversitesi", type: "Devlet"),
        University(name: "Atatürk Üniversitesi", type: "Devlet"),
        University(name: "Atılım Üniversitesi", type: "Vakıf"),
        University(name: "Avrasya Üniversitesi", type: "Vakıf"),
        University(name: "Aydın Adnan Menderes Üniversitesi", type: "Devlet"),
        University(name: "Bahçeşehir Üniversitesi", type: "Vakıf"),
        University(name: "Balıkesir Üniversitesi", type: "Devlet"),
        University(name: "Bandırma Onyedi Eylül Üniversitesi", type: "Devlet"),
        University(name: "Bartın Üniversitesi", type: "Devlet"),
        University(name: "Başkent Üniversitesi", type: "Vakıf"),
        University(name: "Batman Üniversitesi", type: "Devlet"),
        University(name: "Bayburt Üniversitesi", type: "Devlet"),
        University(name: "Beykoz Üniversitesi", type: "Vakıf"),
        University(name: "Bezm-i Âlem Vakıf Üniversitesi", type: "Vakıf"),
        University(name: "Bilecik Şeyh Edebali Üniversitesi", type: "Devlet"),
        University(name: "Bingöl Üniversitesi", type: "Devlet"),
        University(name: "Biruni Üniversitesi", type: "Vakıf"),
        University(name: "Bitlis Eren Üniversitesi", type: "Devlet"),
        University(name: "Boğaziçi Üniversitesi", type: "Devlet"),
        University(name: "Bolu Abant İzzet Baysal Üniversitesi", type: "Devlet"),
        University(name: "Burdur Mehmet Akif Ersoy Üniversitesi", type: "Devlet"),
        University(name: "Bursa Teknik Üniversitesi", type: "Devlet"),
        University(name: "Bursa Uludağ Üniversitesi", type: "Devlet"),
        University(name: "Çağ Üniversitesi", type: "Vakıf"),
        University(name: "Çanakkale Onsekiz Mart Üniversitesi", type: "Devlet"),
        University(name: "Çankaya Üniversitesi", type: "Vakıf"),
        University(name: "Çankırı Karatekin Üniversitesi", type: "Devlet"),
        University(name: "Çukurova Üniversitesi", type: "Devlet"),
        University(name: "Demiroğlu Bilim Üniversitesi", type: "Vakıf"),
        University(name: "Dicle Üniversitesi", type: "Devlet"),
        University(name: "Doğuş Üniversitesi", type: "Vakıf"),
        University(name: "Dokuz Eylül Üniversitesi", type: "Devlet"),
        University(name: "Düzce Üniversitesi", type: "Devlet"),
        University(name: "Ege Üniversitesi", type: "Devlet"),
        University(name: "Erciyes Üniversitesi", type: "Devlet"),
        University(name: "Erzincan Binali Yıldırım Üniversitesi", type: "Devlet"),
        University(name: "Erzurum Teknik Üniversitesi", type: "Devlet"),
        University(name: "Eskişehir Osmangazi Üniversitesi", type: "Devlet"),
        University(name: "Eskişehir Teknik Üniversitesi", type: "Devlet"),
        University(name: "Fatih Sultan Mehmet Vakıf Üniversitesi", type: "Vakıf"),
        University(name: "Fenerbahçe Üniversitesi", type: "Vakıf"),
        University(name: "Fırat Üniversitesi", type: "Devlet"),
        University(name: "Galatasaray Üniversitesi", type: "Devlet"),
        University(name: "Gazi Üniversitesi", type: "Devlet"),
        University(name: "Gaziantep İslam Bilim ve Teknoloji Üniversitesi", type: "Devlet"),
        University(name: "Gaziantep Üniversitesi", type: "Devlet"),
        University(name: "Gebze Teknik Üniversitesi", type: "Devlet"),
        University(name: "Giresun Üniversitesi", type: "Devlet"),
        University(name: "Gümüşhane Üniversitesi", type: "Devlet"),
        University(name: "Hacettepe Üniversitesi", type: "Devlet"),
        University(name: "Hakkari Üniversitesi", type: "Devlet"),
        University(name: "Haliç Üniversitesi", type: "Vakıf"),
        University(name: "Harran Üniversitesi", type: "Devlet"),
        University(name: "Hasan Kalyoncu Üniversitesi", type: "Vakıf"),
        University(name: "Hatay Mustafa Kemal Üniversitesi", type: "Devlet"),
        University(name: "Hitit Üniversitesi", type: "Devlet"),
        University(name: "Iğdır Üniversitesi", type: "Devlet"),
        University(name: "Isparta Uygulamalı Bilimler Üniversitesi", type: "Devlet"),
        University(name: "Işık Üniversitesi", type: "Vakıf"),
        University(name: "İbn Haldun Üniversitesi", type: "Vakıf"),
        University(name: "İhsan Doğramacı Bilkent Üniversitesi", type: "Vakıf"),
        University(name: "İnönü Üniversitesi", type: "Devlet"),
        University(name: "İskenderun Teknik Üniversitesi", type: "Devlet"),
        University(name: "İstanbul 29 Mayıs Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Arel Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Atlas Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Aydın Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Beykent Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Bilgi Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Esenyurt Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Galata Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Gedik Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Gelişim Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Kent Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Kültür Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Medeniyet Üniversitesi", type: "Devlet"),
        University(name: "İstanbul Medipol Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Nişantaşı Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Okan Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Rumeli Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Sabahattin Zaim Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Sağlık ve Teknoloji Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Teknik Üniversitesi", type: "Devlet"),
        University(name: "İstanbul Ticaret Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Topkapı Üniversitesi", type: "Vakıf"),
        University(name: "İstanbul Üniversitesi", type: "Devlet"),
        University(name: "İstanbul Üniversitesi-Cerrahpaşa", type: "Devlet"),
        University(name: "İstanbul Yeni Yüzyıl Üniversitesi", type: "Vakıf"),
        University(name: "İstinye Üniversitesi", type: "Vakıf"),
        University(name: "İzmir Bakırçay Üniversitesi", type: "Devlet"),
        University(name: "İzmir Demokrasi Üniversitesi", type: "Devlet"),
        University(name: "İzmir Ekonomi Üniversitesi", type: "Vakıf"),
        University(name: "İzmir Katip Çelebi Üniversitesi", type: "Devlet"),
        University(name: "İzmir Tınaztepe Üniversitesi", type: "Vakıf"),
        University(name: "İzmir Yüksek Teknoloji Enstitüsü", type: "Devlet"),
        University(name: "Kadir Has Üniversitesi", type: "Vakıf"),
        University(name: "Kafkas Üniversitesi", type: "Devlet"),
        University(name: "Kahramanmaraş İstiklal Üniversitesi", type: "Devlet"),
        University(name: "Kahramanmaraş Sütçü İmam Üniversitesi", type: "Devlet"),
        University(name: "Kapadokya Üniversitesi", type: "Vakıf"),
        University(name: "Karabük Üniversitesi", type: "Devlet"),
        University(name: "Karadeniz Teknik Üniversitesi", type: "Devlet"),
        University(name: "Karamanoğlu Mehmetbey Üniversitesi", type: "Devlet"),
        University(name: "Kastamonu Üniversitesi", type: "Devlet"),
        University(name: "Kayseri Üniversitesi", type: "Devlet"),
        University(name: "Kırıkkale Üniversitesi", type: "Devlet"),
        University(name: "Kırklareli Üniversitesi", type: "Devlet"),
        University(name: "Kırşehir Ahi Evran Üniversitesi", type: "Devlet"),
        University(name: "Kilis 7 Aralık Üniversitesi", type: "Devlet"),
        University(name: "Kocaeli Sağlık ve Teknoloji Üniversitesi", type: "Vakıf"),
        University(name: "Kocaeli Üniversitesi", type: "Devlet"),
        University(name: "Koç Üniversitesi", type: "Vakıf"),
        University(name: "Konya Gıda ve Tarım Üniversitesi", type: "Vakıf"),
        University(name: "Konya Teknik Üniversitesi", type: "Devlet"),
        University(name: "KTO Karatay Üniversitesi", type: "Vakıf"),
        University(name: "Kütahya Dumlupınar Üniversitesi", type: "Devlet"),
        University(name: "Kütahya Sağlık Bilimleri Üniversitesi", type: "Devlet"),
        University(name: "Lokman Hekim Üniversitesi", type: "Vakıf"),
        University(name: "Malatya Turgut Özal Üniversitesi", type: "Devlet"),
        University(name: "Maltepe Üniversitesi", type: "Vakıf"),
        University(name: "Manisa Celâl Bayar Üniversitesi", type: "Devlet"),
        University(name: "Mardin Artuklu Üniversitesi", type: "Devlet"),
        University(name: "Marmara Üniversitesi", type: "Devlet"),
        University(name: "MEF Üniversitesi", type: "Vakıf"),
        University(name: "Mersin Üniversitesi", type: "Devlet"),
        University(name: "Mimar Sinan Güzel Sanatlar Üniversitesi", type: "Devlet"),
        University(name: "Mudanya Üniversitesi", type: "Vakıf"),
        University(name: "Muğla Sıtkı Koçman Üniversitesi", type: "Devlet"),
        University(name: "Munzur Üniversitesi", type: "Devlet"),
        University(name: "Muş Alparslan Üniversitesi", type: "Devlet"),
        University(name: "Necmettin Erbakan Üniversitesi", type: "Devlet"),
        University(name: "Nevşehir Hacı Bektaş Veli Üniversitesi", type: "Devlet"),
        University(name: "Niğde Ömer Halisdemir Üniversitesi", type: "Devlet"),
        University(name: "Nuh Naci Yazgan Üniversitesi", type: "Vakıf"),
        University(name: "Ondokuz Mayıs Üniversitesi", type: "Devlet"),
        University(name: "Ordu Üniversitesi", type: "Devlet"),
        University(name: "Orta Doğu Teknik Üniversitesi", type: "Devlet"),
        University(name: "Osmaniye Korkut Ata Üniversitesi", type: "Devlet"),
        University(name: "OSTİM Teknik Üniversitesi", type: "Vakıf"),
        University(name: "Özyeğin Üniversitesi", type: "Vakıf"),
        University(name: "Pamukkale Üniversitesi", type: "Devlet"),
        University(name: "Piri Reis Üniversitesi", type: "Vakıf"),
        University(name: "Recep Tayyip Erdoğan Üniversitesi", type: "Devlet"),
        University(name: "Sabancı Üniversitesi", type: "Vakıf"),
        University(name: "Sağlık Bilimleri Üniversitesi", type: "Devlet"),
        University(name: "Sakarya Uygulamalı Bilimler Üniversitesi", type: "Devlet"),
        University(name: "Sakarya Üniversitesi", type: "Devlet"),
        University(name: "Samsun Üniversitesi", type: "Devlet"),
        University(name: "Sanko Üniversitesi", type: "Vakıf"),
        University(name: "Selçuk Üniversitesi", type: "Devlet"),
        University(name: "Siirt Üniversitesi", type: "Devlet"),
        University(name: "Sinop Üniversitesi", type: "Devlet"),
        University(name: "Sivas Bilim ve Teknoloji Üniversitesi", type: "Devlet"),
        University(name: "Sivas Cumhuriyet Üniversitesi", type: "Devlet"),
        University(name: "Süleyman Demirel Üniversitesi", type: "Devlet"),
        University(name: "Şırnak Üniversitesi", type: "Devlet"),
        University(name: "Tarsus Üniversitesi", type: "Devlet"),
        University(name: "TED Üniversitesi", type: "Vakıf"),
        University(name: "Tekirdağ Namık Kemal Üniversitesi", type: "Devlet"),
        University(name: "TOBB Ekonomi ve Teknoloji Üniversitesi", type: "Vakıf"),
        University(name: "Tokat Gaziosmanpaşa Üniversitesi", type: "Devlet"),
        University(name: "Toros Üniversitesi", type: "Vakıf"),
        University(name: "Trabzon Üniversitesi", type: "Devlet"),
        University(name: "Trakya Üniversitesi", type: "Devlet"),
        University(name: "Türk Hava Kurumu Üniversitesi", type: "Vakıf"),
        University(name: "Türk-Alman Üniversitesi", type: "Devlet"),
        University(name: "Ufuk Üniversitesi", type: "Vakıf"),
        University(name: "Uşak Üniversitesi", type: "Devlet"),
        University(name: "Üsküdar Üniversitesi", type: "Vakıf"),
        University(name: "Van Yüzüncü Yıl Üniversitesi", type: "Devlet"),
        University(name: "Yalova Üniversitesi", type: "Devlet"),
        University(name: "Yaşar Üniversitesi", type: "Vakıf"),
        University(name: "Yeditepe Üniversitesi", type: "Vakıf"),
        University(name: "Yıldız Teknik Üniversitesi", type: "Devlet"),
        University(name: "Yozgat Bozok Üniversitesi", type: "Devlet"),
        University(name: "Yüksek İhtisas Üniversitesi", type: "Vakıf"),
        University(name: "Zonguldak Bülent Ecevit Üniversitesi", type: "Devlet")
    ].sorted { $0.name < $1.name }
}

struct Department: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let group: String
    
    static let allDepartments: [Department] = [
        // A
        Department(name: "Abaza Dili ve Edebiyatı", group: "A"),
        Department(name: "Acil Yardım ve Afet Yönetimi (Fakülte)", group: "A"),
        Department(name: "Acil Yardım ve Afet Yönetimi (Yüksekokul)", group: "A"),
        Department(name: "Adli Bilimler", group: "A"),
        Department(name: "Adli Bilişim Mühendisliği", group: "A"),
        Department(name: "Adli Bilişim Mühendisliği (M.T.O.K.)", group: "A"),
        Department(name: "Ağaç İşleri Endüstri Mühendisliği", group: "A"),
        Department(name: "Ağaç İşleri Endüstri Mühendisliği (M.T.O.K.)", group: "A"),
        Department(name: "Aile ve Tüketici Bilimleri", group: "A"),
        Department(name: "Aktüerya Bilimleri", group: "A"),
        Department(name: "Alman Dili ve Edebiyatı", group: "A"),
        Department(name: "Almanca Mütercim-Tercümanlık", group: "A"),
        Department(name: "Almanca Öğretmenliği", group: "A"),
        Department(name: "Amerikan Kültürü ve Edebiyatı", group: "A"),
        Department(name: "Anestezi Teknolojisi", group: "A"),
        Department(name: "Animasyon", group: "A"),
        Department(name: "Antrenörlük Eğitimi", group: "A"),
        Department(name: "Antropoloji", group: "A"),
        Department(name: "Arap Dili ve Edebiyatı", group: "A"),
        Department(name: "Arapça Mütercim-Tercümanlık", group: "A"),
        Department(name: "Arapça Öğretmenliği", group: "A"),
        Department(name: "Arkeoloji", group: "A"),
        Department(name: "Arkeoloji ve Sanat Tarihi", group: "A"),
        Department(name: "Arnavut Dili ve Edebiyatı", group: "A"),
        Department(name: "Astronomi ve Uzay Bilimleri", group: "A"),
        Department(name: "Ayakkabı Tasarımı ve Üretimi", group: "A"),
        Department(name: "Azerbaycan Türkçesi ve Edebiyatı", group: "A"),
        
        // B
        Department(name: "Bahçe Bitkileri", group: "B"),
        Department(name: "Balıkçılık Teknolojisi Mühendisliği", group: "B"),
        Department(name: "Bankacılık", group: "B"),
        Department(name: "Bankacılık ve Finans", group: "B"),
        Department(name: "Bankacılık ve Sigortacılık (Fakülte)", group: "B"),
        Department(name: "Bankacılık ve Sigortacılık (Yüksekokul)", group: "B"),
        Department(name: "Basım Teknolojileri", group: "B"),
        Department(name: "Basın ve Yayın", group: "B"),
        Department(name: "Batı Dilleri", group: "B"),
        Department(name: "Beden Eğitimi ve Spor Öğretmenliği", group: "B"),
        Department(name: "Beslenme ve Diyetetik (Fakülte)", group: "B"),
        Department(name: "Beslenme ve Diyetetik (Yüksekokul)", group: "B"),
        Department(name: "Bilgi Güvenliği Teknolojisi (Fakülte)", group: "B"),
        Department(name: "Bilgi Güvenliği Teknolojisi (Yüksekokul)", group: "B"),
        Department(name: "Bilgi ve Belge Yönetimi", group: "B"),
        Department(name: "Bilgisayar Bilimleri", group: "B"),
        Department(name: "Bilgisayar Bilimleri ve Mühendisliği", group: "B"),
        Department(name: "Bilgisayar Mühendisliği", group: "B"),
        Department(name: "Bilgisayar Mühendisliği (M.T.O.K.)", group: "B"),
        Department(name: "Bilgisayar Teknolojisi ve Bilişim Sistemleri", group: "B"),
        Department(name: "Bilgisayar ve Öğretim Teknolojileri Öğretmenliği", group: "B"),
        Department(name: "Bilim Tarihi", group: "B"),
        Department(name: "Bilişim Sistemleri Mühendisliği", group: "B"),
        Department(name: "Bilişim Sistemleri Mühendisliği (M.T.O.K.)", group: "B"),
        Department(name: "Bilişim Sistemleri ve Teknolojileri (Fakülte)", group: "B"),
        Department(name: "Bilişim Sistemleri ve Teknolojileri (Yüksekokul)", group: "B"),
        Department(name: "Bitki Koruma", group: "B"),
        Department(name: "Bitkisel Üretim ve Teknolojileri", group: "B"),
        Department(name: "Biyokimya", group: "B"),
        Department(name: "Biyoloji", group: "B"),
        Department(name: "Biyoloji Öğretmenliği", group: "B"),
        Department(name: "Biyomedikal Mühendisliği", group: "B"),
        Department(name: "Biyomedikal Mühendisliği (M.T.O.K.)", group: "B"),
        Department(name: "Biyomühendislik", group: "B"),
        Department(name: "Biyosistem Mühendisliği", group: "B"),
        Department(name: "Biyoteknoloji", group: "B"),
        Department(name: "Boşnak Dili ve Edebiyatı", group: "B"),
        Department(name: "Bulgar Dili ve Edebiyatı", group: "B"),
        Department(name: "Bulgarca Mütercim-Tercümanlık", group: "B"),
        
        // C-Ç
        Department(name: "Cevher Hazırlama Mühendisliği", group: "C-Ç"),
        Department(name: "Coğrafya", group: "C-Ç"),
        Department(name: "Coğrafya (Açıköğretim)", group: "C-Ç"),
        Department(name: "Coğrafya Öğretmenliği", group: "C-Ç"),
        Department(name: "Çağdaş Türk Lehçeleri ve Edebiyatları", group: "C-Ç"),
        Department(name: "Çağdaş Yunan Dili ve Edebiyatı", group: "C-Ç"),
        Department(name: "Çalışma Ekonomisi ve Endüstri İlişkileri", group: "C-Ç"),
        Department(name: "Çalışma Ekonomisi ve Endüstri İlişkileri (Açıköğretim)", group: "C-Ç"),
        Department(name: "Çerkes Dili ve Kültürü", group: "C-Ç"),
        Department(name: "Çeviribilim", group: "C-Ç"),
        Department(name: "Çevre Mühendisliği", group: "C-Ç"),
        Department(name: "Çin Dili ve Edebiyatı", group: "C-Ç"),
        Department(name: "Çince Mütercim-Tercümanlık", group: "C-Ç"),
        Department(name: "Çizgi Film ve Animasyon", group: "C-Ç"),
        Department(name: "Çocuk Gelişimi (Fakülte)", group: "C-Ç"),
        Department(name: "Çocuk Gelişimi (Yüksekokul)", group: "C-Ç"),
        Department(name: "Çocuk Gelişimi (Açıköğretim)", group: "C-Ç"),
        
        // D
        Department(name: "Denizcilik İşletmeleri Yönetimi", group: "D"),
        Department(name: "Deniz Ulaştırma İşletme Mühendisliği (Fakülte)", group: "D"),
        Department(name: "Deniz Ulaştırma İşletme Mühendisliği (Yüksekokul)", group: "D"),
        Department(name: "Deri Mühendisliği", group: "D"),
        Department(name: "Dijital Oyun Tasarımı", group: "D"),
        Department(name: "Dil ve Konuşma Terapisi (Fakülte)", group: "D"),
        Department(name: "Dil ve Konuşma Terapisi (Yüksekokul)", group: "D"),
        Department(name: "Dilbilimi", group: "D"),
        Department(name: "Diş Hekimliği", group: "D"),
        Department(name: "Doğu Dilleri", group: "D"),
        Department(name: "Doğu Bilimleri", group: "D"),
        Department(name: "Drama ve Oyun Öğretmenliği", group: "D"),
        
        // E
        Department(name: "Ebelik", group: "E"),
        Department(name: "Eczacılık", group: "E"),
        Department(name: "Edebiyat", group: "E"),
        Department(name: "Ekonometri", group: "E"),
        Department(name: "Ekonomi", group: "E"),
        Department(name: "Elektrik Mühendisliği", group: "E"),
        Department(name: "Elektrik-Elektronik Mühendisliği", group: "E"),
        Department(name: "Elektrik-Elektronik Mühendisliği (M.T.O.K.)", group: "E"),
        Department(name: "Elektronik Ticaret ve Yönetimi", group: "E"),
        Department(name: "Elektronik ve Haberleşme Mühendisliği", group: "E"),
        Department(name: "Elementer Parçacık Fiziği", group: "E"),
        Department(name: "Endüstri Mühendisliği", group: "E"),
        Department(name: "Endüstriyel Tasarım", group: "E"),
        Department(name: "Endüstriyel Tasarım Mühendisliği", group: "E"),
        Department(name: "Enerji Mühendisliği", group: "E"),
        Department(name: "Enerji Sistemleri Mühendisliği", group: "E"),
        Department(name: "Ergoterapi", group: "E"),
        Department(name: "Ermeni Dili ve Edebiyatı", group: "E"),
        Department(name: "Eşit Ağırlıklı Programcılık", group: "E"),
        Department(name: "Etnoloji", group: "E"),
        Department(name: "Evrensel Tasarım ve Erişilebilirlik", group: "E"),
        
        // F
        Department(name: "Fars Dili ve Edebiyatı", group: "F"),
        Department(name: "Felsefe", group: "F"),
        Department(name: "Felsefe (Açıköğretim)", group: "F"),
        Department(name: "Felsefe Grubu Öğretmenliği", group: "F"),
        Department(name: "Fen Bilgisi Öğretmenliği", group: "F"),
        Department(name: "Film Tasarımı ve Yönetimi", group: "F"),
        Department(name: "Fizik", group: "F"),
        Department(name: "Fizik (Açıköğretim)", group: "F"),
        Department(name: "Fizik Mühendisliği", group: "F"),
        Department(name: "Fizik Öğretmenliği", group: "F"),
        Department(name: "Fotoğraf ve Video", group: "F"),
        Department(name: "Fransız Dili ve Edebiyatı", group: "F"),
        Department(name: "Fransızca Mütercim-Tercümanlık", group: "F"),
        Department(name: "Fransızca Öğretmenliği", group: "F"),
        
        // G
        Department(name: "Gıda Mühendisliği", group: "G"),
        Department(name: "Gemi İnşaatı ve Gemi Makineleri Mühendisliği", group: "G"),
        Department(name: "Gemicilik ve Gemi Teknolojisi Mühendisliği", group: "G"),
        Department(name: "Genetik ve Biyoinformatik", group: "G"),
        Department(name: "Genetik ve Biyomühendislik", group: "G"),
        Department(name: "Geografi (Bölge) Planlama", group: "G"),
        Department(name: "Geofizik Mühendisliği", group: "G"),
        Department(name: "Geomatik Mühendisliği", group: "G"),
        Department(name: "Gerontoloji", group: "G"),
        Department(name: "Geleneksel Türk El Sanatları", group: "G"),
        Department(name: "Gazetecilik", group: "G"),
        Department(name: "Görsel İletişim Tasarımı", group: "G"),
        Department(name: "Görsel Sanatlar Öğretmenliği", group: "G"),
        Department(name: "Grafik Tasarım", group: "G"),
        Department(name: "Gümrük İşletme", group: "G"),
        Department(name: "Güverte (Fakülte)", group: "G"),
        Department(name: "Güverte (Yüksekokul)", group: "G"),
        
        // H
        Department(name: "Halkbilimi", group: "H"),
        Department(name: "Halkla İlişkiler", group: "H"),
        Department(name: "Halkla İlişkiler ve Reklamcılık", group: "H"),
        Department(name: "Harita Mühendisliği", group: "H"),
        Department(name: "Hayvansal Üretim", group: "H"),
        Department(name: "Hemşirelik (Fakülte)", group: "H"),
        Department(name: "Hemşirelik (Yüksekokul)", group: "H"),
        Department(name: "Heterojen Malzeme Bilimi", group: "H"),
        Department(name: "Hidrojeoloji Mühendisliği", group: "H"),
        Department(name: "Hint Dili ve Edebiyatı", group: "H"),
        Department(name: "Hititoloji", group: "H"),
        Department(name: "Hukuk", group: "H"),
        Department(name: "Hungaroloji", group: "H"),
        
        // I-İ
        Department(name: "İbrani Dili ve Edebiyatı", group: "I-İ"),
        Department(name: "İlahiyat", group: "I-İ"),
        Department(name: "İletişim Bilimleri", group: "I-İ"),
        Department(name: "İletişim Sanatları", group: "I-İ"),
        Department(name: "İletişim Tasarımı", group: "I-İ"),
        Department(name: "İletişim Tasarımı ve Medya", group: "I-İ"),
        Department(name: "İletişim ve Tasarım", group: "I-İ"),
        Department(name: "İleri Malzemeler Bilimi", group: "I-İ"),
        Department(name: "İmalat Mühendisliği", group: "I-İ"),
        Department(name: "İnsan Kaynakları Yönetimi (Fakülte)", group: "I-İ"),
        Department(name: "İnsan Kaynakları Yönetimi (Yüksekokul)", group: "I-İ"),
        Department(name: "İnşaat Mühendisliği", group: "I-İ"),
        Department(name: "İslam Ekonomisi ve Finans", group: "I-İ"),
        Department(name: "İş Sağlığı ve Güvenliği (Fakülte)", group: "I-İ"),
        Department(name: "İş Sağlığı ve Güvenliği (Yüksekokul)", group: "I-İ"),
        Department(name: "İşletme", group: "I-İ"),
        Department(name: "İşletme (Açıköğretim)", group: "I-İ"),
        Department(name: "İşletme Enformatik", group: "I-İ"),
        Department(name: "İşletme Mühendisliği", group: "I-İ"),
        Department(name: "İşletme Yönetimi", group: "I-İ"),
        Department(name: "İspanyol Dili ve Edebiyatı", group: "I-İ"),
        Department(name: "İstatistik", group: "I-İ"),
        Department(name: "İstatistik ve Bilgisayar Bilimleri", group: "I-İ"),
        
        // J
        Department(name: "Japon Dili ve Edebiyatı", group: "J"),
        Department(name: "Japonca Mütercim-Tercümanlık", group: "J"),
        Department(name: "Jeofizik Mühendisliği", group: "J"),
        Department(name: "Jeoloji Mühendisliği", group: "J"),
        
        // K
        Department(name: "Kadın Çalışmaları", group: "K"),
        Department(name: "Kağıt Teknolojisi", group: "K"),
        Department(name: "Kalıpçılık Mühendisliği", group: "K"),
        Department(name: "Kamu Yönetimi", group: "K"),
        Department(name: "Kanatlı Hayvan Yetiştiriciliği", group: "K"),
        Department(name: "Kanatlı Ürünleri Mühendisliği", group: "K"),
        Department(name: "Kantitatif Finans", group: "K"),
        Department(name: "Kapalı Mekan Tasarımları", group: "K"),
        Department(name: "Karşılaştırmalı Edebiyat", group: "K"),
        Department(name: "Karşılaştırmalı Edebiyat (İngilizce)", group: "K"),
        Department(name: "Karşılaştırmalı Mütercimlik", group: "K"),
        Department(name: "Kariyer Planlama ve Yönetimi", group: "K"),
        Department(name: "Kentsel Tasarım ve Peyzaj Mimarlığı", group: "K"),
        Department(name: "Kimya", group: "K"),
        Department(name: "Kimya Mühendisliği", group: "K"),
        Department(name: "Kimya Mühendisliği (M.T.O.K.)", group: "K"),
        Department(name: "Kimya Öğretmenliği", group: "K"),
        Department(name: "Kimya-Biyoloji Mühendisliği", group: "K"),
        Department(name: "Kişisel Verilerin Korunması Hukuku", group: "K"),
        Department(name: "Klinik Psikoloji", group: "K"),
        Department(name: "Kontrol ve Otomasyon Mühendisliği", group: "K"),
        
        // L
        Department(name: "Laboratuvar Teknikleri", group: "L"),
        Department(name: "Laleçilik ve Süs Bitkileri", group: "L"),
        Department(name: "Latin Dili ve Edebiyatı", group: "L"),
        Department(name: "Lehintoloji", group: "L"),
        Department(name: "Lojistik (Fakülte)", group: "L"),
        Department(name: "Lojistik (Yüksekokul)", group: "L"),
        Department(name: "Lojistik Yönetimi", group: "L"),
        Department(name: "Lojistik ve Taşımacılık", group: "L"),
        Department(name: "Lokasyon Optimizasyonu", group: "L"),
        
        // M
        Department(name: "Makine Mühendisliği", group: "M"),
        Department(name: "Makine Mühendisliği (M.T.O.K.)", group: "M"),
        Department(name: "Makine ve İmalat Mühendisliği", group: "M"),
        Department(name: "Maliye", group: "M"),
        Department(name: "Malzeme Bilimi ve Mühendisliği", group: "M"),
        Department(name: "Malzeme Bilimi ve Nano Mühendislik", group: "M"),
        Department(name: "Management Information Systems", group: "M"),
        Department(name: "Manav Kültürü Araştırmaları", group: "M"),
        Department(name: "Mardinoloji", group: "M"),
        Department(name: "Marina İşletmeciliği", group: "M"),
        Department(name: "Marina ve Yat İşletmeciliği", group: "M"),
        Department(name: "Marka İletişimi", group: "M"),
        Department(name: "Marmara Deniz Bilimleri", group: "M"),
        Department(name: "Matematik", group: "M"),
        Department(name: "Matematik (Açıköğretim)", group: "M"),
        Department(name: "Matematik Mühendisliği", group: "M"),
        Department(name: "Matematik Öğretmenliği", group: "M"),
        Department(name: "Medya ve İletişim", group: "M"),
        Department(name: "Metalurji ve Malzeme Mühendisliği", group: "M"),
        Department(name: "Meteoroloji Mühendisliği", group: "M"),
        Department(name: "Mechatronics Engineering", group: "M"),
        Department(name: "Midwifery", group: "M"),
        Department(name: "Mimarlık", group: "M"),
        Department(name: "Mimarlık (Türk-Alman)", group: "M"),
        Department(name: "Moda Tasarımı", group: "M"),
        Department(name: "Moleküler Biyoloji ve Genetik", group: "M"),
        Department(name: "Mücevher Tasarımı Mühendisliği", group: "M"),
        Department(name: "Mühendislik Fizik", group: "M"),
        Department(name: "Müzecilik", group: "M"),
        Department(name: "Müzik Öğretmenliği", group: "M"),
        Department(name: "Müzik Teknolojileri", group: "M"),
        
        // N
        Department(name: "Nanobilim ve Nanoteknoloji", group: "N"),
        Department(name: "Nükleer Enerji Mühendisliği", group: "N"),
        Department(name: "Nükleer Tıp Teknoloji", group: "N"),
        Department(name: "Nutrisyon Bilimleri", group: "N"),
        
        // O-Ö
        Department(name: "Odiyoloji (Fakülte)", group: "O-Ö"),
        Department(name: "Odiyoloji (Yüksekokul)", group: "O-Ö"),
        Department(name: "Okul Öncesi Öğretmenliği", group: "O-Ö"),
        Department(name: "Operatörlük ve Sahne Sanatları", group: "O-Ö"),
        Department(name: "Optik ve Akustik Mühendisliği", group: "O-Ö"),
        Department(name: "Orman Endüstri Mühendisliği", group: "O-Ö"),
        Department(name: "Orman Mühendisliği", group: "O-Ö"),
        Department(name: "Organik Tarım İşletmeciliği", group: "O-Ö"),
        Department(name: "Ortez-ProteZ", group: "O-Ö"),
        Department(name: "Otobüs Kaptanlığı", group: "O-Ö"),
        Department(name: "Otel Yöneticiliği", group: "O-Ö"),
        Department(name: "Otomotiv Mühendisliği", group: "O-Ö"),
        Department(name: "Özbek Dili ve Edebiyatı", group: "O-Ö"),
        
        // P
        Department(name: "Pastacılık ve Ekmekçilik", group: "P"),
        Department(name: "Pazarlama", group: "P"),
        Department(name: "Pedagoji", group: "P"),
        Department(name: "Perfüzyon Teknikleri", group: "P"),
        Department(name: "Petrol ve Doğal Gaz Mühendisliği", group: "P"),
        Department(name: "Peyzaj Mimarlığı", group: "P"),
        Department(name: "Pilotaj", group: "P"),
        Department(name: "Pizzaci Sanatı", group: "P"),
        Department(name: "Polimer Mühendisliği", group: "P"),
        Department(name: "Politik Ekonomi", group: "P"),
        Department(name: "Protohistoriya ve Ön Asya Arkeolojisi", group: "P"),
        Department(name: "Psikoloji", group: "P"),
        Department(name: "Psikoloji (Açıköğretim)", group: "P"),
        Department(name: "Psikolojik Danışmanlık ve Rehberlik", group: "P"),
        Department(name: "Publik İlişkiler", group: "P"),
        
        // R
        Department(name: "Radyo, Televizyon ve Sinema", group: "R"),
        Department(name: "Raylı Sistemler Mühendisliği", group: "R"),
        Department(name: "Reklamcılık", group: "R"),
        Department(name: "Rehberlik ve Psikolojik Danışmanlık", group: "R"),
        Department(name: "Rehberlik ve Psikolojik Danışmanlık (Açıköğretim)", group: "R"),
        Department(name: "Restorasyon ve Konservasyon", group: "R"),
        Department(name: "Rezzaklık Bilimleri", group: "R"),
        Department(name: "Rus Dili ve Edebiyatı", group: "R"),
        Department(name: "Rusça Mütercim-Tercümanlık", group: "R"),
        
        // S
        Department(name: "Sağlık Bilgi Sistemleri", group: "S"),
        Department(name: "Sağlık Fizik", group: "S"),
        Department(name: "Sağlık Hizmetleri Yönetimi", group: "S"),
        Department(name: "Sağlık Yönetimi", group: "S"),
        Department(name: "Sahne Sanatları", group: "S"),
        Department(name: "Sanat Tarihi", group: "S"),
        Department(name: "Sanat ve Kültür Yönetimi", group: "S"),
        Department(name: "Seramik Tasarım", group: "S"),
        Department(name: "Seyahat İşletmeciliği", group: "S"),
        Department(name: "Seyahat İşletmeciliği ve Turizm Rehberliği", group: "S"),
        Department(name: "Sigortacılık", group: "S"),
        Department(name: "Sinema ve Dijital Medya", group: "S"),
        Department(name: "Sinema-Televizyon", group: "S"),
        Department(name: "Sınıf Öğretmenliği", group: "S"),
        Department(name: "Sistem Mühendisliği", group: "S"),
        Department(name: "Siyaset Bilimi", group: "S"),
        Department(name: "Siyaset Bilimi ve Kamu Yönetimi", group: "S"),
        Department(name: "Siyaset Bilimi ve Uluslararası İlişkiler", group: "S"),
        Department(name: "Sosyal Bilgiler Öğretmenliği", group: "S"),
        Department(name: "Sosyal Hizmet", group: "S"),
        Department(name: "Sosyoloji", group: "S"),
        Department(name: "Sosyoloji (Açıköğretim)", group: "S"),
        Department(name: "Spor Yöneticiliği", group: "S"),
        Department(name: "Su Ürünleri Mühendisliği", group: "S"),
        Department(name: "Süt Teknolojisi Mühendisliği", group: "S"),
        
        // Ş
        Department(name: "Şehir ve Bölge Planlama", group: "Ş"),
        Department(name: "Şehir ve Bölge Planlama (İngilizce)", group: "Ş"),
        Department(name: "Şehir ve Bölge Planlama (Yüksekokul)", group: "Ş"),
        
        // T
        Department(name: "Tarım Ekonomisi", group: "T"),
        Department(name: "Tarım Makineleri ve Teknolojileri Mühendisliği", group: "T"),
        Department(name: "Tarih", group: "T"),
        Department(name: "Tarih (Açıköğretim)", group: "T"),
        Department(name: "Tarih Öğretmenliği", group: "T"),
        Department(name: "Tasarım ve İletişim", group: "T"),
        Department(name: "Tekstil Mühendisliği", group: "T"),
        Department(name: "Tekstil ve Moda Tasarımı", group: "T"),
        Department(name: "Telekomünikasyon Mühendisliği", group: "T"),
        Department(name: "Tıp", group: "T"),
        Department(name: "Tıp Mühendisliği", group: "T"),
        Department(name: "Tohum Bilimi ve Teknolojisi", group: "T"),
        Department(name: "Toprak Bilimi ve Bitki Besleme", group: "T"),
        Department(name: "Toplumsal Cinsiyet Çalışmaları", group: "T"),
        Department(name: "Turizm İşletmeciliği", group: "T"),
        Department(name: "Turizm Rehberliği", group: "T"),
        Department(name: "Türk Dili ve Edebiyatı", group: "T"),
        Department(name: "Türk Halk Bilimi", group: "T"),
        Department(name: "Türk İslam Arkeolojisi", group: "T"),
        Department(name: "Türkçe Öğretmenliği", group: "T"),
        Department(name: "Türklük Bilimi", group: "T"),
        
        // U-Ü
        Department(name: "Uçak Elektrik-Elektronik Mühendisliği", group: "U-Ü"),
        Department(name: "Uçak Gövde-Motor Bakım Mühendisliği", group: "U-Ü"),
        Department(name: "Uçak Mühendisliği", group: "U-Ü"),
        Department(name: "Uçak ve Uzay Mühendisliği", group: "U-Ü"),
        Department(name: "Ulaştırma ve Lojistik (Fakülte)", group: "U-Ü"),
        Department(name: "Ulaştırma ve Lojistik (Yüksekokul)", group: "U-Ü"),
        Department(name: "Uluslararası Finans", group: "U-Ü"),
        Department(name: "Uluslararası Girişimcilik", group: "U-Ü"),
        Department(name: "Uluslararası İlişkiler", group: "U-Ü"),
        Department(name: "Uluslararası İşletme Yönetimi", group: "U-Ü"),
        Department(name: "Uluslararası Ticaret", group: "U-Ü"),
        Department(name: "Uluslararası Ticaret ve Finans", group: "U-Ü"),
        Department(name: "Uluslararası Ticaret ve Lojistik", group: "U-Ü"),
        Department(name: "Uluslararası Ticaret ve Lojistik Yönetimi", group: "U-Ü"),
        Department(name: "Uluslararası Ticaret ve İşletmecilik", group: "U-Ü"),
        Department(name: "Uzay Bilimleri ve Teknolojileri", group: "U-Ü"),
        Department(name: "Ürün Tasarımı", group: "U-Ü"),
        
        // V
        Department(name: "Veteriner Fakültesi", group: "V"),
        Department(name: "Video Oyun Geliştirme", group: "V"),
        Department(name: "Viola Yapımı ve Onarımı", group: "V"),
        Department(name: "Vokal Sanatları", group: "V"),
        
        // Y
        Department(name: "Yeni Medya", group: "Y"),
        Department(name: "Yeni Medya ve Gazetecilik", group: "Y"),
        Department(name: "Yeni Medya ve İletişim", group: "Y"),
        Department(name: "Yerel Yönetimler", group: "Y"),
        Department(name: "Yiyecek İçecek İşletmeciliği", group: "Y"),
        Department(name: "Yönetim Bilişim Sistemleri", group: "Y"),
        Department(name: "Yunan Dili ve Edebiyatı", group: "Y"),
        
        // Z
        Department(name: "Zaza Dili ve Edebiyatı", group: "Z"),
        Department(name: "Zihinsel Engelliler Öğretmenliği", group: "Z"),
        Department(name: "Ziraat Mühendisliği (Bahçe Bitkileri)", group: "Z"),
        Department(name: "Ziraat Mühendisliği (Bitki Koruma)", group: "Z"),
        Department(name: "Ziraat Mühendisliği (Tarım Ekonomisi)", group: "Z"),
        Department(name: "Ziraat Mühendisliği (Tarla Bitkileri)", group: "Z"),
        Department(name: "Zootekni", group: "Z")
    ].sorted { $0.name < $1.name }
}

struct WelcomeView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var currentStep = 0
    @State private var name = ""
    @State private var examField = ""
    @State private var grade = ""
    @State private var previousRank = ""
    @State private var targetDepartment = ""
    @State private var selectedUniversity: University?
    @State private var isGraduate = false
    @State private var showingMainView = false
    @FocusState private var focusedField: Field?
    @State private var searchText = ""
    @State private var departmentSearchText = ""
    @State private var universitySearchText = ""
    
    private let examFields = ["Sayısal", "Sözel", "Eşit Ağırlık"]
    private let grades = ["9. Sınıf", "10. Sınıf", "11. Sınıf", "12. Sınıf", "Mezun"]
    
    enum Field {
        case name, previousRank, targetDepartment, university
    }
    
    private var filteredDepartments: [Department] {
        if departmentSearchText.isEmpty {
            return Department.allDepartments
        }
        return Department.allDepartments.filter { department in
            department.name.localizedCaseInsensitiveContains(departmentSearchText)
        }
    }
    
    private var filteredUniversities: [University] {
        if universitySearchText.isEmpty {
            return University.allUniversities
        }
        return University.allUniversities.filter { university in
            university.name.localizedCaseInsensitiveContains(universitySearchText)
        }
    }
    
    // Hoş Geldin Ekranı
    private var welcomeView: some View {
        VStack(spacing: 32) {
            Spacer()
            
            Image(systemName: "graduationcap.fill")
                .font(.system(size: 80))
                .foregroundColor(.blue)
                .symbolEffect(.bounce, options: .repeating)
            
            VStack(spacing: 16) {
                Text("MentAI'ya Hoş Geldin!")
                    .font(.system(size: 28, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Text("Seninle birlikte başarıya giden yolda ilerleyeceğiz. Hadi başlayalım!")
                    .font(.system(size: 17))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 32)
            }
            
            Spacer()
        }
        .padding(.top, 60)
    }
    
    // İsim Ekranı
    private var nameView: some View {
        VStack(spacing: 32) {
            Spacer()
            
            VStack(spacing: 16) {
                Text("Sana nasıl hitap etmemi istersin?")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Text("Bu isimle sana hitap edeceğim")
                    .font(.system(size: 17))
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 32)
            
            TextField("Adını yaz", text: $name)
                .textFieldStyle(.roundedBorder)
                .font(.system(size: 17))
                .frame(height: 44)
                .padding(.horizontal, 32)
                .focused($focusedField, equals: .name)
                .submitLabel(.done)
                .onSubmit {
                    focusedField = nil
                    if !name.isEmpty {
                        withAnimation {
                            currentStep += 1
                        }
                    }
                }
            
            Spacer()
        }
        .padding(.top, 60)
    }
    
    // Sınav Alanı Ekranı
    private var examFieldView: some View {
        VStack(spacing: 32) {
            Spacer()
            
            VStack(spacing: 16) {
                Text("Hangi Alan için Hazırlanıyorsun?")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Text("Seçtiğin alana göre sana özel içerikler sunacağım")
                    .font(.system(size: 17))
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 32)
            
            VStack(spacing: 12) {
                ForEach(examFields, id: \.self) { field in
                    Button(action: { 
                        withAnimation {
                            examField = field
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                currentStep += 1
                            }
                        }
                    }) {
                        HStack {
                            Text(field)
                                .font(.system(size: 17, weight: .medium))
                            
                            Spacer()
                            
                            if examField == field {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.blue)
                                    .imageScale(.large)
                            }
                        }
                        .padding()
                        .frame(height: 56)
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.horizontal, 32)
            
            Spacer()
        }
        .padding(.top, 60)
    }
    
    // Sınıf Ekranı
    private var gradeView: some View {
        VStack(spacing: 32) {
            Spacer()
            
            VStack(spacing: 16) {
                Text("Hangi Sınıftasın?")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Text("Sınıfına göre sana özel bir program hazırlayacağım")
                    .font(.system(size: 17))
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 32)
            
            VStack(spacing: 12) {
                ForEach(grades, id: \.self) { grade in
                    Button(action: {
                        withAnimation {
                            self.grade = grade
                            isGraduate = grade == "Mezun"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                currentStep += 1
                            }
                        }
                    }) {
                        HStack {
                            Text(grade)
                                .font(.system(size: 17, weight: .medium))
                            
                            Spacer()
                            
                            if self.grade == grade {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.blue)
                                    .imageScale(.large)
                            }
                        }
                        .padding()
                        .frame(height: 56)
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.horizontal, 32)
            
            Spacer()
        }
        .padding(.top, 60)
    }
    
    // Önceki Sıralama Ekranı
    private var previousRankView: some View {
        VStack(spacing: 32) {
            Spacer()
            
            VStack(spacing: 16) {
                Text("Önceki Sınavdaki Sıralaman")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Text("Bu bilgiyi kullanarak sana daha iyi yardımcı olacağım")
                    .font(.system(size: 17))
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 32)
            
            VStack(spacing: 32) {
                // Sıralama Göstergesi
                VStack(spacing: 8) {
                    Text("\(formatRank(Int(Double(previousRank) ?? 0)))")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.blue)
                        .animation(.easeInOut, value: previousRank)
                    
                    Text("Sıralama")
                        .font(.system(size: 17))
                        .foregroundColor(.secondary)
                }
                
                // Slider ve Kontroller
                VStack(spacing: 24) {
                    // Hassas Kontrol Butonları
                    HStack(spacing: 16) {
                        Button(action: { adjustRank(-1000) }) {
                            Image(systemName: "minus.circle.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.blue)
                        }
                        
                        Button(action: { adjustRank(-100) }) {
                            Image(systemName: "minus.circle")
                                .font(.system(size: 24))
                                .foregroundColor(.blue)
                        }
                        
                        Spacer()
                        
                        Button(action: { adjustRank(100) }) {
                            Image(systemName: "plus.circle")
                                .font(.system(size: 24))
                                .foregroundColor(.blue)
                        }
                        
                        Button(action: { adjustRank(1000) }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.horizontal, 32)
                    
                    // Ana Slider
                    VStack(spacing: 8) {
                        Slider(value: Binding(
                            get: { Double(previousRank) ?? 0 },
                            set: { previousRank = String(Int($0)) }
                        ), in: 100...1_000_000, step: 100)
                        .tint(.blue)
                        
                        HStack {
                            Text("100")
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                            
                            Spacer()
                            
                            Text("1.000.000+")
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.horizontal, 32)
                }
                
                // Açıklama
                VStack(spacing: 8) {
                    Text("Sıralamanı ayarlamak için:")
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                    
                    Text("• Slider'ı sürükleyebilirsin")
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                    
                    Text("• +/- butonlarını kullanabilirsin")
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                }
            }
            
            Spacer()
        }
        .padding(.top, 60)
    }
    
    private func formatRank(_ rank: Int) -> String {
        if rank >= 1_000_000 {
            return "1.000.000+"
        }
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = "."
        return formatter.string(from: NSNumber(value: rank)) ?? "0"
    }
    
    private func adjustRank(_ adjustment: Int) {
        let currentRank = Int(Double(previousRank) ?? 0)
        let newRank = max(100, min(1_000_000, currentRank + adjustment))
        previousRank = String(newRank)
    }
    
    // Hedef Ekranı
    private var targetView: some View {
        VStack(spacing: 32) {
            Spacer()
            
            VStack(spacing: 16) {
                Text("Hedeflediğin Bölüm ve Üniversite")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                
                Text("Bu hedefe ulaşman için sana özel bir yol haritası çıkaracağım")
                    .font(.system(size: 17))
                    .foregroundColor(.secondary)
                
                Text("(Bu adımı atlayabilirsin)")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                    .padding(.top, 4)
            }
            .padding(.horizontal, 32)
            
            VStack(spacing: 24) {
                // Bölüm Seçimi
                VStack(alignment: .leading, spacing: 8) {
                    Text("Bölüm Seç")
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.secondary)
                    
                    VStack(spacing: 0) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.secondary)
                            
                            TextField("Bölüm ara...", text: $departmentSearchText)
                                .font(.system(size: 17))
                                .focused($focusedField, equals: .targetDepartment)
                                .submitLabel(.search)
                                .onChange(of: departmentSearchText) { _ in
                                    if !departmentSearchText.isEmpty {
                                        focusedField = .targetDepartment
                                    }
                                }
                            
                            if !departmentSearchText.isEmpty {
                                Button(action: {
                                    departmentSearchText = ""
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        
                        if !filteredDepartments.isEmpty {
                            ScrollView {
                                VStack(spacing: 0) {
                                    ForEach(filteredDepartments.prefix(10)) { department in
                                        Button(action: {
                                            targetDepartment = department.name
                                            departmentSearchText = department.name
                                            focusedField = nil
                                        }) {
                                            HStack {
                                                VStack(alignment: .leading, spacing: 4) {
                                                    Text(department.name)
                                                        .font(.system(size: 17))
                                                        .foregroundColor(.primary)
                                                    Text(department.group)
                                                        .font(.system(size: 13))
                                                        .foregroundColor(.secondary)
                                                }
                                                Spacer()
                                                if targetDepartment == department.name {
                                                    Image(systemName: "checkmark.circle.fill")
                                                        .foregroundColor(.blue)
                                                        .imageScale(.large)
                                                }
                                            }
                                            .padding(12)
                                            .background(Color(.systemBackground))
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        
                                        if department.id != filteredDepartments.prefix(10).last?.id {
                                            Divider()
                                                .padding(.leading, 12)
                                        }
                                    }
                                }
                            }
                            .frame(maxHeight: 300)
                            .background(Color(.systemBackground))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        }
                    }
                }
                
                // Üniversite Seçimi
                VStack(alignment: .leading, spacing: 8) {
                    Text("Üniversite Seç")
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.secondary)
                    
                    VStack(spacing: 0) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.secondary)
                            
                            TextField("Üniversite ara...", text: $universitySearchText)
                                .font(.system(size: 17))
                                .focused($focusedField, equals: .university)
                                .submitLabel(.search)
                                .onChange(of: universitySearchText) { _ in
                                    if !universitySearchText.isEmpty {
                                        focusedField = .university
                                    }
                                }
                            
                            if !universitySearchText.isEmpty {
                                Button(action: {
                                    universitySearchText = ""
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        
                        if !filteredUniversities.isEmpty {
                            ScrollView {
                                VStack(spacing: 0) {
                                    ForEach(filteredUniversities.prefix(10)) { university in
                                        Button(action: {
                                            selectedUniversity = university
                                            universitySearchText = university.name
                                            focusedField = nil
                                        }) {
                                            HStack {
                                                VStack(alignment: .leading, spacing: 4) {
                                                    Text(university.name)
                                                        .font(.system(size: 17))
                                                        .foregroundColor(.primary)
                                                    Text(university.type)
                                                        .font(.system(size: 13))
                                                        .foregroundColor(.secondary)
                                                }
                                                Spacer()
                                                if selectedUniversity?.id == university.id {
                                                    Image(systemName: "checkmark.circle.fill")
                                                        .foregroundColor(.blue)
                                                        .imageScale(.large)
                                                }
                                            }
                                            .padding(12)
                                            .background(Color(.systemBackground))
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        
                                        if university.id != filteredUniversities.prefix(10).last?.id {
                                            Divider()
                                                .padding(.leading, 12)
                                        }
                                    }
                                }
                            }
                            .frame(maxHeight: 300)
                            .background(Color(.systemBackground))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        }
                    }
                }
            }
            .padding(.horizontal, 32)
            
            Button(action: {
                targetDepartment = ""
                selectedUniversity = nil
                saveUserData()
            }) {
                Text("Hedef belirlemeden devam et")
                    .font(.system(size: 17))
                    .foregroundColor(.blue)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 24)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding(.top, 16)
            
            Spacer()
        }
        .padding(.top, 60)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    // İlerleme Göstergesi
                    ProgressView(value: Double(currentStep), total: isGraduate ? 5 : 4)
                        .tint(.blue)
                        .padding(.horizontal)
                        .padding(.top, 8)
                    
                    // İçerik
                    ZStack {
                        welcomeView
                            .opacity(currentStep == 0 ? 1 : 0)
                            .animation(.easeInOut, value: currentStep)
                        
                        nameView
                            .opacity(currentStep == 1 ? 1 : 0)
                            .animation(.easeInOut, value: currentStep)
                        
                        examFieldView
                            .opacity(currentStep == 2 ? 1 : 0)
                            .animation(.easeInOut, value: currentStep)
                        
                        gradeView
                            .opacity(currentStep == 3 ? 1 : 0)
                            .animation(.easeInOut, value: currentStep)
                        
                        if isGraduate {
                            previousRankView
                                .opacity(currentStep == 4 ? 1 : 0)
                                .animation(.easeInOut, value: currentStep)
                        }
                        
                        targetView
                            .opacity(currentStep == (isGraduate ? 5 : 4) ? 1 : 0)
                            .animation(.easeInOut, value: currentStep)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    // İleri/Geri Butonları
                    HStack {
                        if currentStep > 0 {
                            Button(action: { 
                                withAnimation {
                                    currentStep -= 1
                                    focusedField = nil
                                }
                            }) {
                                HStack {
                                    Image(systemName: "chevron.left")
                                    Text("Geri")
                                }
                                .foregroundColor(.blue)
                                .frame(height: 44)
                            }
                        }
                        
                        Spacer()
                        
                        if currentStep < (isGraduate ? 5 : 4) {
                            Button(action: { 
                                withAnimation {
                                    if isCurrentStepValid {
                                        currentStep += 1
                                        focusedField = nil
                                    }
                                }
                            }) {
                                HStack {
                                    Text("İleri")
                                    Image(systemName: "chevron.right")
                                }
                                .foregroundColor(isCurrentStepValid ? .blue : .gray)
                                .frame(height: 44)
                            }
                            .disabled(!isCurrentStepValid)
                        } else {
                            Button(action: saveUserData) {
                                Text("Başla")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(height: 44)
                                    .frame(minWidth: 120)
                                    .background(isFormValid ? Color.blue : Color.gray)
                                    .cornerRadius(12)
                            }
                            .disabled(!isFormValid)
                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 16)
                    .background(Color(.systemBackground))
                }
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $showingMainView) {
                ContentView()
            }
        }
    }
    
    private var isCurrentStepValid: Bool {
        switch currentStep {
        case 0:
            return true
        case 1:
            return !name.isEmpty
        case 2:
            return !examField.isEmpty
        case 3:
            return !grade.isEmpty
        case 4:
            return isGraduate ? !previousRank.isEmpty : true
        case 5:
            return true
        default:
            return false
        }
    }
    
    private var isFormValid: Bool {
        let requiredFieldsValid = !name.isEmpty && !examField.isEmpty && !grade.isEmpty
        let targetFieldsValid = (targetDepartment.isEmpty && selectedUniversity == nil) || (!targetDepartment.isEmpty && selectedUniversity != nil)
        return requiredFieldsValid && targetFieldsValid
    }
    
    private func saveUserData() {
        let user = User(
            name: name,
            grade: grade,
            examType: examField,
            previousScore: isGraduate ? Double(previousRank) ?? 0 : nil,
            targetDepartment: targetDepartment,
            targetUniversity: selectedUniversity?.name ?? ""
        )
        
        modelContext.insert(user)
        try? modelContext.save()
        showingMainView = true
    }
}
