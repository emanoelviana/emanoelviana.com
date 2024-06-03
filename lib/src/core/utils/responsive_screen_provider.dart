import 'package:flutter/material.dart';

class ResponsiveScreenProvider {
  static bool isSmallMobileDevice(BuildContext context) {
    return MediaQuery.of(context).size.width < 360;
  }

  static bool isLargeMobileDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 360 &&
        MediaQuery.of(context).size.width < 680;
  }

  static bool isSmallTableDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 680 &&
        MediaQuery.of(context).size.width < 768;
  }

  static bool isLargeTabletDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 768 &&
        MediaQuery.of(context).size.width < 992;
  }

  static bool isSmallDesktopDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 992 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargeDesktopDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200 &&
        MediaQuery.of(context).size.width < 1440;
  }

  static bool isExtraLargeDesktopDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1400;
  }

  static bool isMobile(BuildContext context) {
    return isSmallMobileDevice(context) || isLargeMobileDevice(context);
  }

  static bool isTabletDevice(BuildContext context) {
    return isSmallTableDevice(context) || isLargeTabletDevice(context);
  }

  static bool isDesktopDevice(BuildContext context) {
    return isSmallDesktopDevice(context) ||
        isLargeDesktopDevice(context) ||
        isExtraLargeDesktopDevice(context);
  }
}
