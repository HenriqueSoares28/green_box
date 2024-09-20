import 'package:flutter/material.dart';
import 'package:green_box/utils/constants.dart';

class InstructionWidget extends StatelessWidget {
  final String instructionNum;
  final String instructionText;

  const InstructionWidget({super.key, required this.instructionNum, required this.instructionText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.darkBrown,
          child: Text(
            instructionNum,
            style:
                const TextStyle(fontSize: 20, color: AppColors.backgroundLight),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            instructionText,
            style: const TextStyle(
              fontSize: 20,
              color: AppColors.darkBrown,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}