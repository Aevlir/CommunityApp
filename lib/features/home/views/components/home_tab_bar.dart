import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/core/shared/constants/color/color.dart';
import 'package:test/core/shared/constants/number.dart/size.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key, required TabController? tabController})
    : _tabController = tabController;

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: TestAppSizes.paddingMd,
      ),
      controller: _tabController,
      isScrollable: true,
      indicatorColor: TestColors.primaryColor,
      labelColor: TestColors.primaryColor,
      unselectedLabelColor: TestColors.infoColor,
      labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
      unselectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.normal),
      tabs: [
        const HomeTab(
          tabLabel: 'For You',
          iconPath: 'assets/icons/test_trending.png',
        ),
        const HomeTab(tabLabel: 'News', iconPath: 'assets/icons/test_news.png'),
        const HomeTab(
          tabLabel: 'Public Service',
          iconPath: 'assets/icons/test_public.png',
        ),
        const HomeTab(
          tabLabel: 'Community',
          iconPath: 'assets/icons/test_community.png',
        ),
      ],
      indicatorAnimation: TabIndicatorAnimation.elastic,
      enableFeedback: false,
      dividerHeight: 1,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 0.01,
    );
  }
}

class HomeTab extends StatelessWidget {
  final String tabLabel;
  final String iconPath;

  const HomeTab({super.key, required this.tabLabel, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        spacing: TestAppSizes.paddingSm,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(iconPath, width: 24, height: 24),
          Text(tabLabel),
        ],
      ),
    );
  }
}
