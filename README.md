# counter_7 -Ian Suryadi Timothy Hutajulu / 2106750875


#

# Tugas 7 : Elemen Dasar Flutter
#
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





#

# Tugas 8 : Flutter Form
#
### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push merupakan sebuah navigator routing yang akan menambahkan page atau layar baru ke tumpukan stack/screen.
#
### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
1. Drawer() berfungsi untuk menambahkan panel yang berisi pilihan-pilihan seperti menu.
2. Scaffold() berfungsi sebagai pengatur struktur _visual layout_ dengan mengimplementasikan material desain.
3. DrawerHeader() berfungsi untuk menambahkan header pada drawer untuk memisahkan list drawer yg kita buat.
4. BoxDecoration() berfungsi untuk menambahkan sebuah kotak pada DrawerHeader guna memberi jarak dari list drawer.
5. Text() & TextStyle() berfungsi untuk menampilkan sebuah teks dan memberikan style pada teksnya.
6. LisTile() berfungsi untuk menambahkan komponen layer yang terdapat pada drawer.
7. Icon() berfungsi untuk menambahkan sebuah icon.
8. TextButton() berfungsi untuk menambahkan button text
9. dropDownButton() berfungsi untuk membuat tampilan yang menumpuk didalamnya guna memilih input yang tersedia.
10. showDatePicker() berfungsi nuntuk menampilkan sebuah date.
11. TextStyle() berfungsi untuk menambahkan style yang kita inginkan pada text tersebut.
12. DateFormat() berfungsi untuk memformat sebuah date yang kita inginkan.
13. Column, Padding, Center, Row() berfungsi untuk mengatur posisi widget 
#
### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
1. onTap()
2. onSaved()
3. onPressed()
4. onClick()
5. onChanged()
#
### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Implementasi dari Navigator pada flutter menggunakan prinsip Stack. Ketika ingin pindah ke sebuah page yang baru, makan pada stack tersebut akan ditumpuk atau di-push sebuah layer yang baru. Ketika ingin pindah atau mengganti ke halaman sebelumnya, maka dia akan melakukan pop pada layer paling atas dari stack.
#
### elaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. membuat file drawer.dart sebagai navigation bar atau menu pada page.
2. membuat file form.dart untuk menampung input dari user dan membuat widget-widget yang sesuai dengan bentuk format input.
3. membuat file data.dart untuk menampilkan data-data dari input user yang disimpan pada form.dart. 
4. menyesuaikan drawer di dalam main.dart agar tertampil pada semua page.


#

# Tugas 9 : Integrasi Web Service pada Flutter
#

#
### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa mengambil data JSON tanpa membuat model dalam bentuk data yang _raw_ seperti Map dengan key yang menyimpan value masing-masing. Namun dengan metode seperti ini tidak efisien dan lebih sulit pemakaiannya karena dengan membuat model terlebih dahulu pengklasifikasian dari data lebih mudah dan lebih teratur.

#
### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. TextStyle: berfungsi untuk memberikan styling pada text

2. Text: untuk menampilkan text pada aplikasi yang dibuat

3. Column: berfungsi untuk mengatur posisi letak widget berdasarkan kolom

4. MaterialApp: merupakan parent yang akan menerapkan style material design pada sesuatu yang diapitnya

5. Scaffold: untuk mengatur struktur visual layout yang diimplementasikan melalui material design

6. Card : berfungsi untuk menampilkan card bawaan dari library flutter

7. Drawer : berfungsi untuk memberikan navigation bar pada aplikasi

8. ListView.builder : berfungsi untuk menampilkan list of children yang dapat di scroll

9. SizedBox : berfungsi untuk membuat box yang dapat diubah ukurannya

10. Container : berfungsi sebagai wadah dari widget lainnya

11. TextSpan : sebuah _markup_ dari sebagian text yang dapat diedit stylenya.

12. FloatingActionButton: untuk membuat suatu tombol

13. FutureBuilder : berfungsi untuk fetching data

14. Padding : membuat layout pada tampilan aplikasi untuk masing-masing widget

15. EdgeInsets : berfungsi untuk membuat offset di dalam sebuah kotak.

#
### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

1. Membuat folder model yang berisi konten dari data-data dalam file JSON
2. Membuat method dengan http yang direfactor menjadi file baru dengan bantuan import  'package:http/http.dart' as http
3. Response pada http tersebut akan diubah menjadi menjadi object Dart
4. Data dapat memanfaatkan FutureWidget untuk menampilkan data tersebut, widget ini digunakan karena menggunakan future yang membutuhkan beberapa waktu terlebih dulu untuk memproses data
5. Melakukan loop pada data yang terdapat pada database untuk dengan atribut-atribut data masing-masing untuk diampilkan.

#
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas

1. Membuat file watchlist_view.dart untuk menampung halaman json
2. Menambah path untuk routing ke watchlist_view di dalam drawer.dart
3. Membuat folder view, model dan data untuk mengelompokan sesuai fungsi masing masing
menambahkan drawer pada file watchlist_view
4. membuat file data_watchlist.dart dan menaruhnya pada folder data untuk mengambil data dari url json
5. Melakukan fetch pada file watchlist_view.dart dengan bantuan file di folder model yaitu watchlist.dart
kemudian data yang diambil akan ditampilkan di mywatchlist_view.dart
6. Membuat navigator push yang akan menampilkan detail dari film yang diGET ketika ditekan


"# pbp-flutter-lab" 
