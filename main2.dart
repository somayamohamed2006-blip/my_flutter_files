import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF1E88FF);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            
            const Expanded(
              flex: 3,
              child: _TopIllustration(),
            ),

            
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    const Text(
                      'Lorem Ipsum is simply\ndummy',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Lorem Ipsum is simply dummy text of the '
                          'printing and typesetting industry.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        height: 1.4,
                      ),
                    ),
                    const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Row(
                          children: const [
                            _Dot(isActive: true),
                            SizedBox(width: 6),
                            _Dot(isActive: false),
                            SizedBox(width: 6),
                            _Dot(isActive: false),
                          ],
                        ),

                        
                        SizedBox(
                          height: 44,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryBlue,
                              padding:
                              const EdgeInsets.symmetric(horizontal: 28),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TopIllustration extends StatelessWidget {
  const _TopIllustration();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1F3A93), 
              Color(0xFF16A085), 
          ),
        ),
        child: Stack(
          children: [
            
            Align(
              alignment: const Alignment(0, 0.4),
              child: Container(
                width: 260,
                height: 140,
                decoration: BoxDecoration(
                  color: const Color(0xFF20B18A),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            
            Align(
              alignment: const Alignment(0.8, 0.6),
              child: SizedBox(
                width: 80,
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(4, (i) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        width: 80.0 - i * 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: const Color(0xFF4B3FAE),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),

            
            Align(
              alignment: const Alignment(0.1, 0.05),
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: const Color(0xFF2C3EA8),
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.currency_bitcoin,
                    color: Color(0xFFF39C12),
                    size: 64,
                  ),
                ),
              ),
            ),

            Align(
              alignment: const Alignment(-0.8, -0.1),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFF1C40F),
                      Color(0xFFE67E22),
                    ],
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.currency_exchange,
                    color: Color(0xFF4B3FAE),
                    size: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final bool isActive;
  const _Dot({required this.isActive});

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF1E88FF);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isActive ? 10 : 8,
      height: isActive ? 10 : 8,
      decoration: BoxDecoration(
        color: isActive ? primaryBlue : primaryBlue.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
    );
  }
}