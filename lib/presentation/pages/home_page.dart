import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../../constants/colors/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  Future<void> playSound(String notaNum) async {
    final player = AudioPlayer().play(AssetSource('musics/note_$notaNum.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text('Xylophone App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: GestureDetector(
              onTap: () => playSound('1'),
              child: Container(
                color: AppColors.red,
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => playSound('2'),
              child: Container(
                color: AppColors.black,
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => playSound('3'),
              child: Container(
                color: AppColors.blue,
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => playSound('4'),
              child: Container(
                color: AppColors.brown,
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => playSound('5'),
              child: Container(
                color: AppColors.teal,
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => playSound('6'),
              child: Container(
                color: AppColors.yellow,
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => playSound('7'),
              child: Container(
                color: AppColors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
