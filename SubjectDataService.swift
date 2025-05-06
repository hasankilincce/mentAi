import Foundation
import SwiftData

class SubjectDataService {
    static func loadInitialData(modelContext: ModelContext) {
        // Fizik TYT
        let fizikTYT = Subject(name: "Fizik", examType: "TYT")
        let fizikTYTTopics = [
            "Fizik Bilimine Giriş",
            "Madde ve Özellikleri",
            "Hareket ve Kuvvet",
            "Enerji",
            "Isı ve Sıcaklık",
            "Elektrostatik",
            "Elektrik ve Manyetizma",
            "Basınç ve Kaldırma Kuvveti",
            "Dalgalar",
            "Aydınlanma"
        ].map { Topic(name: $0) }
        fizikTYT.topics = fizikTYTTopics
        
        // Fizik AYT
        let fizikAYT = Subject(name: "Fizik", examType: "AYT")
        let fizikAYTTopics = [
            "Kuvvet ve Hareket",
            "Elektrik ve Manyetizma",
            "Düzgün Çembersel Hareket",
            "Basit Harmonik Hareket",
            "Dalga Mekaniği",
            "Atom Fiziğine Giriş & Radyoaktivite",
            "Modern Fizik"
        ].map { Topic(name: $0) }
        fizikAYT.topics = fizikAYTTopics
        
        // Kimya TYT
        let kimyaTYT = Subject(name: "Kimya", examType: "TYT")
        let kimyaTYTTopics = [
            "Kimya Bilimi",
            "Atom ve Yapısı",
            "Periyodik Sistem",
            "Kimyasal Türler Arası Etkileşimler",
            "Asit-Baz-Tuz",
            "Bileşikler",
            "Kimyasal Tepkimeler",
            "Kimyanın Temel Yasaları",
            "Maddenin Halleri",
            "Karışımlar",
            "Endüstride ve Canlılarda Enerji",
            "Kimya Her Yerde"
        ].map { Topic(name: $0) }
        kimyaTYT.topics = kimyaTYTTopics
        
        // Kimya AYT
        let kimyaAYT = Subject(name: "Kimya", examType: "AYT")
        let kimyaAYTTopics = [
            "Modern Atom Teorisi",
            "Kimyasal Hesaplamalar",
            "Gazlar",
            "Sıvı Çözeltiler",
            "Kimya ve Enerji",
            "Tepkimelerde Hız",
            "Kimyasal Denge",
            "Sıvı Çözeltilerde Denge",
            "Kimya ve Elektrik",
            "Karbon Kimyasına Giriş",
            "Organik Bileşikler",
            "Hayatımızdaki Kimya"
        ].map { Topic(name: $0) }
        kimyaAYT.topics = kimyaAYTTopics
        
        // Matematik TYT
        let matematikTYT = Subject(name: "Matematik", examType: "TYT")
        let matematikTYTTopics = [
            "Sayılar",
            "Sayı Basamakları",
            "Bölme-Bölünebilme",
            "OBEB-OKEK",
            "Rasyonel Sayılar",
            "Basit Eşitsizlikler",
            "Mutlak Değer",
            "Üslü Sayılar",
            "Köklü Sayılar",
            "Çarpanlara Ayırma",
            "Oran-Orantı",
            "Denklem Çözme",
            "Problemler",
            "Kümeler",
            "Fonksiyonlar",
            "Permütasyon",
            "Kombinasyon",
            "Binom",
            "Olasılık",
            "İstatistik",
            "2. Dereceden Denklemler",
            "Karmaşık Sayılar",
            "Parabol",
            "Polinomlar"
        ].map { Topic(name: $0) }
        matematikTYT.topics = matematikTYTTopics
        
        // Matematik AYT
        let matematikAYT = Subject(name: "Matematik", examType: "AYT")
        let matematikAYTTopics = [
            "Mantık",
            "Modüler Aritmetik",
            "Geniş Eşitsizlikler",
            "Logaritma",
            "Diziler",
            "Seriler",
            "Limit-Süreklilik",
            "Türev",
            "İntegral"
        ].map { Topic(name: $0) }
        matematikAYT.topics = matematikAYTTopics
        
        // Geometri
        let geometri = Subject(name: "Geometri", examType: "TYT-AYT")
        let geometriTopics = [
            "Doğruda & Üçgende Açılar",
            "Dik & Özel Üçgenler",
            "Dik Üçgende Trigonometrik Bağıntılar",
            "İkizkenar-Eşkenar Üçgen",
            "Üçgende Alanlar",
            "Üçgende Açıortay Bağıntıları",
            "Üçgende Kenarortay Bağıntıları",
            "Üçgende Eşlik-Benzerlik",
            "Üçgende Açı-Kenar Bağıntıları",
            "Çokgenler",
            "Dörtgenler",
            "Yamuk",
            "Paralelkenar",
            "Eşkenar Dörtgen-Deltoid",
            "Dikdörtgen",
            "Çemberde Açılar",
            "Çemberde Uzunluk",
            "Daire",
            "Prizmalar",
            "Piramitler",
            "Küre",
            "Koordinat Düzlemi & Noktanın Analitiği",
            "Doğrunun Analitiği",
            "Tekrar Eden-Dönen-Yansıyan Şekiller",
            "Uzay Geometri",
            "Dönüşümler Geometrisi",
            "Trigonometri",
            "Çemberin Analitiği",
            "Genel Konikler (Parabol-Elips-Hiperbol)"
        ].map { Topic(name: $0) }
        geometri.topics = geometriTopics
        
        // Biyoloji
        let biyoloji = Subject(name: "Biyoloji", examType: "TYT-AYT")
        let biyolojiTopics = [
            "Biyoloji Bilimi",
            "İnorganik & Organik Bileşenler",
            "Hücre & Madde Geçişleri",
            "DNA-RNA",
            "Protein Sentezi",
            "Enzimler",
            "Canlıların Sınıflandırılması",
            "Ekoloji",
            "Hücre Bölünmeleri",
            "Eşeysiz-Eşeyli Üreme",
            "İnsanda Üreme-Gelişme",
            "Mendel Genetiği",
            "Kan Grupları",
            "Cinsiyete Bağlı Kalıtım",
            "Biyoteknoloji & Evrim",
            "Solunum",
            "Fotosentez",
            "Kemosentez",
            "Bitki Biyolojisi",
            "Sistemler",
            "Duyu Organları"
        ].map { Topic(name: $0) }
        biyoloji.topics = biyolojiTopics
        
        // Türkçe TYT
        let turkceTYT = Subject(name: "Türkçe", examType: "TYT")
        let turkceTYTTopics = [
            "Sözcükte Anlam, Cümlede Anlam, Paragraf (yapı-anlam-teknikler)",
            "Ses Bilgisi, Yazım Kuralları, Noktalama",
            "Sözcükte Yapı-Türler, Fiiller, Fiilimsi, Ek Fiil, Fiilde Çatı",
            "Cümlenin Ögeleri-Türleri",
            "Anlatım Bozuklukları",
            "Sözlü Anlatım Türleri, Edebi Sanatlar"
        ].map { Topic(name: $0) }
        turkceTYT.topics = turkceTYTTopics
        
        // Edebiyat AYT
        let edebiyatAYT = Subject(name: "Türk Dili ve Edebiyatı", examType: "AYT")
        let edebiyatAYTTopics = [
            "Nazım Biçimleri & Türleri",
            "İslamiyet Öncesi → Cumhuriyet Dönemi Türk Edebiyatı",
            "Dünya Edebiyatı & Edebi Akımlar",
            "Eser Özetleri, Türk & Dünya Edebiyatında 'İlkler'"
        ].map { Topic(name: $0) }
        edebiyatAYT.topics = edebiyatAYTTopics
        
        // Coğrafya TYT
        let cografyaTYT = Subject(name: "Coğrafya", examType: "TYT")
        let cografyaTYTTopics = [
            "Harita Bilgisi",
            "Dünya'nın Şekli-Hareketleri",
            "İklim Bilgisi",
            "Türkiye'nin İklimi-Yer Şekilleri",
            "İç-Dış Kuvvetler",
            "Toprak Tipleri",
            "Nüfus & Yerleşme",
            "Bölgeler",
            "Ulaşım",
            "Doğa-İnsan",
            "Doğal Afetler"
        ].map { Topic(name: $0) }
        cografyaTYT.topics = cografyaTYTTopics
        
        // Coğrafya AYT
        let cografyaAYT = Subject(name: "Coğrafya", examType: "AYT")
        let cografyaAYTTopics = [
            "Doğal Sistemler",
            "Beşerî Sistemler",
            "Mekânsal Sentez: Türkiye",
            "Küresel Ortam & Bölgeler",
            "Çevre-Toplum İlişkisi",
            "Ekonomik Faaliyetler"
        ].map { Topic(name: $0) }
        cografyaAYT.topics = cografyaAYTTopics
        
        // Tarih TYT
        let tarihTYT = Subject(name: "Tarih", examType: "TYT")
        let tarihTYTTopics = [
            "Tarih Bilimine Giriş",
            "İlk Uygarlıklar",
            "İlk Türk Devletleri",
            "İslam Tarihi",
            "Türk-İslam Devletleri",
            "Osmanlı Tarihi",
            "I. Dünya Savaşı",
            "Milli Mücadele",
            "Osmanlı Kültür-Medeniyet",
            "Atatürk İlke-İnkılapları",
            "Erken Cumhuriyet Dönemi"
        ].map { Topic(name: $0) }
        tarihTYT.topics = tarihTYTTopics
        
        // Tarih AYT
        let tarihAYT = Subject(name: "Tarih", examType: "AYT")
        let tarihAYTTopics = [
            "20. yy Dünya Tarihi",
            "Soğuk Savaş",
            "Küreselleşme",
            "Türk Kültür-Medeniyet",
            "Devlet Yapısı",
            "Toplum Yapısı",
            "Hukuk Sistemi",
            "Ekonomi",
            "Sanat ve Kültür"
        ].map { Topic(name: $0) }
        tarihAYT.topics = tarihAYTTopics
        
        // Felsefe TYT
        let felsefeTYT = Subject(name: "Felsefe", examType: "TYT")
        let felsefeTYTTopics = [
            "Felsefenin Konusu",
            "Bilgi Felsefesi",
            "Varlık Felsefesi",
            "Ahlak Felsefesi",
            "Sanat Felsefesi",
            "Din Felsefesi",
            "Siyaset Felsefesi"
        ].map { Topic(name: $0) }
        felsefeTYT.topics = felsefeTYTTopics
        
        // Felsefe AYT
        let felsefeAYT = Subject(name: "Felsefe", examType: "AYT")
        let felsefeAYTTopics = [
            "Bilgi Felsefesi",
            "Varlık Felsefesi",
            "Ahlak Felsefesi",
            "Sanat Felsefesi",
            "Din Felsefesi",
            "Siyaset Felsefesi",
            "Bilim Felsefesi",
            "Mantık",
            "Psikoloji",
            "Sosyoloji"
        ].map { Topic(name: $0) }
        felsefeAYT.topics = felsefeAYTTopics
        
        // Din Kültürü TYT
        let dinTYT = Subject(name: "Din Kültürü ve Ahlak Bilgisi", examType: "TYT")
        let dinTYTTopics = [
            "Kur'an ve Yorumu",
            "Zekât",
            "Hz. Muhammed'in Hayatı",
            "İslam Düşüncesinde Yorumlar",
            "İslam'ın Kötü Alışkanlıklara Bakışı"
        ].map { Topic(name: $0) }
        dinTYT.topics = dinTYTTopics
        
        // Din Kültürü AYT
        let dinAYT = Subject(name: "Din Kültürü ve Ahlak Bilgisi", examType: "AYT")
        let dinAYTTopics = [
            "Kur'an'ın Anlaşılması",
            "İnsan ve Din",
            "İbadetler",
            "İslam Düşüncesi & Mezhepler",
            "Hz. Muhammed'in Örnekliği",
            "İslam'da Bilim-Estetik-Barış",
            "Yaşayan Dinler",
            "Din-Laiklik",
            "Din-Kültür-Medeniyet"
        ].map { Topic(name: $0) }
        dinAYT.topics = dinAYTTopics
        
        // Tüm dersleri modelContext'e ekle
        let subjects = [
            fizikTYT, fizikAYT,
            kimyaTYT, kimyaAYT,
            matematikTYT, matematikAYT,
            geometri,
            biyoloji,
            turkceTYT, edebiyatAYT,
            cografyaTYT, cografyaAYT,
            tarihTYT, tarihAYT,
            felsefeTYT, felsefeAYT,
            dinTYT, dinAYT
        ]
        
        for subject in subjects {
            modelContext.insert(subject)
        }
        
        try? modelContext.save()
    }
} 