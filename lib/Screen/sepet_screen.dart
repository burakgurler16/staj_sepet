import 'package:flutter/material.dart';

class SepetScreen extends StatefulWidget {
  const SepetScreen({Key? key}) : super(key: key);

  @override
  State<SepetScreen> createState() => _SepetScreenState();
}

class _SepetScreenState extends State<SepetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              pageTitle(context),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Card(
                      margin: ProjectMargins.cardMargin,
                      child: const SizedBox(
                        height: 100,
                        width: 300,
                        child: Center(child: Text('Ali')),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text pageTitle(BuildContext context) {
    return Text(
      'SEPETİM',
      style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}
