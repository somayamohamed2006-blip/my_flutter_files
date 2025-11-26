import 'package:flutter/material.dart';

void main() {
  runApp(const KaEarApp());
}

class KaEarApp extends StatelessWidget {
  const KaEarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color logoColor = Color(0xFF1E88FF); 

    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: KaEarLogo(color: logoColor),
        ),
      ),
    );
  }
}

class KaEarLogo extends StatelessWidget {
  final Color color;
  const KaEarLogo({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    const double fontSize = 40;

    final textStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: color,
      letterSpacing: 1.0,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Ka', style: textStyle),
        const SizedBox(width: 4),
        const _DocIcon(), 
        const SizedBox(width: 4),
        Text('ar', style: textStyle),
      ],
    );
  }
}


class _DocIcon extends StatelessWidget {
  const _DocIcon();

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xFF1E88FF);

    return SizedBox(
      width: 36,
      height: 48,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color, width: 3),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 4,
                width: 18,
                color: color,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 4,
                width: 18,
                color: color,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 4,
                width: 12,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}