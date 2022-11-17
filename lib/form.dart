import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/drawer.dart';

class DataBudget{
  String judul;
  int amount;
  String tipe;
  DateTime date;

  DataBudget(this.judul, this.amount, this.tipe, this.date);
}

class SimpanData{
  static List<DataBudget> contain = <DataBudget>[];
}

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _amount = 0;
  String kategori = 'Pemasukan';
  List<String> listKategori = ['Pemasukan', 'Pengeluaran'];
  DateTime _date = DateTime.now(); 
  
    @override
    Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
            ),
            drawer: const myDrawer(),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        // Menggunakan padding sebesar 8 pixels
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: Membeli atau Menjual Sesuatu",
                            labelText: "Judul",
                            // Menambahkan icon agar lebih intuitif
                            icon: const Icon(Icons.people),
                          ),
                          // Menambahkan behavior saat nama diketik
                          onChanged: (String? value) {
                            setState(() {
                              _judul = value!;
                            });
                          },
                          onSaved: (String? value) {
                            setState(() {
                              _judul = value!;
                            });
                          }, 
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Judul tidak boleh kosong!';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: 100000",
                            labelText: "amount",
                            icon: const Icon(Icons.money_sharp),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              _amount = int.parse(value!);
                            });
                          },
                         
                          onSaved: (String? value) {
                            setState(() {
                              _amount = int.parse(value!);
                            });
                          },
                          
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'amount tidak boleh kosong!';
                            }
                            return null;
                          },
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.class_),
                        title: const Text(
                          'Tipe',
                        ),
                        trailing: DropdownButton(
                          value: kategori,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: listKategori.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              kategori = newValue!;
                            });
                          },
                        ),
                      ),
                      Center(
                        child: TextButton(
                          child: Text("Pilih tanggal"),
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2099),
                            ).then((date) {
                              //tambahkan setState dan panggil variabel _dateTime.
                              setState(() {
                                _date = date!;
                              });
                            });
                          },
                        ),
                      ),
                      Center(
                        child: Text(
                          "Pilihan Tanggal: " + _date.toString().split(' ')[0],
                          style: const TextStyle(
                            fontSize: 16.0,
                            // color: Colors.black87,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          "Simpan",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: () {
                          
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 15,
                                  child: Container(
                                    child: ListView(
                                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                                      shrinkWrap: true,
                                      children: <Widget>[
                                        Center(child: const Text('Berhasil Menambahkan Data')),
                                        SizedBox(height: 20),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Kembali'),
                                        ) 
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                            SimpanData.contain.add(DataBudget(_judul, _amount, kategori,_date));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
      }
}