import 'individual_bar.dart';

class GraphData {
  final double sunAmount;
  final double monAmount;
  final double wedAmount;
  final double thuAmount;
  final double friAmount;
  final double satAmount;

  GraphData(
      {required this.sunAmount,
      required this.monAmount,
      required this.wedAmount,
      required this.thuAmount,
      required this.friAmount,
      required this.satAmount});

   List<IndividualBar> graphData = [];

   void initGraphData (){
     graphData = [
       IndividualBar(x: 0, y: sunAmount),
       IndividualBar(x: 0, y: monAmount),
       IndividualBar(x: 0, y: wedAmount),
       IndividualBar(x: 0, y: thuAmount),
       IndividualBar(x: 0, y: friAmount),
       IndividualBar(x: 0, y: satAmount),
     ];
   }
}
