import 'dart:io';

import 'package:expression_cli/src/constants/command_constants.dart';
import 'package:expression_cli/src/locator.dart';

import 'process_service.dart';

/// Provides functionality to interact with pacakges in Homebrew ecosystem
class BrewService {
  static const String _notAvailable = 'Sorry, package not available!';
  static const String _notInstalled = 'Package sessionmate not installed!';
  static const String _notInstalledMatch = 'Not installed';

  final _processService = locator<ProcessService>();

  /// Returns current `sessionmate` version installed on the system.
  ///
  /// When the package is not installed should return
  /// `Package sessionmate not installed!`
  Future<String> getCurrentVersion() async {
    String version = _notAvailable;
    RegExp regExp = RegExp(r'\b\d+\.\d+\.\d+\b');
    bool isInstalled = true;

    final packageInfo = await _processService.runBrewInfo();

    for (var line in packageInfo) {
      if (line != _notInstalledMatch) continue;

      isInstalled = false;
      break;
    }

    if (!isInstalled) return _notInstalled;

    for (var line in packageInfo.indexed) {
      if (line.$1 == 0) continue;
      if (!line.$2.startsWith('/') || !line.$2.contains(ksExpressionUICli)) {
        continue;
      }

      final matches =
          regExp.allMatches(line.$2).map((m) => m.group(0)).toList();
      version = matches[0]!;
      break;
    }

    return version;
  }

  /// Returns the latest published version of `sessionmate` package.
  Future<String> getLatestVersion() async {
    String version = _notAvailable;
    RegExp regExp = RegExp(r'\b\d+\.\d+\.\d+\b');

    try {
      final info = await _processService.runBrewInfo();
      if (info.isEmpty) return _notAvailable;

      version = regExp.allMatches(info[0]).map((m) => m.group(0)).toList()[0]!;
    } catch (e) {
      stdout.writeln('🔴 Error:${e.toString()}');
    }

    return version;
  }

  /// Checks whether or not has the latest version for `sessionmate` package
  /// installed on the system.
  Future<bool> hasLatestVersion() async {
    final currentVersion = await getCurrentVersion();
    if (currentVersion == _notInstalled) {
      await install();
      return true;
    }

    final latestVersion = await getLatestVersion();
    if (currentVersion == latestVersion) return true;

    return false;
  }

  /// Installs `sessionmate` package on the system.
  Future<void> install() async {
    await _processService.runBrewInstallPackage();
  }

  /// Upgrades `sessionmate` package on the system.
  Future<void> update() async {
    await _processService.runBrewUpgradePackage();
  }
}
