import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'config.dart';

class Contribute extends StatelessWidget {
  Contribute({Key? key}) : super(key: key);

  Map<String, double> dataMap = {
    "Food Items": 18.47,
    "Clothes": 17.70,
    "Technology": 4.25,
    "Cosmetics": 3.51,
    "Other": 2.83,
  };

  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color.fromARGB(255, 216, 221, 226),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
  ];

  final gradientList = <List<Color>>[
    [
      const Color.fromRGBO(223, 250, 92, 1),
      const Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      const Color.fromRGBO(129, 182, 205, 1),
      const Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      const Color.fromRGBO(175, 63, 62, 1.0),
      const Color.fromRGBO(254, 154, 92, 1),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'Seed Round A',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    height: 1.6,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'There is a total vesting period of 12 months for Hami Token seeding round. Contributors will be able to claim the tokens partially from first month onwards see Vesting Period tab for more info.',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Round Details',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    height: 1.6,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                'Token Address',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.purple.shade100),
                    child: const Center(
                      child: Text(
                        '0xc19999988888666',
                        //                     data.split(path.extension(data))[0],
                        // maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.purple,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.copy,
                    color: Colors.grey,
                    size: 13,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                'Total Supply',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '1200000000 HAMI',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //1
              const Text(
                'Tokens Allocated for Seeding',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '24400000',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //2
              const Text(
                'Soft Cap',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '1220 BNB',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //3
              const Text(
                'Hard Cap',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '2440 BNB',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //4
              const Text(
                'Seeding Rate',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '10000 HAMI per BNB',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //5
              const Text(
                'Seeding Goal (Estimate)',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '\$ 662996.8',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //6
              const Text(
                'Minimum Contribution',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '0.01 BNB',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //7
              const Text(
                'Maximum Contribution',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '20 BNB',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //8
              const Text(
                'Seeding Start Date',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'August 24, 2022',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              //9
              const Text(
                'Seeding End Date',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'September 24, 2022',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              Text(
                'Coin Metrics',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    height: 1.6,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),

              //chart
              PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(milliseconds: 800),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                colorList: colorList,
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 32,
                centerText: "",
                legendOptions: const LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: false,
                  legendShape: BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
                // gradientList: ---To add gradient colors---
                // emptyColorGradient: ---Empty Color gradient---
              )
            ],
          ),
        ),
      ),
    );
  }
}
