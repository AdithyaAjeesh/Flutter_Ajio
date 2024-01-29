// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ajio_clone_app/Widgets/app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final List<String> carouseImage1 = [
    'assets/IMG1.PNG',
    'assets/IMG_2.PNG',
    'assets/IMG_3.PNG',
    'assets/IMG_4.PNG',
  ];
  final carouselImage2 = [
    'assets/homeslider1.jpg',
    'assets/homeslider2.jpg',
    'assets/homeslider3.jpg',
    'assets/homeslider4.jpg',
  ];
  final carouselHome2 = ['assets/slider1.jpg', 'assets/slider2.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: prefAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: carouseImage1.length,
              itemBuilder: (BuildContext, index, realIndex) {
                final String imagePath = carouseImage1[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(imagePath),
                  ),
                );
              },
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                viewportFraction: 1,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      activeIndex = index;
                    },
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Image.asset(
                    'assets/order.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (final imagePath in [
                          'assets/RuPay.jpg',
                          'assets/sbi.jpg',
                          'assets/yesbank.jpg'
                        ])
                          Image.asset(
                            imagePath,
                            height: 80,
                            width: 400,
                          )
                      ],
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: carouselImage2.length,
                    itemBuilder: (BuildContext, index, realIndex) {
                      final ImagePath = carouselImage2[index];
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: AssetImage(ImagePath),
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 300,
                      autoPlay: true,
                      viewportFraction: 1,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(seconds: 1),
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            activeIndex = index;
                          },
                        );
                      },
                    ),
                  ),
                  Image.asset(
                    'assets/hurry.png',
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage('assets/h4.png')),
                        Image(image: AssetImage('assets/h2.png')),
                        Image(image: AssetImage('assets/h3.png'))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: AssetImage('assets/h1.png')),
                        Image(image: AssetImage('assets/h2.png')),
                        Image(image: AssetImage('assets/h4.png')),
                      ],
                    ),
                  ),
                  Image(
                    image: const AssetImage('assets/homewinterbar.jpg'),
                    height: MediaQuery.of(context).size.width * 0.07,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.05,
                      child: const Text(
                        'NOW',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Image(image: AssetImage('assets/homewinter1.jpg')),
                        SizedBox(width: 5),
                        Image(image: AssetImage('assets/homewinter2.jpg')),
                        SizedBox(width: 5),
                        Image(image: AssetImage('assets/homewinter3.jpg')),
                        SizedBox(width: 5),
                        Image(image: AssetImage('assets/homewinter1.jpg')),
                      ],
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: carouselHome2.length,
                    itemBuilder: (BuildContext, index, realIndex) {
                      final imagePath = carouselHome2[index];
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: AssetImage(imagePath),
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      height: 250,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(seconds: 1),
                      pauseAutoPlayOnTouch: true,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ),
                  ),
                  Image(
                    image: const AssetImage('assets/beat.jpg'),
                    width: MediaQuery.of(context).size.width * 0.10,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 230,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/h2.png')),
                    Image(image: AssetImage('assets/h5.jpg'), height: 240),
                    Image(image: AssetImage('assets/h4.png')),
                    Image(image: AssetImage('assets/h3.png')),
                    Image(image: AssetImage('assets/h2.png'))
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.amber[100],
              width: double.infinity,
              height: 60,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('assets/lasthome.jpg')),
                  Image(image: AssetImage('assets/lasthome.jpg'))
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                color: const Color.fromARGB(255, 248, 221, 148),
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
