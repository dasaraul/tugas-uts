import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext constext) {
    return MaterialApp(
      title: 'BIODATA MAHASISWA - UNIVERSITAS NASIONAL',
      home: Scaffold(
      appBar: AppBar(

      title: Text('Bio Muhammad Akbar'),
    ),

    body: SingleChildScrollView(
      child: Biodata(),
    )
    )
    );

    class Biodata extends StatelessWidget {
      final String namal    = "Muhammad Akbar Hadi Pratama";
      final String nohp     = "082210819939";
      final String fakultas = "Fakultas Teknologi Komunikasi dan Informatika";
      final String prodi    = "Sistem Informasi";
      final String alamat   = "BSD - Serpong Damai";
      final String email    = "tamaes@tamaestore.my.id";
      final String ipk      = "9999";
      final String mot      = "Tetaplah Hidup";
    }
    final List<String> images = [
      'img/me.png'
      'img/frey.png'
      'img/frey1.png'
    ];

    @override
    Widget build(BuildContext) {
      return Padding
       padding: new EdgeInsets.all(16.0),
    child: Column(
      children: [
        Row(children: [
          Expanded(child: 
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('Nama          :' $namal),
              Text('Nomor Hp      :' $nohp),
              Text('Fakultas      :' $fakultas),
              Text('Program Studi :' $prodi),
              Text('Alamat        :' $alamat),
              Text('Email         :' $email),
              Text('IPK           :' $ipk),
              Text('Moto Hidup    :' $mot),
              SizedBox(height: 20)
              // donnn
            ]),
          ),
        ],
        ),
    ),

    Expanded(
      flex: 2,
      child: Column(children: [
        CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('img/me.png'),
        ),
        SizedBox(height: 10),
        ElevatedButton(onPressed(){
          showDialog(
            context: constext,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Bio saya'),
                content: Text('Loremmmmm'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigation.og(context).pop();
                    },
                  child: Text('Close Pop-Up'),
                  ),
                ],
              ),
            },
          ),
        },
        child: Text('Me'),
        ),
        ElevatedButton(onPressed:() {
          showDialog(
            context: constext,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Foto'),
                content: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    .map(images) => Padding(
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