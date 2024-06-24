import 'package:flutter/material.dart';
import 'package:movienest2/pages/MoviePage.dart';

class NewMoviesWidget extends StatelessWidget {
  final List<Map<String, String>> movies = [
    {
      "title": "Inside Out 2",
      "image": "images/3.jpg",
      "genre": "Animation",
      "rating": "8.0",
      "description":
          "Riley kini beranjak remaja dan menghadapi berbagai tantangan baru yang datang dengan masa remaja. Emosi-emosi seperti Joy (Kebahagiaan), Sadness (Kesedihan), Anger (Kemarahan), Fear (Ketakutan), dan Disgust (Jijik) kembali bekerja sama untuk membantunya melalui masa-masa sulit ini. Film ini mengeksplorasi perasaan dan perubahan yang dialami Riley saat ia tumbuh dewasa, dengan cerita yang menyentuh hati, lucu, dan penuh makna tentang pentingnya memahami dan mengelola emosi kita."
    },
    {
      "title": "Kungfu Panda 4",
      "image": "images/4.jpg",
      "genre": "Animation",
      "rating": "6.3",
      "description":
          "Po kembali dalam petualangan barunya untuk menghadapi musuh baru yang lebih kuat dari sebelumnya. Dalam perjalanan ini, Po belajar banyak tentang kekuatan dan tanggung jawab sebagai seorang Dragon Warrior. Bersama teman-temannya, ia harus melindungi lembah dari ancaman yang semakin besar."
    },
    {
      "title": "Tarot",
      "image": "images/5.jpg",
      "genre": "Horror",
      "rating": "4.8",
      "description":
          "Tarot mengisahkan sekelompok pemuda yang menghabiskan malam di sebuah rumah tua. Mereka menemukan sebuah kartu tarot yang dilukis dengan tangan dan mencoba meramal menggunakan kartu tersebut."
    },
    {
      "title": "The First Omen",
      "image": "images/6.jpg",
      "genre": "Horror",
      "rating": "6.5",
      "description":
          "Film ini berfokus pada asal-usul Damien Thorn, anak yang nantinya dikenal sebagai Antikristus. Cerita mengungkapkan latar belakang kelahiran dan masa kecil Damien, serta peristiwa-peristiwa mengerikan yang terjadi sebelum kisah dalam The Omen dimulai. Penonton akan menyaksikan bagaimana kekuatan gelap mulai mempengaruhi dunia sekitarnya dan membentuk nasib Damien sebagai sosok yang ditakdirkan untuk membawa kehancuran. Film ini diharapkan menghadirkan atmosfer mencekam dan penuh ketegangan yang sama seperti film aslinya, sambil memberikan wawasan lebih mendalam tentang karakter-karakter dan elemen-elemen supernatural yang ada dalam saga The Omen."
    },
    {
      "title": "The Idea of You",
      "image": "images/7.jpg",
      "genre": "Romance",
      "rating": "6.4",
      "description":
          "Sophie, seorang ibu tunggal berusia 40 tahun yang hidupnya berubah drastis setelah bertemu dengan Hayes Campbell, seorang bintang rock muda yang berusia 24 tahun. Pertemuan mereka terjadi ketika Sophie membawa putrinya ke festival musik Coachella, dan takdir mempertemukan dia dengan Hayes. Hubungan mereka berkembang menjadi sebuah romansa yang kompleks, penuh gairah, namun juga dihadapkan pada tantangan besar karena perbedaan usia dan dunia yang sangat berbeda yang mereka huni. Film ini mengeksplorasi tema cinta, kehidupan, dan menemukan diri sendiri di tengah-tengah situasi yang tidak terduga."
    },
    {
      "title": "No Way Out",
      "image": "images/8.jpg",
      "genre": "Action",
      "rating": "6.6",
      "description":
          "Film ini melanjutkan kisah detektif Ma Seok-do, yang diperankan oleh Ma Dong-seok (Don Lee), seorang polisi yang terkenal karena metode investigasinya yang keras dan tak kenal ampun. Dalam No Way Out, Ma Seok-do menghadapi sindikat kejahatan yang lebih besar dan lebih berbahaya, kali ini melibatkan jaringan perdagangan manusia internasional dan narkoba. Film ini penuh dengan adegan aksi yang intens, humor khas, dan karakter-karakter kuat, serta menyoroti upaya tak kenal lelah Ma Seok-do dalam memberantas kejahatan dan menegakkan keadilan di jalanan."
    },
    {
      "title": "Wonka",
      "image": "images/9.jpg",
      "genre": "Fantasy",
      "rating": "7.0",
      "description":
          "Film ini mengisahkan tentang masa muda Willy Wonka, seorang pembuat cokelat eksentrik. Cerita berfokus pada perjalanan Wonka sebelum ia membuka pabrik cokelat terkenalnya. Penonton akan diajak melihat bagaimana Wonka memulai kariernya, termasuk tantangan dan petualangan yang ia hadapi dalam mengejar mimpinya menjadi pembuat cokelat terhebat. Film ini dibintangi oleh Timothée Chalamet sebagai Willy Wonka dan menyuguhkan campuran antara petualangan fantasi, komedi, dan drama."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: movies.map((movie) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoviePage(),
                    ),
                  );
                },
                child: Container(
                  width: 190,
                  height: 310,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 55, 54, 54),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 49, 49, 49).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          movie['image']!,
                          height: 210,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie['title']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              movie['genre']!,
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  movie['rating']!,
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
