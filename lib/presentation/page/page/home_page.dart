import 'package:flutter/material.dart';
import 'package:training_app/presentation/style/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    //テスト用のリスト
    List<String> numberList = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10'
    ];
    return Scaffold(
      backgroundColor: MyColor.darkgreen,
      body: GridView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyColor.darkYellow),
              child: Center(child: Text(numberList[index])),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
