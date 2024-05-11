import 'package:car_flutter/manage/user/models/post_user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                      final post = posts[index];
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
                                const SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      post.user?.name ?? '',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 2.0),
                                    Text(
                                      post.user?.description ?? '',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Color(0XFFF19B15),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(
                                thickness: 1, color: Color(0xFFEBEDEF)),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/ic_star.svg'),
                                const SizedBox(width: 4.0),
                                Text(
                                  '${post.user?.rating ?? 0.0}',
                                  style: const TextStyle(fontSize: 14.0),
                                ),
                                const SizedBox(width: 4.0),
                                Text('(${post.user?.review ?? 0} like)',
                                    style: const TextStyle(fontSize: 14.0)),
                                const SizedBox(
                                  width: 45.0,
                                ),
                                SvgPicture.asset('assets/icons/ic_map_pin.svg'),
                                const SizedBox(width: 4.0),
                                Text(post.user?.location?.city ?? '')
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
