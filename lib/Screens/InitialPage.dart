import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/WidgetHelper/WidgetHelper.dart';

class InitialPage extends StatefulWidget{
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final PageController pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6EDFF),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFFE2D3FA),
            pinned: true,
            expandedHeight: 350,
            collapsedHeight: 150,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pali, Rajasthan", style: TextStyle(color: Colors.white),),
                Icon(Icons.search, color: Colors.white,),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(horizontal: 0),
              expandedTitleScale: 1,
              title: SizedBox(
                width: double.infinity,

                child: Padding(
                  padding: const EdgeInsets.only(top:25, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text("3°", style: TextStyle(fontSize: 100, color: Colors.white, fontWeight: FontWeight.bold),),
                    Text("Feels like -2°", style: TextStyle(color: Colors.white),),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 0,
                        children: [
                          Image.network("https://cdn.weatherapi.com/weather/64x64/day/116.png", height: 100,width: 100, fit: BoxFit.fill, scale: 2.5,),
                          Visibility(child: Text("Partly Cloudy", style: TextStyle(color :Colors.white),),),
                        ],
                      )
                  ],),
                ),
              ),
              background: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/background.png", ), fit: BoxFit.fitWidth,),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),

                  ),
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Day 3°", style: TextStyle(color: Colors.white, fontSize: 20),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("January 18, 16:14", style: TextStyle(color: Colors.white, fontSize: 20),),
                          Text("Night 3°", style: TextStyle(color: Colors.white, fontSize: 20),),
                        ],
                      ),
                    ],
                  )),
            ),

          ),
          SliverPersistentHeader(delegate: MyPersistentHeader(), pinned: true,),
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constraints) {
              return SizedBox(
                height: 1000, // required fixed height
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PageView(
                    controller: pageController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        spacing: 15,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 70,
                                width: 200,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffD0BCFF).withAlpha(120),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    WidgetHelper.customIcon(icon:Icons.wind_power),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Wind Speed", style: TextStyle(fontSize: 16,),),
                                        Text("12Km/h", style: TextStyle(fontSize: 16),)
                                      ],),
                                    Spacer(),
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 200,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffD0BCFF).withAlpha(120),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    WidgetHelper.customIcon(icon:CupertinoIcons.cloud_bolt_rain),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Rain chance", style: TextStyle(fontSize: 16,),),
                                        Text("24%", style: TextStyle(fontSize: 16),)
                                      ],),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 70,
                                width: 200,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffD0BCFF).withAlpha(120),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    WidgetHelper.customIcon(icon:Icons.speed_outlined),

                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Pressure", style: TextStyle(fontSize: 16,),),
                                        Text("720 hpa", style: TextStyle(fontSize: 16),)
                                      ],),
                                    Spacer(),
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 200,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffD0BCFF).withAlpha(120),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    WidgetHelper.customIcon(icon:Icons.wb_sunny_outlined),


                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Uv Index", style: TextStyle(fontSize: 16,),),
                                        Text("2.3", style: TextStyle(fontSize: 16),)
                                      ],),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffD0BCFF).withAlpha(120),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child:Column(
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [
                                    WidgetHelper.customIcon(icon:Icons.watch_later_outlined),
                                    Text("Hourly forecast", style: TextStyle(fontSize: 16),)
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    WidgetHelper.customHourlyForecast(title: "Now", temp: "10", imgUrl: "https://cdn.weatherapi.com/weather/64x64/day/116.png"),
                                    WidgetHelper.customHourlyForecast(title: "10Am", temp: "8", imgUrl: "https://cdn.weatherapi.com/weather/64x64/day/116.png"),
                                    WidgetHelper.customHourlyForecast(title: "11Am", temp: "5", imgUrl: "https://cdn.weatherapi.com/weather/64x64/day/116.png"),
                                    WidgetHelper.customHourlyForecast(title: "12Am", temp: "12", imgUrl: "https://cdn.weatherapi.com/weather/64x64/day/116.png"),
                                    WidgetHelper.customHourlyForecast(title: "1Pm", temp: "9", imgUrl: "https://cdn.weatherapi.com/weather/64x64/day/116.png"),
                                    WidgetHelper.customHourlyForecast(title: "2Pm", temp: "12", imgUrl: "https://cdn.weatherapi.com/weather/64x64/day/116.png"),
                                  ],
                                ),
                              ],
                            ) ,
                          ),
                          Container(
                            height: 250,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffD0BCFF).withAlpha(120),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child:Column(
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [
                                    WidgetHelper.customIcon(icon:Icons.calendar_month_outlined),
                                    Text("Day forecast", style: TextStyle(fontSize: 16),)
                                  ],
                                ),
                                SizedBox(height: 20,),

                              ],
                            ) ,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffD0BCFF).withAlpha(120),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child:Column(
                              spacing: 15,
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [
                                    WidgetHelper.customIcon(icon:CupertinoIcons.cloud_bolt_rain),
                                    Text("Chance of rain", style: TextStyle(fontSize: 16),)
                                  ],
                                ),
                                for(int i =0; i< 4; i++)
                                  Row(
                                    spacing: 20,
                                    children: [
                                      Text("7 PM"),
                                      Expanded(
                                        child: Container(
                                          height: 20,
                                          alignment: Alignment.centerLeft,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFAEDFF),
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: FractionallySizedBox(widthFactor: 0.27, child: Container(decoration: BoxDecoration(color: Color(0xff8A20D5), borderRadius: BorderRadius.circular(25)),),),
                                        ),
                                      ),

                                      Text("27%"),

                                    ],),
                              ],
                            ) ,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 70,
                                width: 200,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffD0BCFF).withAlpha(120),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    WidgetHelper.customIcon(icon:Icons.wb_twilight_outlined),

                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Sunrise", style: TextStyle(fontSize: 16,),),
                                        Text("4:20 AM", style: TextStyle(fontSize: 16),)
                                      ],),
                                    Spacer(),
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 200,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffD0BCFF).withAlpha(120),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    WidgetHelper.customIcon(icon:Icons.sunny_snowing),


                                    Spacer(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Sunset", style: TextStyle(fontSize: 16,),),
                                        Text("4:50 PM", style: TextStyle(fontSize: 16),)
                                      ],),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEBDEFF),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.all(8),
                            child: Row(

                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 15,
                              children: [
                                Column(
                                  spacing: 10,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text("Thursday Jan 19", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                  Text("Cloudy and Sunny + $index"),

                                ],),
                                Spacer(),
                                Column(
                                  spacing: 10,
                                  children: [
                                    Text("3°", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                    Text("-2°", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),

                                  ],
                                ),
                                SizedBox(
                                  height: 45,
                                  child: VerticalDivider(
                                    color: Colors.black,
                                    width: 10,
                                    thickness: 1,
                                  ),
                                ),
                                Transform.scale(scale: 1.5,child:  Image.network("https://cdn.weatherapi.com/weather/64x64/day/116.png",fit: BoxFit.fill,)),
                              ],
                            ),
                          );
                        },)

                    ],
                  ),
                ),
              );
            },),
          )

        ],
      ),
    );
  }
}