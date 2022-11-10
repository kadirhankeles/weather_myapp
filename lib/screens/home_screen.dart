import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<String> weatherDataImage = [
    "assets/im_lightning.png",
    "assets/im_lightning.png",
    "assets/im_lightning.png",
    "assets/im_lightning.png",
  ];
  List<int> weatherDataTemperature = [20, 20, 19, 19];
  List<String> weatherDataClock = [
    "4.00 PM",
    "5.00 PM",
    "6.00 PM",
    "7.00 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
            child: SizedBox(
              width: 100.w,
              height: 100.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: 100.w,
                    height: 4.h,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text("Türkiye,Ankara"),
                        Icon(Icons.arrow_drop_down),
                        Spacer(),
                        Icon(Icons.search)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 50.w,
                    height: 23.h,
                    decoration: BoxDecoration(
                        color: Color(0xff4F7FFA),
                        borderRadius: BorderRadius.circular(3.w)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "Ankara, 20 December 2021",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Spacer(),
                                Text(
                                  "3.30 PM",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 90.w,
                            height: 13.h,
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.cloudSunRain,
                                  color: Colors.white,
                                  size: 13.w,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  width: 60.w,
                                  height: 13.h,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Container(
                                        width: 60.w,
                                        child: Text(
                                          "18°C",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        width: 60.w,
                                        child: Text(
                                          "Hujan Berawan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 90.w,
                            height: 4.h,
                            child: Row(
                              children: [
                                Text(
                                  "Terakhir update 3.00 PM",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Icon(
                                  Icons.refresh,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 80.w,
                    height: 5.h,
                    child: Text(
                      "Cuaca Per Jam",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 15.h,
                    child: ListView.builder(
                      itemCount: weatherDataImage.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          width: 20.w,
                          height: 8.h,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade50,
                            borderRadius: BorderRadius.circular(5.w),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                weatherDataImage[index],
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "${weatherDataTemperature[index]}°",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(weatherDataClock[index]),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 80.w,
                    height: 4.h,
                    child: Text(
                      "Harian",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    width: 80.w,
                    height: 9.5.h,
                    decoration: BoxDecoration(
                        color: Color(0xffE7755C).withOpacity(0.20),
                        borderRadius: BorderRadius.circular(3.w)),
                    child: Row(
                      children: [
                        Image.asset("assets/im_cloudly.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 50.w,
                              height: 4.h,
                              child: Text(
                                "Cuaca esok hari kemungkinan akan terjadi hujan di siang hari",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              width: 50.w,
                              height: 4.2.h,
                              child: Text("Jangan lupa bawa payung ya"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    width: 75.w,
                    height: 24.h,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: weatherDataClock.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          width: 80.w,
                          height: 7.3.h,
                          decoration: BoxDecoration(
                              color: Color(0xffD2DFFF),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 10.w,
                                  height: 10.w,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade200,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    weatherDataImage[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SizedBox(
                                width: 30.w,
                                height: 30.h,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 12),
                                      width: 30.w,
                                      // height: 5.h,
                                      child: Text(
                                        "Selasa",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        width: 30.w,
                                        //height: 5.h,
                                        child: Text("Hujan Petir")),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Text(
                                "${weatherDataTemperature[index]}°C",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.play_arrow_rounded)),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
