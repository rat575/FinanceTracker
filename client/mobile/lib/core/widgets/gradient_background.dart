import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,

      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 112, 168, 157),
            Color.fromARGB(255, 142, 244, 156),
            Color.fromARGB(255, 244, 244, 244),
          ],
        ),
      ),

      child: child,
    );
  }
}
