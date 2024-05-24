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
      child: Bio(),
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
              Text('Nama:' $namal),
              Text('Nama:' $nohp),
              Text('Nama:' $fakultas),
              Text('Nama:' $prodi),
              Text('Nama:' $alamat),
              Text('Nama:' $email),
              Text('Nama:' $ipk),
              Text('Nama:' $mot),
              SizedBox(height: 10)
              // donnn
              )
            ]
          )
        ],)
      ],

  }
  
}
