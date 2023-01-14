import 'package:cubit_practice/cubit/internet_cubit.dart';
import 'package:cubit_practice/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const HomePage(),
      ),
    );
  }
}
