import 'package:flutter_test/flutter_test.dart';
import 'package:ultimate_navigation_bar/ultimate_navigation_bar.dart';
import 'package:ultimate_navigation_bar/ultimate_navigation_bar_platform_interface.dart';
import 'package:ultimate_navigation_bar/ultimate_navigation_bar_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUltimateNavigationBarPlatform
    with MockPlatformInterfaceMixin
    implements UltimateNavigationBarPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UltimateNavigationBarPlatform initialPlatform = UltimateNavigationBarPlatform.instance;

  test('$MethodChannelUltimateNavigationBar is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUltimateNavigationBar>());
  });

  test('getPlatformVersion', () async {
    UltimateNavigationBar ultimateNavigationBarPlugin = UltimateNavigationBar();
    MockUltimateNavigationBarPlatform fakePlatform = MockUltimateNavigationBarPlatform();
    UltimateNavigationBarPlatform.instance = fakePlatform;

    expect(await ultimateNavigationBarPlugin.getPlatformVersion(), '42');
  });
}
