import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiBlast extends StatelessWidget {
  final ConfettiController controller;
  final double direction;

  const ConfettiBlast({
    required this.controller,
    required this.direction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ConfettiWidget(
        confettiController: controller,
        blastDirectionality: BlastDirectionality.explosive, // radial value - RIGHT
        emissionFrequency: 0.6,
        minimumSize:
            const Size(10, 10), // set the minimum potential size for the confetti (width, height)
        maximumSize:
            const Size(50, 50), // set the maximum potential size for the confetti (width, height)
        minBlastForce: 15,
        numberOfParticles: 1,
      );
}
