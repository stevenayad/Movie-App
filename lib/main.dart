import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/Home/presentation/manger/changemainscreencubit/changemainscreencubit.dart';
import 'package:movie/Home/presentation/views/mainscreenview.dart';
import 'package:movie/settings/presentation/view/downloadview.dart';
import 'package:movie/settings/presentation/view/noticationview.dart';
import 'package:movie/settings/presentation/view/reviewsview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => Changemainscreencubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Noticationview(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
