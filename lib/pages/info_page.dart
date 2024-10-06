import 'package:flutter/material.dart';
import 'package:green_box/utils/constants.dart';
import 'package:green_box/widgets/instruction_widget.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Passo a Passo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const InstructionWidget(
              instructionNum: '1',
              instructionText:
                  'Aponte a camera do seu celular para sua planta.',
            ),
            const InstructionWidget(
              instructionNum: '2',
              instructionText: 'Tire uma foto da planta.',
            ),
            const InstructionWidget(
              instructionNum: '3',
              instructionText: 'Veja o quão saudável sua planta está.',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/images/icon.png',
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
