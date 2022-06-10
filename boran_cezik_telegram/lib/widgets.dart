import 'package:flutter/material.dart';

Widget Sohbet(String ad,String mesaj,String saat, String resim){
return Container(

  child:   ListTile(
    contentPadding: EdgeInsets.only(top: 5, left: 10),
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: ExactAssetImage(resim),
    ),
    title: Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ad,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 19),
          ),
          Text(
            saat,
            style: TextStyle(

                fontSize: 14),
          )
        ],
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(right: 8.0,top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(mesaj,
            style: TextStyle(fontWeight: FontWeight.w500),),

        ],
      ),
    ),
  ),
);
}