import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget school_info()
{
  return ListView(
    padding: EdgeInsets.all(10),
    scrollDirection: Axis.vertical,
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    children: [
      School_Row(TEXT: 'الكتب المدرسية',press: (){},IMAGE: 'Image/book.png'),
      School_Row(TEXT: 'الجدول الدراسي',press: (){},IMAGE: 'Image/Schedule.png'),
      School_Row(TEXT: 'المكتبة العامة',press: (){},IMAGE: 'Image/books.png'),



    ],
  );
}

Widget School_Row(
{
  required String TEXT,
  required String IMAGE,
  press,
}
    )=>MaterialButton(
  onPressed: press,
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(TEXT,style: TextStyle(fontWeight: FontWeight.bold)),
      SizedBox(width: 8,),
      Image.asset(IMAGE ,width: 50,)

    ],
  ),
);


Widget communication_Row(
{
  required String TEXT,
  required String Msg,
  required String IMAGE,
  press,
}
    )=>Stack(
    alignment: Alignment.topLeft,
      children:[MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        onPressed: press,
        color: CupertinoColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(TEXT,style: TextStyle(fontWeight: FontWeight.bold,)),
                  Text(Msg,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,overflow: TextOverflow.ellipsis)),
                ],
              ),
            ),

            SizedBox(width: 10,),


            Container(
                color: Colors.lightBlue.shade500,
                child: Image.asset(IMAGE ,width: 40,height: 40,))

          ],
        ),
      ), Image.asset('Image/clip.png',width: 50),]
    );



Widget communication_info()
{
  return Expanded(
    child: ListView(
      padding: EdgeInsets.all(10),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,

      children: [
        communication_Row(TEXT: 'احمد سامي', Msg: 'الرجاء الاءلتحاق بإجتماع الإدارة',press: (){},IMAGE: 'Image/administration.png',),
        SizedBox(height: 10,),
        communication_Row(TEXT: 'خالد الجبل', Msg: 'رسالة من معلم بالمدرسة',press: (){},IMAGE: 'Image/Teacher.png'),
        SizedBox(height: 10,),
        communication_Row(TEXT: 'سامي احمد', Msg: 'رساله من ولي أمر الطالب',press: (){},IMAGE: 'Image/parentis.png'),
        SizedBox(height: 10,),
        communication_Row(TEXT: 'سمير خالد', Msg: 'رساله من ولي أمر الطالب',press: (){},IMAGE: 'Image/student.png'),



      ],
    ),
  );
}



Widget Tasks_Row(
    {
      required String grade,
      required String supject,
      required String title,
      required String Type,
      required String clock,
      required Color Color,

    }
    )=>Stack(
    alignment: Alignment.topLeft,
    children:[Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: Color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('النوع :$Type ',style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),
                    Spacer(),
                    Text('الصف :$grade ',style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),
                  ],
                ),
                Text('الماده :$supject ',style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),
                Text('الدرس :$title ',style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(clock,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey,overflow: TextOverflow.ellipsis)),
                    Icon(CupertinoIcons.clock_fill,size: 15),

                  ],
                ),
              ],
            ),
          ),

          SizedBox(width: 10,),


        ],
      ),
    ), Image.asset('Image/Pin.png',width: 20),]
);



Widget Tasks_info()
{
  return Expanded(
    child: ListView(
      padding: EdgeInsets.all(10),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,

      children: [
        Tasks_Row(grade: 'أ/ب', supject: "الرياضيات", title: 'المعادلات الحسابيه', Type: "تحريري", clock: "25 دقيقة", Color: Colors.white),
        Tasks_Row(grade: 'أ/ب', supject: "الرياضيات", title: 'المعادلات الحسابيه', Type: "تحريري", clock: "", Color:  Color(0xff00b089)),
      ],
    ),
  );
}



