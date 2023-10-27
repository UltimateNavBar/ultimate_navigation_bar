import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ultimate_navigation_bar_platform_interface.dart';

/// An implementation of [UltimateNavigationBarPlatform] that uses method channels.
class MethodChannelUltimateNavigationBar extends UltimateNavigationBarPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ultimate_navigation_bar');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
