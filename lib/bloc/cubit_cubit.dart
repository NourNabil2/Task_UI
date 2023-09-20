import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../Pages/About the Ministry_Page.dart';
import '../Pages/Home_Page.dart';
import '../Pages/Properties_Page.dart';


part 'cubit_state.dart';

class NewsCubit extends Cubit<NewStates>
{
  NewsCubit() : super (NewInitialState());



  static NewsCubit get(context) => BlocProvider.of(context);
  int current=1;
  List<BottomNavigationBarItem> Bottomsheet = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.text_bubble_fill),label: 'عن الوزارة'),
    BottomNavigationBarItem(icon: Icon(Icons.abc ,color: Colors.transparent),label: '' ),
    BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'الخصائص' ),

  ];
  List pages = [
  Ministry_Page(),
    Home(),
    Properties(),
  ] ;
  void ChangePage (index)
  {
    current=index;
    emit(NewBottomState());
  }



}
