import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Biodata Mahasiswa - Sistem Informasi Universitas Nasional'),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.1),
                child: SingleChildScrollView(
                  child: Biodata(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Biodata extends StatelessWidget {
  final String namal = "Muhammad Akbar Hadi Pratama";
  final String nohp = "082210819939";
  final String fakultas = "Fakultas Teknologi Komunikasi dan Informatika";
  final String prodi = "Sistem Informasi";
  final String alamat = "BSD - Serpong Damai";
  final String email = "tamaes@tamaestore.my.id";
  final String ipk = "9999";
  final String mot = "Tetaplah Hidup";

  final List<String> images = [
    'img/me.png',
    'img/frey.png',
    'img/frey1.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double fontSize = 9;

    return Padding(
      padding: EdgeInsets.all(screenHeight * 0.03),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama                  : $namal\n',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    Text(
                      'Nomor Hp           : $nohp\n',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    Text(
                      'Fakultas               : $fakultas\n',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    Text(
                      'Program Studi    : $prodi\n',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    Text(
                      'Alamat                : $alamat\n',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    Text(
                      'Email                   : $email\n',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    Text(
                      'IPK                        : $ipk\n',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    Text(
                      'Moto Hidup           : $mot\n',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Kata-kata      :',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    Text(
                      mot,
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      'Riwayat Pendidikan:',
                      style: TextStyle(fontSize: fontSize, color: Colors.white),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Jenjang', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                          DataColumn(label: Text('Nama Sekolah', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                          DataColumn(label: Text('Tahun Masuk', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                          DataColumn(label: Text('Tahun Lulus', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text('SD', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('SD Ulil Albab', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('2010', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('2016', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('MTsN', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('MTsN Caruban', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('2017', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('2020', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('SMK', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('SMKN 1 Wonoasri', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('2020', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                            DataCell(Text('2022', style: TextStyle(fontSize: fontSize, color: Colors.white))),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: screenHeight * 0.1,
                      backgroundImage: AssetImage('img/me.png'),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Tentang Saya'),
                              content: Text('Mantra Lorem'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Tutup'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Tentang Saya'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Foto'),
                              content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: images
                                      .map((image) => Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Container(
                                              width: 500,
                                              height: 400,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                image: DecorationImage(
                                                  image: AssetImage(image),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Tutup'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Lihat Foto'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
