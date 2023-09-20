import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Properties extends StatelessWidget {
  const Properties({super.key});

  @override
  Widget build(BuildContext context) {
List<List<dynamic>> data = [
['الحصةالسابعه','الحصةالسادسة','الحصة الخامسة','الحصة الرابعة','الحصة الثالثة','الحصةالثانية','الحصة الاولي',''],
['٣أ \n لغتي','','','٣أ \n لغتي','','٣أ \n لغتي','','الأحد'],
['٣أ \n لغتي','','','٣أ \n رياضيات','','٣أ \n لغتي','','الأثنين'],
['','','','٣أ \n قرأن','٣أ \n لغتي','٣أ \n رياضيات','٣أ \n لغتي','الثلاثاء'],
['','','','٣أ \n رياضيات','٣أ \n لغتي','','٣أ \n لغتي','الاربعاء'],
['','','٣أ \n قرأن','٣أ \n رياضيات','','٣أ \n قرأن','','الخميس'],

] ;


    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 500,
        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.elliptical(50, 150) ),gradient: LinearGradient(
            colors: [
            Colors.grey.shade200,
              Colors.grey.shade200,
              Colors.grey.shade300,
              Colors.grey.shade400,
            ],
            end: Alignment.bottomRight
        )),
        child: ListView(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('الساعة:08:01:50'),
                        SizedBox(width: 60,),
                        Text('اليوم: الاربعاء 20/09/2023'),
                      ],),
                  ),
                  const SizedBox(height: 30,),
                  Table(
                    border: TableBorder.all(),
                    defaultColumnWidth: const FixedColumnWidth(50),

                    children: data.map((e) => TableRow(
                       children: e.map((row){
                         return Container(
                           color: row.toString().contains('الحصة') ? Colors.black54 :   row.toString() == '' ?  Colors.white : Colors.redAccent,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(1.0),
                                 child: Text(row.toString(),style: TextStyle(fontSize: 10)),
                               ),
                             ],
                           ),
                         );
                    }
                       ).toList()
                    )).toList(),


                  ),
                  const SizedBox(width: 60,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(color: Colors.grey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('  تفاصيل الحصة'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('نوع الحصه: تعويضي✸'),
                                    Text('الماده: جغرافية✸'),
                                    Text('الصف:٣أ✸'),
                                  ],
                                ),
                                Text('المدرس: سامي ناصر خليفه الحرمي✸'),
                                Text('تاريخ اخر تدريس الحصة: 10/02/2023 الحصه رقم 6✸'),
                                Text('أخر درس: عدد السكان المملكه العربيه السعودية✸'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('المستوي العلمي : 75%✸'),
                                    Text('المستوي السلوكي: 87%✸'),
                                  ],
                                ),
                                Row(
                                     children: [  Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: TextButton(onPressed: () {}, child: Text('الدخول',style: TextStyle(color: Colors.white)) ,style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.redAccent))),
                                     ),],
                                    )

                              ],
                            ),
                          ),
                        )
                      ],
                    ),),
                  )
                ]),
          ],
        ),

      ),
    );
  }
}
