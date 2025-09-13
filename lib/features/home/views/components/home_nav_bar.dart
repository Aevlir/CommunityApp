import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/core/shared/constants/color/color.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: TestColors.backgroundColor,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.normal),
      selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.normal),
      items: [
        _buildNavItem(iconPath: 'assets/icons/test_home.png', label: 'Home'),
        _buildNavItem(iconPath: 'assets/icons/test_video.png', label: 'Videos'),
        _buildNavItem(iconPath: 'assets/icons/test_plus.png', label: ''),
        _buildNavItem(iconPath: 'assets/icons/test_mail.png', label: 'Message'),
        _buildNavItem(
          iconPath: 'assets/icons/test_sharing.png',
          label: 'Account',
        ),
      ],
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required String iconPath,
    required String label,
  }) {
    if (label.isEmpty) {
      return BottomNavigationBarItem(
        icon: Image.asset(iconPath, width: 50, height: 50, fit: BoxFit.cover),
        label: label,
      );
    }
    return BottomNavigationBarItem(
      icon: Image.asset(iconPath, width: 24, height: 24),
      label: label,
    );
  }
}
