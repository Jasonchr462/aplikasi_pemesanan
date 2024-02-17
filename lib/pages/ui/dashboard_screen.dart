import 'package:flutter/material.dart';

class DashboardScreeen extends StatefulWidget {
  const DashboardScreeen({super.key});

  @override
  State<DashboardScreeen> createState() => _DashboardScreeenState();
}

class _DashboardScreeenState extends State<DashboardScreeen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
fallbackHeight: 200,
      fallbackWidth: 200,
      //Text center
      child: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
