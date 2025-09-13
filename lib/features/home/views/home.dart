import 'package:flutter/material.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/widgets/test_sub_layout.dart';
import 'package:test/features/home/model/post_model/post_model.dart';
import 'package:test/features/home/views/components/featured/featured_news.dart';
import 'package:test/features/home/views/components/home_nav_bar.dart';
import 'package:test/features/home/views/components/posts/post_widget.dart';
import 'package:test/features/home/views/components/home_search.dart';
import 'package:test/features/home/views/components/home_tab_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TestSubLayout(
      horizontalPadding: 0,
      isTopSafe: true,
      isBottomSafe: false,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: TestColors.homeBgColor,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const HomeSearch(),
            HomeTabBar(tabController: _tabController),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      spacing: 20,
                      children: [
                        const FeaturedNewsWidget(),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: PostModel.samplePosts.length,
                          itemBuilder: (context, index) {
                            final post = PostModel.samplePosts[index];
                            return PostWidget(postData: post);
                          },
                        ),
                      ],
                    ),
                  ),
                  const Center(child: Text('News content')),
                  const Center(child: Text('Public Service content')),
                  const Center(child: Text('Community content')),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const HomeNavBar(),
      ),
    );
  }
}
