import 'package:boran_cezik_telegram/kisiler.dart';
import 'package:boran_cezik_telegram/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List<Kisiler> kisiler = [
    new Kisiler(
        kisiAdi: "Chris",
        kisiMesaj: "Hello ! 😀😀",
        kisiSaat: "14:53",
        kisiResim: "resimler/bir.jpg"),
    new Kisiler(
        kisiAdi: "Jesica Ford",
        kisiMesaj: "Finee !! 😛😛",
        kisiSaat: "18:12",
        kisiResim: "resimler/iki.jpg"),
    new Kisiler(
        kisiAdi: "James",
        kisiMesaj: "Say hello to Alicee 🤣",
        kisiSaat: "14:52",
        kisiResim: "resimler/uc.png"),
    new Kisiler(
        kisiAdi: "Rose Alpha",
        kisiMesaj: "Ok :)",
        kisiSaat: "02:02",
        kisiResim: "resimler/dort.png"),
    new Kisiler(
        kisiAdi: "Roberto Claim",
        kisiMesaj: "Where are you from ?",
        kisiSaat: "11:05",
        kisiResim: "resimler/bes.jpg"),
    new Kisiler(
        kisiAdi: "Alecia Beth Moore",
        kisiMesaj: "How are you ? 😀",
        kisiSaat: "12:05",
        kisiResim: "resimler/alti.png"),
    new Kisiler(
        kisiAdi: "Amala Ratna Zandile",
        kisiMesaj: "Good Morningg ❤",
        kisiSaat: "09:05",
        kisiResim: "resimler/yedi.jpg"),
    new Kisiler(
        kisiAdi: "Andre Romelle Young",
        kisiMesaj: "lets go skating ? 🤣",
        kisiSaat: "10:05",
        kisiResim: "resimler/dokuz.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Telegram",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            )
          ],
          backgroundColor: Color(0xFF55879F),
        ),
        body: ListView.separated(
            separatorBuilder: (context, i) {
              return Divider(
                height: 2.5,
              );
            },
            itemCount: kisiler.length,
            itemBuilder: (BuildContext context, indeks) {
              return Column(children: [
                Sohbet(kisiler[indeks].kisiAdi, kisiler[indeks].kisiMesaj,
                    kisiler[indeks].kisiSaat, kisiler[indeks].kisiResim),
              ]);
            }));
  }
}
