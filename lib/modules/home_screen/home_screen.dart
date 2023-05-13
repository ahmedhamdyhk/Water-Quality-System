import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:water_quality/helper/constants.dart';
import 'package:water_quality/modules/details_screen/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppConstants.startColor,
              AppConstants.endColor,
            ],
            begin: AlignmentDirectional.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),

            const Text(
              'Here\'s  Your Water',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              'quality report',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 75,
            ),
            AnimatedRadialGauge(
              curve: Curves.easeInToLinear,
              duration: const Duration(seconds: 2),
              radius: 150,

              ///TODO : add value
              value: 50,
              progressBar: GaugeRoundedProgressBar(
                gradient: const GaugeAxisGradient(
                  colors: [
                    Colors.green,
                    Colors.red,
                  ],
                ),
                color: AppConstants.endColor,
              ),
              axis: const GaugeAxis(
                /// Provide the [min] and [max] value for the [value] argument.
                min: 0,
                max: 150,

                /// Render the gauge as a 180-degree arc.
                degrees: 200,

                /// Set the background color and axis thickness.
                style: GaugeAxisStyle(
                  thickness: 20,
                  background: Color(0xFFDFE2EC),
                ),
              ),
            ),

            //TODO : change text depend on the result
            const Text(
              'Good to drink',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                card(const Color(0XFF57bf9c), '15', 'PH'),
                card(Colors.cyan, '27', 'TDS'),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'See More About Water Quality?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget card(color, value, name) {
    return Container(
      height: 100,
      width: 170,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
