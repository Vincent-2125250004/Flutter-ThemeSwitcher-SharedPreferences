class Character {
  String id;
  String name;
  String rarity;
  String path;
  String element;
  String iconChara;
  String fullImgChara;
  String description;

  Character(this.id, this.name, this.rarity, this.path, this.element,
      this.iconChara, this.fullImgChara, this.description);
}

var characterList = [
  Character(
    "1",
    "Arlan",
    "⭐⭐⭐⭐",
    "The Destruction",
    "Lightning",
    "https://static.wikia.nocookie.net/houkai-star-rail/images/a/a9/Character_Arlan_Icon.png",
    "https://static.wikia.nocookie.net/houkai-star-rail/images/5/5b/Character_Arlan_Splash_Art.png",
    "Kepala Departemen Keamanan Stasiun Luar Angkasa \"Herta\" yang tidak pandai berbicara. Meskipun dia tidak memahami penelitian ilmiah, tapi Arlan rela mempertaruhkan nyawanya untuk melindungi staf yang sangat menghargai penelitian. Dia sudah terbiasa dengan rasa sakit dan menganggap bekas lukanya seperti lencana kehormatan.Hanya saat dia memeluk Peppy, anak laki-laki itu baru bisa menurunkan kewaspadaannya dan menunjukkan senyum langka.",
  ),
  Character(
      "2",
      "Asta",
      "⭐⭐⭐⭐",
      "The Harmony",
      "Fire",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/9/9f/Character_Asta_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/b/bd/Character_Asta_Splash_Art.png",
      "Karakter Gadis muda yang sangat ingin tahu dan energik. Dia adalah Kepala Peneliti Stasiun Luar Angkasa \"Herta\". Baik dalam mengelola staf yang berbeda-beda pendapat, ataupun membalas Intelligentsia Guild dengan sopan namun tegas, semua hal itu dilakukan Asta semudah membalikkan tangan. Karena memimpin stasiun luar angkasa ... jauh lebih mudah dari mengambil alih perusahaan!"),
  Character(
      "3",
      "Bailu",
      "⭐⭐⭐⭐⭐",
      "The Abundance",
      "Lightning",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/4/47/Character_Bailu_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/e/e9/Character_Bailu_Splash_Art.png",
      "Gadis muda yang lincah dari ras Vidyadhara, dikenal sebagai \"Wanita Penyembuh\" karena keahliannya dalam bidang pengobatan..\n Sering memberikan resep yang aneh, seperti \"banyak minum air panas\" dan \"tidur dan istirahat saja\". Karena tidak bisa melihat orang menderita, dia selalu menutup mata ketika mengobati pasiennya.\n — Yang penting mereka sembuh, kan?"),
  Character(
      "4",
      "Blade",
      "⭐⭐⭐⭐⭐",
      "The Destruction",
      "Wind",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/9/90/Character_Blade_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/1/16/Character_Blade_Splash_Art.png",
      "Ahli pedang yang mengorbankan dirinya untuk menjadi pedang tajam. Nama aslinya tidak diketahui. Dia setia pada \"Destiny's Slave\", serta mempunyai kekuatan menyembuhkan diri yang mengerikan. Dia bertarung dengan pedang kuno di tangannya. Di pedang itu terdapat bekas retakan seperti tubuh dan hatinya."),
  Character(
      "5",
      "Bronya",
      "⭐⭐⭐⭐⭐",
      "The Harmony",
      "Wind",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/0/0f/Character_Bronya_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/7/7c/Character_Bronya_Splash_Art.png",
      "Penerus \"Supreme Guardian\" Belobog. Dia adalah komandan Silvermane Guard yang muda dan andal. Sejak kecil Bronya sudah menerima pendidikan ketat. Dia memiliki keanggunan serta keramahan yang diharapkan dari seorang ahli waris.Namun setelah melihat kondisi Underworld yang menyedihkan, benih keraguan mulai timbul di pikiran pemimpin masa depan Belobog ini. \"Apa pelatihan-pelatihan yang kuterima sungguh bisa membantuku memimpin orang-orang mencapai kehidupan yang mereka inginkan?"),
  Character(
      "6",
      "Clara",
      "⭐⭐⭐⭐⭐",
      "The Destruction",
      "Physical",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/a/a4/Character_Clara_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/c/c2/Character_Clara_Splash_Art.png",
      "Seorang gadis kecil yang dibesarkan oleh robot, dia memiliki persepsi dan ketekunan yang melebihi usianya. Bagi Clara, perhitungan rasional Svarog adalah hukum dunia, tidak akan pernah salah. Hingga pada akhirnya dia menyadari bahwa hasil yang diperoleh dengan \"perhitungan\", mungkin tidak selalu bisa membawa kebahagiaan bagi semua orang. Gadis pemalu ini lalu memutuskan untuk jadi berani."),
  Character(
      "7",
      "Dan Heng",
      "⭐⭐⭐⭐",
      "The Hunt",
      "Wind",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/1/1a/Character_Dan_Heng_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/e/e5/Character_Dan_Heng_Splash_Art.png",
      "Anak muda yang dingin dan pendiam, menggunakan tombak yang dikenal sebagai \"Cloud-Piercer\". Dia bertugas menjadi pelindung Express selama ekspedisi perintisan yang panjang. Dan Heng tidak pernah membicarakan masa lalunya. Dia justru bergabung dengan Kru Express untuk melepaskan diri dari masa lalu yang pernah dia perbuat. Lantas, akankah Express membawanya meninggalkan \"masa lalu\"?"),
  Character(
      "8",
      "Gepard",
      "⭐⭐⭐⭐⭐",
      "The Perservation",
      "Ice",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/7/75/Character_Gepard_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/9/96/Character_Gepard_Splash_Art.png",
      "Kapten Silvermane Guard yang terhormat dan jujur. Dia lahir di keluarga bangsawan Landau. Di kota Belobog yang terus diserang badai salju; sandang, pangan, papan, dan transportasi masyarakat masih bisa normal seperti dulu .... Hal itu karena Gepard dan Silvermane Guard yang dipimpinnya. Mereka telah menjaga kedamaian dalam keseharian masyarakat."),
  Character(
      "9",
      "Herta",
      "⭐⭐⭐⭐",
      "The Erudition",
      "Ice",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/b/bf/Character_Herta_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/8/8c/Character_Herta_Splash_Art.png",
      "Pemilik sebenarnya Stasiun Luar Angkasa \"Herta\". Sebagai manusia dengan IQ tertinggi di The Blue, dia hanya melakukan apa yang dia minati. Dia akan langsung membuang proyek apa pun segera setelah dia kehilangan minat — contoh terbaik adalah stasiun luar angkasa. Dia biasanya muncul dalam bentuk puppet yang dikontrol jarak jauh. \"Harusnya ada 70% kemiripan dengan wajahku waktu kecil.\" Ujar Herta."),
  Character(
      "10",
      "Himeko",
      "⭐⭐⭐⭐⭐",
      "The Erudition",
      "Fire",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/0/00/Character_Himeko_Icon.png",
      "https://static.wikia.nocookie.net/houkai-star-rail/images/8/8e/Character_Himeko_Splash_Art.png",
      "Seorang ilmuwan yang berjiwa petualang. Dia menemukan Astral Express terdampar di kampung halamannya saat masih muda. Bertahun-tahun kemudian, Himeko akhirnya memperbaiki kereta itu dan memulai perjalanannya mengarungi bintang-bintang. Dia sadar bahwa hal ini hanyalah suatu permulaan. Di perjalanan \"perintisan\" dunia baru, dia memerlukan rekan yang lebih banyak lagi .... Meski rekan-rekannya memiliki tujuan yang berbeda, tapi mereka tetap berada di bawah langit berbintang yang sama.")
];
