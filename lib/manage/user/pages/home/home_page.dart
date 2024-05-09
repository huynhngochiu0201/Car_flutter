import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            Container(
              height: 60.0,
              padding: const EdgeInsets.all(6.0),
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xFFEBEDEF)),
              child: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      22.0,
                    ),
                    color: const Color(0XFFFC6011)),
                labelColor: Colors.white,
                tabs: const [
                  Tab(
                    text: 'All Shop',
                  ),
                  Tab(text: 'Map'),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            const Divider(thickness: 6, color: Color(0xFFEBEDEF)),
          ],
        ),
      ),
    );
  }
}
