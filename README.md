# counter_7 -Ian Suryadi Timothy Hutajulu / 2106750875


## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
_Stateless widget_ adalah _widget_ yang memiliki sifat immutable atau tidak dapat berubah di runtime dan bersifat dependent terhadap parent widgetnya. Arti widget yang tidak dapat berubah, seperti dalam variabel, ikon, tombol, maupun pada saat pengambilan data.

_Stateful widget_ adalah _widget_ yang memiliki sifat dinamis atau dapat berubah atau mutable. _Widget_ ini bersifat independent dan tidak bergantung dengan parent sehingga dapat merubah tampilan dari suatu aplikasi, variabel, warna, ikon, tombol, dan lain lain di runtime. Widget ini akan melakukan perubahan sesuai dengan yang dibutuhkan oleh _developer_ saat menjalankan suatu aplikasi.

perbedaannya adalah _stateless widget_ tidak dapat dirubah pada saat runtime dan dependent terhadap parentnya, sedangkan _stateful widget_ bisa dan bersifat independent.

## Sebutkan widget apa saja yang kamu pakai diproyek kali ini dan jelaskan fungsinya

-> Padding : membuat layout pada tampilan aplikasi untuk masing-masing widget

-> MaterialApp: merupakan parent yang akan menerapkan style material design pada sesuatu yang diapitnya

-> TextStyle: untuk memberikan styling pada text

-> Text: untuk menampilkan text 

-> Column: berfungsi untuk mengatur posisi letak widget berdasarkan kolom

-> Scaffold: untuk mengatur struktur visual layout yang diimplementasikan melalui material design

-> Center: untuk meletakkan widget di posisi tengah

-> FloatingActionButton: untuk membuat suatu tombol

## Apa fungsi dari setState() ? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berfungsi untuk memberitahu suatu framework bahwa terdapat perubahan object pada State yang kemudian akan melakukan build ulang pada widget tersebut. Biasanya fungsi ini terdapat di widget yang bersifat stateful. Variabel yang terdapat pada setState() ialah variabel yang memiliki sifat dapat berubah atau mutable dan juga variabel yang terdeklarasi secara global pada sebuah class.

## Jelaskan perbedaan antara const dengan final
Perbedaan antara const dengan final terletak pada saat pemberian nilai pada suatu variabel. const adalah suatu variabel yang harus diinisiasi pada saat kompilasi, sehingga nilainya bersifat konstan dan secara langsung sudah memiliki nilai ketika dirun. Sebaliknya, final adalah suatu variabel yang memiliki nilai secara tidak langsung ketika dikompilasi. 

## Jelaskan cara kamu mengimplementasikan checklist diatas
1. Hal yang pertama saya lakukan dengan adalah dengan membuat aplikasi counter_7 dengan menggunakan perintah flutter create counter_7
2. Membuat variabel counter pada class _MyHomePageState untuk menginisiasi angka 0
3. Lalu juga menambahkan variabel untuk mengetahui status ganjil-genap yang diset awalnya berupa GENAP
4. Selanjutnya, kita membuat method _decrementCounter(), dalam method ini akan melakukan pengurangan counter. Apabila counter yang dikurangi menghasilkan hasil yang sama dengan -1, maka counter tersebut akan diset menjadi 0. Pada proses ini dilakukan dalam fungsi setState()
5. Kemudian, kita membuat cara untuk melakukan pengecekan pada angka. Code block pada class widge ini akan melihat apakah angka tersebut berupa ganjil atau genap, dilihat melalui counter yang berubah-ubah nilainya. Ketika counter tersebut menunjukkan angka ganjil, maka mengembalikan teks ganjil, begitupun sebaliknya
7. Menambahkan widget FloatingActionButton lalu memasukkan fungsi atau method yang sudah kita buat sebelumnya pada onPress. Jadi ketika diklik maka akan menjalankan method tersebut.










"# pbp-flutter-lab" 
