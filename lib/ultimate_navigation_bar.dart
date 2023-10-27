
import 'ultimate_navigation_bar_platform_interface.dart';

class UltimateNavigationBar {
  Future<String?> getPlatformVersion() {
    return UltimateNavigationBarPlatform.instance.getPlatformVersion();
  }
}
