import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ultimate_navigation_bar_method_channel.dart';

abstract class UltimateNavigationBarPlatform extends PlatformInterface {
  /// Constructs a UltimateNavigationBarPlatform.
  UltimateNavigationBarPlatform() : super(token: _token);

  static final Object _token = Object();

  static UltimateNavigationBarPlatform _instance = MethodChannelUltimateNavigationBar();

  /// The default instance of [UltimateNavigationBarPlatform] to use.
  ///
  /// Defaults to [MethodChannelUltimateNavigationBar].
  static UltimateNavigationBarPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UltimateNavigationBarPlatform] when
  /// they register themselves.
  static set instance(UltimateNavigationBarPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
