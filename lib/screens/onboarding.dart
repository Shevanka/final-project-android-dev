import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../routes.dart';

// ignore: use_key_in_widget_constructors
class OnboardingScreen extends StatelessWidget {
  final List<String> images = [
    'assets/img/card_middle.webp',
    'assets/img/card_left.png',
    'assets/img/card_right.png',
  ];

  final String title = 'Delight Delivered,\nCravings Satisfied.';
  final String description = "Savor the convenience of delicious meals\n"
      "delivered right to your doorstep.\n"
      "Let's embark on a culinary journey together!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height: 63),

            CarouselSlider(
              items: images.map((img) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _OnboardCard(image: img),
                );
              }).toList(),
              options: CarouselOptions(
                height: 470,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                viewportFraction: 0.72,
              ),
            ),

            const SizedBox(height: 24),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                color: Color(0xFFEB4D57),
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF343434),
                fontWeight: FontWeight.w400,
              ),
            ),

            const Spacer(),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    pageBuilder: (_, __, ___) => AppRoutes.routes[AppRoutes.login]!(context),
                    transitionsBuilder: (_, animation, __, child) {
                      const begin = Offset(1.0, 0.0); // dari kanan
                      const end = Offset.zero;
                      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeOut));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 70),
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffEB4D57),
                ),
                child: const Icon(Icons.arrow_forward_rounded, size: 48, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _OnboardCard extends StatelessWidget {
  final String image;
  const _OnboardCard({required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 410,
      child: Card(
        elevation: 20,
        shadowColor: Colors.black38,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                const Color(0xffEB4D57).withOpacity(0.8),
                BlendMode.srcATop,
              ),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/img/logo.png', width: 90, height: 90),
                  const SizedBox(height: 14),
                  const Text(
                    'YumYard',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}