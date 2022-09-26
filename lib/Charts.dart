import 'dart:math';

import 'package:flutter/material.dart';

class DataItem {
  final double value;
  final String label;
  final Color color;
  DataItem(this.value, this.label, this.color);
}

class Charts extends StatelessWidget {
  Charts({Key? key}) : super(key: key);

  final List<DataItem> dataset = [
    DataItem(0.2, 'Token', Colors.red),
    DataItem(0.25, 'Token', Colors.brown),
    DataItem(0.3, 'Token', Colors.green),
    DataItem(0.05, 'Token', Colors.lime),
    DataItem(0.2, 'Token', Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    return DonutChartWidget(dataset);
  }
}

final linePaint = Paint()
  ..color = Colors.white
  ..strokeWidth = 2.0
  ..style = PaintingStyle.stroke;

class DonutChartWidget extends StatefulWidget {
  final List<DataItem> dataset;
  const DonutChartWidget(this.dataset);

  @override
  State<DonutChartWidget> createState() => _DonutChartWidgetState();
}

class _DonutChartWidgetState extends State<DonutChartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: DonutChartPainter(widget.dataset),
        child: Container(),
      ),
    );
  }
}

class DonutChartPainter extends CustomPainter {
  final List<DataItem> dataset;
  DonutChartPainter(this.dataset);
  @override
  void paint(Canvas canvas, Size size) {
    final c = Offset(size.width / 2.0, size.height / 2.0);
    final radius = size.width * 0.9;
    final rect = Rect.fromCenter(center: c, width: radius, height: radius);
    var startAngle = 0.0;
    for (var di in dataset) {
      double sweepAngle = drawSectors(di, canvas, rect, startAngle);
      //draw lines
      drawLine(radius, startAngle, c, canvas);

      startAngle += sweepAngle;
      print('${di.label} ${di.value}');
    }
  }

  void drawLine(double radius, double startAngle, Offset c, Canvas canvas) {
    final dx = radius / 2.0 * cos(startAngle);
    final dy = radius / 2.0 * sin(startAngle);
    final p2 = c + Offset(dx, dy);
    canvas.drawLine(c, p2, linePaint);
  }

  double drawSectors(DataItem di, Canvas canvas, Rect rect, double startAngle) {
    final sweepAngle = di.value * 360 * pi / 100.0;
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = di.color;
    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
    return sweepAngle;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
