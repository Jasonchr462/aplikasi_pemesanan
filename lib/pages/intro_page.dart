import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intro_app/pages/home_page.dart';

import '../custom_filled_button.dart';
import '../custom_text_button.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  int currentIndex = 0;
  CarouselController controller = CarouselController();

  List<String> titles = [
    'Bubur dan Bakmi Ayam\nBerkat',
    'Sunter Indah Raya\nSunter',
    'Kelapa Kopyor Raya\nKelapa Gading',
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/intro1.jpg',
                  height: 322,
                ),
                Image.asset(
                  'assets/intro2.jpg',
                  height: 322,
                ),
                Image.asset(
                  'assets/intro3.jpg',
                  height: 322,
                ),
              ],
              options: CarouselOptions(
                height: 318,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: controller,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style:const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == 2 ? 38 : 50,
                  ),
                  currentIndex == 2
                      ? Column(
                    children: [
                      CustomFilledButton(
                        title: 'Get Started',
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(
                          builder: (context) => const HomePage()
                          )
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // CustomTextButton(
                      //   title: 'Sign In',
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, '/sign-in');
                      //   },
                      // ),
                    ],
                  )
                      : Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 0
                              ? Colors.blueAccent
                              : Colors.white,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 1
                              ? Colors.blueAccent
                              : Colors.white,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 2
                              ? Colors.blueAccent
                              : Colors.white,
                        ),
                      ),
                      const Spacer(),
                      CustomFilledButton(
                        title: 'Continue',
                        width: 150,
                        onPressed: () {
                          controller.nextPage();
                        },
                      ),
                    ],
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