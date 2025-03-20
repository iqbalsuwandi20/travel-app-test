class TravelModel {
  final int id;
  final String title;
  final String imagePath;
  final String price;
  final double rating;
  final String description;
  final bool isOpenTrip;
  final String termsAndConditions;
  final String includeExclude;
  final int pax;

  TravelModel({
    required this.id,
    required this.title,
    required this.imagePath,
    required this.price,
    required this.rating,
    required this.description,
    required this.isOpenTrip,
    required this.termsAndConditions,
    required this.includeExclude,
    required this.pax,
  });
}

final List<TravelModel> travelList = [
  TravelModel(
    id: 1,
    title: 'Bali - Pantai Kuta',
    imagePath: 'assets/images/bali.jpg',
    price: 'IDR 5,000,000',
    rating: 4.8,
    description:
        'Pantai Kuta adalah surga tropis di Bali yang menawarkan pasir putih lembut, ombak sempurna untuk berselancar, dan matahari terbenam memukau. Cocok untuk bersantai, berenang, atau sekadar menikmati suasana pantai yang hangat dan ramah. Dengan fasilitas lengkap, keramahan warga lokal, dan atmosfer yang hidup, Pantai Kuta wajib dikunjungi untuk pengalaman liburan tak terlupakan! 🌴🌊✨',
    isOpenTrip: true,
    termsAndConditions: 'Tidak termasuk tiket pesawat, wajib membawa KTP.',
    includeExclude: 'Termasuk hotel dan transportasi, tidak termasuk makan.',
    pax: 2,
  ),
  TravelModel(
    id: 2,
    title: 'Yogyakarta - Candi Borobudur',
    imagePath: 'assets/images/yogyakarta.jpg',
    price: 'IDR 3,500,000',
    rating: 4.9,
    description:
        'Candi Borobudur, candi Buddha terbesar di dunia, menawarkan keindahan arsitektur megah dan relief kuno yang penuh makna. Nikmati momen magis saat matahari terbit, dengan pemandangan perbukitan hijau dan suasana yang menenangkan. Jelajahi warisan budaya ini dan rasakan pesonanya yang tak terlupakan! 🌅✨🕍',
    isOpenTrip: false,
    termsAndConditions:
        'Harus berpakaian sopan, tidak boleh membawa makanan ke dalam area candi.',
    includeExclude:
        'Termasuk tiket masuk, transportasi lokal, dan pemandu wisata.',
    pax: 1,
  ),
  TravelModel(
    id: 3,
    title: 'Jakarta - Kota Tua',
    imagePath: 'assets/images/jakarta.jpg',
    price: 'IDR 2,000,000',
    rating: 4.6,
    description:
        'Kota Tua Jakarta adalah surga bagi pecinta sejarah dan fotografi. Dengan arsitektur kolonial yang ikonik, museum menarik, dan suasana vintage, tempat ini cocok untuk menjelajahi masa lalu sambil menikmati kuliner dan spot foto instagramable. Rasakan pesonanya yang tak terlupakan! �📸🏛️',
    isOpenTrip: true,
    termsAndConditions:
        'Dilarang merusak bangunan atau mencoret-coret dinding.',
    includeExclude:
        'Termasuk tiket masuk museum, transportasi, dan makan siang.',
    pax: 4,
  ),
  TravelModel(
    id: 4,
    title: 'Bandung - Kawah Putih',
    imagePath: 'assets/images/bandung.jpg',
    price: 'IDR 2,500,000',
    rating: 4.7,
    description:
        'Kawah Putih menawarkan pemandangan danau kawah biru pucat yang dikelilingi tebing dan hutan hijau. Suasana mistis dan udara sejuknya membuatnya sempurna untuk fotografi atau sekadar menikmati ketenangan alam. Rasakan pesonanya yang memukau! 🌋💙📸',
    isOpenTrip: false,
    termsAndConditions:
        'Harus menggunakan masker karena bau belerang cukup kuat.',
    includeExclude: 'Termasuk tiket masuk, transportasi, dan snack.',
    pax: 2,
  ),
  TravelModel(
    id: 5,
    title: 'Lombok - Pantai Pink',
    imagePath: 'assets/images/lombok.jpg',
    price: 'IDR 4,500,000',
    rating: 4.9,
    description:
        'Pantai Pink Lombok menawarkan pasir berwarna pink alami, air laut biru jernih, dan pemandangan yang masih alami. Destinasi langka ini cocok untuk bersantai, berfoto, atau menikmati keindahan alam yang menakjubkan. Rasakan pesonanya yang tak terlupakan! 🌸🏖️💖',
    isOpenTrip: true,
    termsAndConditions:
        'Tidak termasuk biaya snorkeling, dilarang membawa plastik sekali pakai.',
    includeExclude: 'Termasuk transportasi boat, guide, dan makan siang.',
    pax: 3,
  ),
  TravelModel(
    id: 6,
    title: 'Malang - Gunung Bromo',
    imagePath: 'assets/images/malang.jpg',
    price: 'IDR 3,800,000',
    rating: 4.8,
    description:
        'Gunung Bromo menawarkan pemandangan kawah megah, Lautan Pasir, dan matahari terbit spektakuler. Suasana mistis dan alamnya yang dramatis cocok untuk petualangan atau fotografi. Rasakan sensasi magisnya dan buat kenangan tak terlupakan! 🌋🌄✨',
    isOpenTrip: true,
    termsAndConditions:
        'Peserta harus dalam kondisi sehat, tidak disarankan untuk anak di bawah 5 tahun.',
    includeExclude: 'Termasuk jeep tour, tiket masuk, dan sarapan.',
    pax: 5,
  ),
  TravelModel(
    id: 7,
    title: 'Surabaya - Jembatan Suramadu',
    imagePath: 'assets/images/surabaya.jpg',
    price: 'IDR 2,200,000',
    rating: 4.6,
    description:
        'Jembatan Suramadu, jembatan terpanjang di Indonesia, menghubungkan Surabaya dan Madura. Dengan pemandangan laut luas dan lampu indah di malam hari, tempat ini cocok untuk berkendara seru atau berfoto. Rasakan pesona modernnya! 🌉🌊✨',
    isOpenTrip: false,
    termsAndConditions:
        'Peserta harus mengikuti jadwal keberangkatan yang telah ditentukan.',
    includeExclude: 'Termasuk transportasi, pemandu wisata, dan makan malam.',
    pax: 2,
  ),
  TravelModel(
    id: 8,
    title: 'Medan - Danau Toba',
    imagePath: 'assets/images/medan.jpg',
    price: 'IDR 4,000,000',
    rating: 4.8,
    description:
        'Danau Toba, danau vulkanik terbesar di dunia, menawarkan pemandangan air biru jernih, pegunungan hijau, dan budaya Batak yang kaya. Cocok untuk bersantai, menjelajah, atau menikmati kuliner khas. Rasakan pesonanya yang menakjubkan! 🌊🏞️✨',
    isOpenTrip: false,
    termsAndConditions:
        'Harus menjaga kebersihan lingkungan selama perjalanan.',
    includeExclude:
        'Termasuk tiket kapal ke Pulau Samosir, transportasi, dan penginapan.',
    pax: 2,
  ),
  TravelModel(
    id: 9,
    title: 'Bukittinggi - Jam Gadang',
    imagePath: 'assets/images/bukittinggi.jpg',
    price: 'IDR 4,700,000',
    rating: 4.9,
    description:
        'Jam Gadang, ikon megah Bukittinggi, menyajikan keindahan arsitektur khas Minangkabau dengan nuansa sejarah yang memikat. Dikelilingi alun-alun yang asri, kuliner khas, dan suasana kota yang hidup, tempat ini sempurna untuk bersantai dan berfoto. Rasakan pesonanya yang menawan! ⏳🏛️✨',
    isOpenTrip: true,
    termsAndConditions:
        'Tidak termasuk biaya pribadi seperti oleh-oleh dan makan di luar paket.',
    includeExclude:
        'Termasuk tiket masuk area wisata, transportasi, dan makan siang.',
    pax: 3,
  ),
  TravelModel(
    id: 10,
    title: 'Semarang - Lawang Sewu',
    imagePath: 'assets/images/semarang.jpg',
    price: 'IDR 2,800,000',
    rating: 4.6,
    description:
        'Lawang Sewu, keajaiban arsitektur bersejarah di Semarang, memikat dengan desain megah dan koridor berjumlah seribu. Bangunan ikonik ini menyimpan cerita masa lalu yang misterius dan penuh pesona. Jelajahi keindahannya dan rasakan aura magisnya! 🏛️✨',
    isOpenTrip: false,
    termsAndConditions:
        'Peserta dilarang membawa hewan peliharaan ke dalam bangunan.',
    includeExclude: 'Termasuk tiket masuk, guide lokal, dan transportasi.',
    pax: 2,
  ),
  TravelModel(
    id: 11,
    title: 'Palembang - Jembatan Ampera',
    imagePath: 'assets/images/palembang.jpg',
    price: 'IDR 2,900,000',
    rating: 4.6,
    description:
        'Jembatan Ampera, ikon megah Palembang, membentang gagah di atas Sungai Musi dengan cahaya gemerlap di malam hari. Saksikan keindahannya, nikmati kuliner khas di sekitarnya, dan rasakan pesona kota tertua di Indonesia! 🌉✨',
    isOpenTrip: true,
    termsAndConditions:
        'Tidak termasuk tiket pesawat, wajib membawa identitas diri.',
    includeExclude: 'Termasuk transportasi lokal, makan malam, dan city tour.',
    pax: 2,
  ),
  TravelModel(
    id: 12,
    title: 'Aceh - Masjid Raya Baiturrahman',
    imagePath: 'assets/images/aceh.jpg',
    price: 'IDR 3,300,000',
    rating: 4.7,
    description:
        'Masjid Raya Baiturrahman, simbol megah Aceh, memukau dengan arsitektur khas dan kubah indahnya. Dikelilingi kolam dan taman asri, masjid ini menjadi saksi sejarah dan keteguhan masyarakat Aceh. Rasakan ketenangan dan keagungannya! 🕌✨',
    isOpenTrip: false,
    termsAndConditions: 'Harus mengenakan pakaian sopan dan menutup aurat.',
    includeExclude: 'Termasuk tiket masuk, transportasi, dan guide lokal.',
    pax: 1,
  ),
  TravelModel(
    id: 13,
    title: 'Manado - Bunaken',
    imagePath: 'assets/images/manado.jpg',
    price: 'IDR 5,500,000',
    rating: 4.9,
    description:
        'Bunaken, surga bawah laut di Manado, menawarkan terumbu karang menakjubkan dan keanekaragaman biota laut yang luar biasa. Nikmati snorkeling atau diving di perairan jernih yang penuh warna. Rasakan keindahan alam yang tak terlupakan! 🌊🐠✨',
    isOpenTrip: true,
    termsAndConditions:
        'Tidak termasuk peralatan diving, harus mematuhi aturan konservasi laut.',
    includeExclude:
        'Termasuk transportasi boat, snorkeling guide, dan makan siang.',
    pax: 2,
  ),
  TravelModel(
    id: 14,
    title: 'Raja Ampat - Papua',
    imagePath: 'assets/images/rajaampat.jpg',
    price: 'IDR 8,000,000',
    rating: 5.0,
    description:
        'Raja Ampat, surga tropis di Papua, menyajikan panorama laut jernih, pulau-pulau eksotis, dan terumbu karang terbaik di dunia. Surga bagi penyelam dan pencinta alam, keindahannya benar-benar memukau. Jelajahi keajaibannya dan rasakan pesonanya! 🌊🏝️✨',
    isOpenTrip: true,
    termsAndConditions: 'Harus memiliki izin masuk kawasan konservasi.',
    includeExclude:
        'Termasuk transportasi boat, penginapan, dan guide profesional.',
    pax: 4,
  ),
  TravelModel(
    id: 15,
    title: 'Labuan Bajo - Pulau Komodo',
    imagePath: 'assets/images/labuanbajo.jpg',
    price: 'IDR 6,500,000',
    rating: 4.9,
    description:
        'Pulau Komodo, permata eksotis di Labuan Bajo, menawarkan petualangan melihat komodo liar di habitat aslinya. Dikelilingi pantai indah dan perairan jernih, tempat ini sempurna untuk trekking, snorkeling, dan menikmati keajaiban alam. Rasakan sensasinya! 🏝️🦎✨',
    isOpenTrip: true,
    termsAndConditions: 'Harus mengikuti aturan keselamatan saat trekking.',
    includeExclude:
        'Termasuk tiket masuk Taman Nasional Komodo, kapal wisata, dan makan siang.',
    pax: 3,
  ),
];
