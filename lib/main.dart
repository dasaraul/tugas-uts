import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Biodata Saya'),
        ),
        body: SingleChildScrollView(
          child: Biodata(),
        ),
      ),
    );
  }
}

    class Biodata extends StatelessWidget {
      final String namal    = "Muhammad Akbar Hadi Pratama";
      final String nohp     = "082210819939";
      final String fakultas = "Fakultas Teknologi Komunikasi dan Informatika";
      final String prodi    = "Sistem Informasi";
      final String alamat   = "BSD - Serpong Damai";
      final String email    = "tamaes@tamaestore.my.id";
      final String ipk      = "9999";
      final String mot      = "Tetaplah Hidup";
      
      final List<String> images = [
      'img/me.png'
      'img/frey.png'
      'img/frey1.png'
    ];

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
       child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Text('Nama          : $namal'),
              Text('Nomor Hp      : $nohp'),
              Text('Fakultas      : $fakultas'),
              Text('Program Studi : $prodi'),
              Text('Alamat        : $alamat'),
              Text('Email         : $email'),
              Text('IPK           : $ipk'),
              Text('Moto Hidup    : $mot'),
              SizedBox(height: 10),
                    Text('Kata-kata:'),
                    Text(mot),
                    SizedBox(height: 20),
                    Text('Riwayat Hidup:'),
                    DataTable(
                      columns: [
                        DataColumn(label: Text('Umur')),
                        DataColumn(label: Text('Masa')),
                        DataColumn(label: Text('Prestasi')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('14 - 17')),
                          DataCell(Text('Menempuh Pendidikan SMP')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('18 - 21')),
                          DataCell(Text('Menempuh Pendidikan SMK')),
                          DataCell(Text('Taruna')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('21 - Sekarang')),
                          DataCell(Text('Menempuh Kuliah Jurusan\nSistem Informasi')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
    Expanded(
                flex: 2,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('img/me.png'),
                    ),
                    SizedBox(height: 10),
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
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(image),
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
