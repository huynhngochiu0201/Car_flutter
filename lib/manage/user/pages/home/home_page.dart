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
  int pageViewindex = 0;

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
                                      post.user?.slogan ?? '',
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
                                Text('(${post.user?.review ?? 0} likes)',
                                    style: const TextStyle(fontSize: 14.0)),
                                const SizedBox(
                                  width: 45.0,
                                ),
                                SvgPicture.asset('assets/icons/ic_map_pin.svg'),
                                const SizedBox(width: 4.0),
                                Text(post.user?.location?.city ?? ''),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Text(post.description ?? ''),
                            const SizedBox(height: 10.0),
                            SizedBox(
                              height: 128,
                              child: Stack(
                                children: [
                                  PageView(
                                    onPageChanged: (value) {
                                      setState(() {
                                        post.current = value;
                                      });
                                    },
                                    children: [
                                      ...List.generate(post.image?.length ?? 0,
                                          (index) {
                                        return Stack(
                                          children: [
                                            ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: Image.asset(
                                                  post.image?[index] ?? '',
                                                  width: double.infinity,
                                                  fit: BoxFit.cover,
                                                )),
                                          ],
                                        );
                                      }),
                                    ],
                                  ),
                                  if ((post.image?.length ?? 0) > 1)
                                    Positioned(
                                      bottom: 6,
                                      right: 9,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9.0),
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        child: Text(
                                          '${post.current + 1}/${post.image?.length ?? 0}',
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10.0),
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
