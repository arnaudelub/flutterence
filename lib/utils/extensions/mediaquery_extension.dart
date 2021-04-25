import 'package:flutter/widgets.dart'
    show BuildContext, MediaQuery, MediaQueryData, Orientation;

/// Example: MediaQuery.of(context).isTablet
enum DeviceType { desktop, tablet, phone }

extension MediaQueryExtension on MediaQueryData {
  DeviceType get deviceType {
    if (size.width >= 1500) return DeviceType.desktop;
    if (size.width >= 1000) return DeviceType.tablet;
    return DeviceType.phone;
  }

  bool get isTablet => isSmallTablet || isLargeTablet;

  bool get isPhone => size.shortestSide < 600;

  bool get isSmallTablet => size.shortestSide >= 600;

  bool get isLargeTablet => size.shortestSide >= 720;

  bool get isSmallPhone => size.shortestSide < 380;

  bool get isLandscape => orientation == Orientation.landscape;

  bool get isPortrait => orientation == Orientation.portrait;
}

bool isPhoneType(BuildContext context) {
  return MediaQuery.of(context).deviceType == DeviceType.phone;
}
