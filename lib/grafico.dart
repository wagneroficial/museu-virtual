import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GraficoScreen extends StatefulWidget {
  const GraficoScreen({Key? key}) : super(key: key);

  @override
  _GraficoScreenState createState() => _GraficoScreenState();
}

class _GraficoScreenState extends State<GraficoScreen> {
  List<int> notas = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('avaliacoes').get();
      for (var doc in querySnapshot.docs) {
        int? nota = doc['notaApp'];
        if (nota != null) {
          notas.add(nota);
        }
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gráficos de Avaliações'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Notas do Aplicativo',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  _buildBarChart(),
                ],
              ),
            ),
    );
  }
Widget _buildBarChart() {
  return BarChart(
    BarChartData(
      alignment: BarChartAlignment.spaceAround,
      maxY: 5,
      barTouchData: BarTouchData(enabled: false),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (double value, TitleMeta meta) {
              switch (value.toInt()) {
                case 1:
                  return Text('1', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14));
                case 2:
                  return Text('2', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14));
                case 3:
                  return Text('3', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14));
                case 4:
                  return Text('4', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14));
                case 5:
                  return Text('5', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14));
                default:
                  return Text('');
              }
            },
            reservedSize: 22,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: notas
          .map(
            (nota) => BarChartGroupData(
              x: nota,
              barRods: [
                BarChartRodData(
                  toY: 1, 
                  fromY: 1,
                  width: 5,
                ),
              ],
              showingTooltipIndicators: [0],
            ),
          )
          .toList(),
    ),
  );
}
}