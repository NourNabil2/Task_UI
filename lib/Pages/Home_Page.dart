import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Component/Component_Widgets.dart';
import '../Component/Text.dart';
import '../bloc/cubit_cubit.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewStates>(
      listener: (context, state) {},
    builder: (context, state) {
      NewsCubit cubit = NewsCubit.get(context);
      return GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.only(topRight: Radius.elliptical(80, 25) )),
              child: Column(children: [
                Text_Home(TEXT: 'المتابعة', icon: Icons.trending_up),
                SizedBox(height: 10,),
                Image.asset('Image/1.jpg',width: 150,)
              ],),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.only(topLeft: Radius.elliptical(80, 25) )),
              child: Column(children: [
                Text_Home(TEXT: 'المدرسة', icon: Icons.school),
                school_info(),
              ],),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.only(topRight: Radius.elliptical(80, 25) )),
              child: Column(
                children: [
                Text_Home(TEXT: 'التواصل', icon: CupertinoIcons.chat_bubble_2_fill),
                communication_info(),
              ],),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.only(topLeft: Radius.elliptical(80, 25) )),
              child: Column(children: [
                Text_Home(TEXT: 'المهام', icon: CupertinoIcons.calendar),
                Tasks_info(),
              ],),
            ),
          ],
      );
    },
);
  }
}
