import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyPersistentHeader extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 50;
  @override
  double get maxExtent => 50;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.transparent,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 127,
            decoration: BoxDecoration(
              color: Color(0xffE0B6FF),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text("Today"),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 127,
            decoration: BoxDecoration(
              color: Color(0xffE0B6FF),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text("Today"),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 127,
            decoration: BoxDecoration(
              color: Color(0xffE0B6FF),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text("Today"),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}

class WidgetHelper {
  static customIcon({required IconData icon}) {
    return Container(
      height: 30,
      width: 30,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Icon(icon, size: 21),
    );
  }

  static customHourlyForecast({
    required String title,
    required String temp,
    required String imgUrl,
  }) {
    return Column(
      children: [
        Text(title),
        Image.network(imgUrl, width: 50, height: 50),
        Text("$temp°", style: TextStyle(fontSize: 22)),
      ],
    );
  }
}

class Chart extends StatelessWidget {
  Chart({super.key});
  final data = [];
  final labels = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 1.7,
      child: LineChart(
        LineChartData(
          backgroundColor: Colors.white,
          minY: 0,
          lineTouchData: LineTouchData(
            enabled: true,
            handleBuiltInTouches: true,
            getTouchedSpotIndicator: (barData, spotIndexes) {
              return spotIndexes.map((index) {
                return TouchedSpotIndicatorData(
                  FlLine(color: Colors.redAccent, strokeWidth: 1),
                  FlDotData(show: true),
                );
              }).toList();
            },
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (touchedSpot) => Colors.redAccent.withAlpha(200),
              fitInsideHorizontally: true,
              fitInsideVertically: true,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((axis) {
                  return LineTooltipItem("Hello", TextStyle(color: Colors.white));
                },).toList();
              },
            ),
            touchCallback: (FlTouchEvent event, LineTouchResponse? response) {
              if (event is FlTapUpEvent || event is FlLongPressEnd) {
                if (response != null && response.lineBarSpots != null) {}
              }
            },
          ),
          lineBarsData: [LineChartBarData(
            spots: List.generate(
              data.length,
                  (index) => FlSpot(index.toDouble(), data[index]),
            ),
            isCurved: true,
            color: Colors.redAccent,
            barWidth: 2,
            // shadow: Shadow(color: Colors.redAccent),
            isStrokeCapRound: true,
            dotData: FlDotData(show: true),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: [
                  Colors.redAccent.withAlpha(100),
                  Colors.redAccent.shade100.withAlpha(10)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),],
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: data.length<4? 1: (data.length / 4).floorToDouble(),
                getTitlesWidget: (value, meta) {
                  int index = value.toInt();
                  if (index < 0 || index >= labels.length) return Container();
                  return SideTitleWidget(
                    meta: meta,
                    space: 4,
                    child: Text(
                      index < labels.length ? labels[index] : '',
                      style: const TextStyle(fontSize: 10),
                    ),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                getTitlesWidget: (value, meta) {
                  return SideTitleWidget(
                    meta: meta,
                    space: 4,
                    child: Text(
                      value.toInt().toString(),
                      style: const TextStyle(fontSize: 10),
                    ),
                  );
                },
              ),
            ),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          gridData: FlGridData(show: true, drawVerticalLine: false),
          borderData: FlBorderData(
            show: false,
          ),
          ),
        ),

    );
  }
}
