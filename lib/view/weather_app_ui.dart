import 'package:flutter/material.dart';
import 'package:flutter_application_10/view/widgets/text_fild_widgets.dart';

class WeatherAppUi extends StatefulWidget {
  const WeatherAppUi({Key? key}) : super(key: key);

  @override
  State<WeatherAppUi> createState() => _WeatherAppUiState();
}

class _WeatherAppUiState extends State<WeatherAppUi> {
  bool isOpenInk = false;

  List<String> imagesAssets = [
    'assets/images/umbrella.png',
    'assets/images/Vector.png',
    'assets/images/Rectangle 14.png',
  ];
  List<String> cludy = [
    'RainFall',
    'Wind',
    'Humidity',
  ];
  List<String> values = [
    '3cm',
    '19km/h',
    '64%',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isOpenInk = !isOpenInk;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          color: isOpenInk ? Colors.orange : Colors.red,
                          width: isOpenInk ? 300 : 65,
                          height: isOpenInk ? 60 : 35,
                          curve: Curves.fastOutSlowIn,
                          alignment:
                              isOpenInk ? Alignment.center : Alignment.center,
                          child: isOpenInk
                              ? const TextFildWidgets()
                              : const Icon(
                                  Icons.search,
                                  size: 35,
                                ),
                        ),
                      ),
                      const Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Bishkek,\nKyrgyzstan',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Tue, Jun 30',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/cludy.png'),
                      ),
                      Align(
                        widthFactor: 0.5,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '19',
                                  style: TextStyle(
                                    fontSize: 95,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '°c',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Rainy',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: cludy.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4),
                          child: Container(
                            height: 65,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.white54,
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              child: Row(
                                children: [
                                  Container(
                                    height: 37,
                                    width: 37,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                          imagesAssets[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    cludy[index],
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                  const Spacer(),
                                  Text(
                                    values[index],
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Tomorrow',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Row(
                      children: [
                        Text(
                          'Next 7 Days',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    Align(
                      heightFactor: 0,
                      child: Container(
                        height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
