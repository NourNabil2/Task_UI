import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Text_Home(
{
  required String TEXT,
  required IconData icon

}
    )
{
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 60),
    child: Container(
      decoration: BoxDecoration(color: Color(0xff00b089)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(TEXT,style: TextStyle(color: CupertinoColors.white)),
              Icon(icon,color: CupertinoColors.white,)
            ],
          ),
        ),

    ),
  );
}