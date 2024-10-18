//memasukkan package yang di butuhkan oleh aplikasi
import 'package:english_words/english_words.dart';
//paket bahasa inggris
import 'package:flutter/material.dart';
//paket untuk tampilan UI(material UI)
import 'package:provider/provider.dart';
//paket untuk interaksi aplikasi

//fungsi main (fungsi utama)
void main() {
  runApp(MyApp());//memangggil fungsi runApp (yang menjalankan keseluruhan aplikasi di dalam runApp)
}

//membuat abtrak aplikasi dari statelesswidget (template aplikasi), aplikasi bernama MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key}); //menunjukakan bahawa aplikasi ini akan tetap, tidak berubah setelah di-build

  @override //mengganti nilai lama yang sudah ada di template, dengan niali yang baru (replace / overwrite)
  Widget build(BuildContext context) {
    //fungsi build adalah fungsi yang membangun UI (mengatut posisi widget, dst)
    //changenotifierprovider mendengarkan / mendeteksi semua interaksi yang terjadi di aplikasi
    return ChangeNotifierProvider(
      create: (context) => MyAppState(), //membuat satu state bernama MyAppState
      child: MaterialApp( //pada state ini menggunakan style desain material UI
        title: 'Namer App',//diberi judul Namer App
        theme: ThemeData( // data tema aplikasi diberi warna DeepOrange
          useMaterial3: true, // versi material UI yang di pakai versi 3
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(), //nama halaman "MyHomePage" yang menggunakan state "MyAppState"
      ),
    );
  }
}

// mendefinisikan isi MyAppState
class MyAppState extends ChangeNotifier {
  //state MyAppState di isi dengan 2 kata random yang di gabung. kata random tsb di simpan di variable wordpair
  var current = WordPair.random();
    void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold( //base(canvas) dari layout
      body: Column(// diatasnya scafflold, ada body, body-nya, diberi kolom
        children: [ //didalam kolom, di beri teks
          Text('A random idea:'),
          Text(appState.current.asLowerCase), // mengambil random teks dari AppState pada variable wordpair current, lalu di ubah menjadi huruf kecil semua, dan di tampilkan sebagai teks
                   ElevatedButton( //membuat button timbul didalam body
            onPressed: () {
              //fungsi yg dieksekusi ketika button ditekan 
              print('button pressed!'); // tampilkan teks 'button pressed' di terminal saat butttn ditekan
            },
            child: Text('Next'),// berikan teks 'next'pada button(sebagai child)
          ),

        ],
      ),
    );
  }
}