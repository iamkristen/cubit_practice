import 'package:cubit_practice/cubit/internet_cubit.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bloc Practice",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state == InternetState.back) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  "Online",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.green,
              ));
            } else if (state == InternetState.lost) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  "Offline",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.red,
              ));
            } else {
              const Text("Loading");
            }
          },
          builder: (context, state) {
            if (state == InternetState.back) {
              return const Text("Online");
            } else if (state == InternetState.lost) {
              return const Text("Offline");
            } else {
              return const Text("Loading");
            }
          },
        ),
      ),
    );
  }
}
