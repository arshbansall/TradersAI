import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:traders_ai/components/cardV1.dart';

import '../components/dividerV1.dart';

class HomePage extends StatelessWidget {

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.indigo[900],
        automaticallyImplyLeading: false, // This will hide the back button
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Open the drawer when the button is pressed
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const DividerV1(
                text: "Model Performance"
              ),
              CarouselSlider(
                items: [1, 2, 3].map((i) {
                  return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          // decoration: const BoxDecoration(color: Colors.amber),
                          child: Image.asset(
                            'lib/images/home_page_img$i.png',
                            fit: BoxFit.contain,
                            width: double.infinity,
                          ),
                        );
                      }
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 250.0,
                  aspectRatio: 2,
                  autoPlay: true,
                  viewportFraction: 1,
                )
              ),
              const SizedBox(height: 20),
              const DividerV1(
                text: 'Blogs',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardV1(
                  imagePath: 'lib/images/card_img1.png',
                  heading: "Trading Plans for FRI.",
                  body: "S&P 500 INDEX MODEL TRADING PLANS for FRI. 10/20 Geopolitical risks, high interest rates, sticky inflation, extremely strong jobs market, early signs of consumers beginning to scale back…yet, retail bullish positioning has increased this week again. Powell’s speech yesterday provided…",
                  onTap: () => {}
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardV1(
                    imagePath: 'lib/images/card_img2.png',
                    heading: "S&P 500 MODEL TRADING PLANS FOR THU 10/19",
                    body: "Results of Published Model Trades for Thu 10/19 Find below the detailed outcome tracking of our models’ trading plans for the day, as well as the results for the last month. The horizontal lines on the chart show the price…",
                    onTap: () => {}
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardV1(
                    imagePath: 'lib/images/card_img3.png',
                    heading: "Trading Plans for THU. 10/19",
                    body: "S&P 500 INDEX MODEL TRADING PLANS for THU. 10/19 This week marks the beginning of the peak of Q3 earnings season, and a potential inflection points in the geopolitical risks with signs of potential ground operations to begin by Israel…",
                    onTap: () => {}
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}