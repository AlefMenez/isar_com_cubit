import 'package:flutter/material.dart';
import 'package:isar_com_cubit/app/modules/home/cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  final HomeCubit controller;
  const HomePage({super.key, required this.controller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        onPressed: () {
        
      }, child: Icon(Icons.add, color: Colors.white,)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          Center(
            child: Text('Minha Lista'),
          ),
          const SizedBox(
             height: 30,
          ),
          Container(
            color: Colors.black,
            width: 50,
            height: 50,
          )
        ],
      ),
    );
  }
}
