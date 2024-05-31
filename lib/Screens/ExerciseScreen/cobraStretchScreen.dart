import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/ExerciseScreen/pelvicShiftScreen.dart';
import 'package:yoga_app/templates/ExerciseOptionScreen.dart';
import 'package:yoga_app/templates/ExerciseTemplate.dart';

class CobraStretchScreen extends StatelessWidget {
  const CobraStretchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExerciseScreen(
      exerciseName: 'Cobra Stretch',
      duration: 60,
      nextScreen: const PelvicShiftScreen(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/videos/cobra.gif',
              height: 200.0,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[300],
              foregroundColor: Colors.white,
              fixedSize: Size(200, 55),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExerciseOptionsScreen(
                    exerciseName: 'Cobra Stretch',
                    replayScreen: CobraStretchScreen(),
                    nextExerciseScreen: PelvicShiftScreen(),
                  ),
                ),
              );
            },
            child: const Text(
              'End Exercise',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}