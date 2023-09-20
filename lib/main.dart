import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Pages/Home_Page.dart';
import 'bloc/cubit_cubit.dart';
const color_G = Color.fromARGB(255, 0, 139, 57);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
            bodySmall: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),
            bodyLarge:TextStyle(color: Colors.white) ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 139, 57)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewsCubit(),
        child: BlocConsumer<NewsCubit, NewStates>(
          listener: (context, state) {},
          builder: (context, state) {
            NewsCubit cubit = NewsCubit.get(context);

            return Scaffold(
              endDrawer: Drawer(surfaceTintColor: Colors.red),
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.white,size: 40),
                backgroundColor: color_G,
               title: BackButton(onPressed: () {
                 Navigator.pop(context);
               },),
              ),

              bottomNavigationBar: BottomNavigationBar(
                  fixedColor: Colors.white,
                  unselectedItemColor: Colors.white,
                  backgroundColor: color_G,
                  type: BottomNavigationBarType.fixed,
                  items: cubit.Bottomsheet,
                  currentIndex: cubit.current,
                  onTap: (index) {
                    cubit.ChangePage(index);
                  },
                ),

              floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
              floatingActionButton: Container(
                padding: EdgeInsets.all(4),
                height: 100,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(width: 3,color: Colors.green.shade900) ,gradient: LinearGradient(
                    colors: [

                      Color(0xff35e199),
                  Colors.green.shade900,
                  Colors.green.shade900,
                  Color(0xff35e199),

                ],
                  end: Alignment.centerRight
                ) ),
                child: FloatingActionButton(
                  shape: CircleBorder(),
                    backgroundColor: cubit.current == 1 ? Colors.white70 : Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 40,
                          color: Colors.green.shade700,
                          Icons.people_rounded,
                        ),
                        Text('خدماتي',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    onPressed: () {
                      cubit.ChangePage(1);
                    }),
              ),

              body: cubit.pages[cubit.current],
            );
          },
        ),
      );

  }
}
