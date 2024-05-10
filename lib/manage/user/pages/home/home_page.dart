import 'package:car_flutter/manage/user/models/post_user_model.dart';
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
            Expanded(
              child: TabBarView(controller: tabController, children: [
                ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                      posts[index].user?.avatar ?? ''),
                                ),
                                const SizedBox(width: 5.0),
                                Column(
                                  children: [
                                    Text(posts[index].user?.name ?? ''),
                                    Text(posts[index].user?.name ?? ''),
                                  ],
                                ),
                                const Divider(
                                    thickness: 1, color: Color(0xFFEBEDEF))
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                          thickness: 6.0, color: Color(0xFFEBEDEF));
                    },
                    itemCount: posts.length),
                Container(
                  color: Colors.red,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
