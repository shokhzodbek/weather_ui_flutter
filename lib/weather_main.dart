import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_weather_icons/flutter_weather_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WeatherMain extends StatefulWidget {
  @override
  _WeatherMainState createState() => _WeatherMainState();
}

class _WeatherMainState extends State<WeatherMain> {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0PcwKW7h5zpF83eV_vwdA87Iut6zjg7iYuA&usqp=CAU"),
                      fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Container(color: Colors.black.withOpacity(0.1)),
              ),
            ),
          ),
          Positioned(
              child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "07:23AM",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(
                        Icons.edit_location,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Uzbekistan",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 24,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Stormy",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "18",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 64,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "🌡C",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Feels like 24",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              VerticalDivider(
                                color: Colors.white,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.cloud,
                                    color: Colors.white,
                                    size: 80,
                                  ),
                                  Text(
                                    "10-40",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Center(
                                    child: Text(
                              "Sunrise 6AM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))),
                            Expanded(
                                child: Center(
                                    child: Text("Moonrise 9PM",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)))),
                          ],
                        ),
                        SmoothPageIndicator(controller: _pageController, count: 3,
                        effect: WormEffect(
                          radius: 8,
                          dotWidth: 8,
                          dotHeight: 8,
                          activeDotColor: Colors.white,
                          dotColor: Colors.white.withOpacity(.3)
                        ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: ListView(
                   scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                              children:     [
    
                         Icon(Icons.cloud,color: Colors.red,size: 40,),
                         Spacer(),
    
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("20",style: TextStyle(
                              fontSize: 18
                            ),),
                          ),
    
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text("NOW",
                            style: TextStyle(
                              color:Colors.white
                            ),
                            
                            ),
                          ),
                        )
    
                          ],
                           ),
                             ],
                  ),
                
                ),
                Divider(color: Colors.white,),
                Container(
                  height: MediaQuery.of(context).size.height/6,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  
                )

              ],
            ),
          ))
        ],
      ),
    );
  }
}
