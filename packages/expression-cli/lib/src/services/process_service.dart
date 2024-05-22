import 'dart:convert';
import 'dart:io';

import 'package:expression_cli/src/constants/command_constants.dart';
import 'package:expression_cli/src/locator.dart';

import 'logger_service.dart';

/// Helper service to run Flutter commands
class ProcessService {
  // final _analyticsService = locator<AnalyticsService>();
  final _logger = locator<LoggerService>();

  /// Runs the `dart pub global activate` command in the app's directory
  Future<void> runPubGlobalActivate() async {
    await _runProcess(
      programName: ksDart,
      arguments: pubGlobalActivateArguments,
    );
  }

  /// Runs the `dart pub global list` command and returns a list of strings
  /// representing packages with their version.
  Future<List<String>> runPubGlobalList() async {
    final output = <String>[];
    await _runProcess(
      programName: ksDart,
      arguments: pubGlobalListArguments,
      verbose: false,
      handleOutput: (lines) async => output.addAll(lines),
    );

    return output;
  }

  /// Runs `brew info sessionmate` command and returns a list of strings
  /// representing packages with their version.
  Future<List<String>> runBrewInfo() async {
    final output = <String>[];
    await _runProcess(
      programName: 'brew',
      arguments: ['info', 'sessionmate'],
      verbose: false,
      handleOutput: (lines) async => output.addAll(lines),
    );

    return output;
  }

  /// Runs `brew install filledstacks/tap/sessionmate` to install sessionmate
  /// package on the system through Homebrew.
  Future<void> runBrewInstallPackage() async {
    await _runProcess(
      programName: 'brew',
      arguments: ['install', 'filledstacks/tap/sessionmate'],
      verbose: false,
    );
  }

  /// Runs `brew upgrade filledstacks/tap/sessionmate` to upgrade sessionmate
  /// package on the system through Homebrew.
  Future<void> runBrewUpgradePackage() async {
    await _runProcess(
      programName: 'brew',
      arguments: ['upgrade', 'filledstacks/tap/sessionmate'],
      verbose: false,
    );
  }

  /// Runs a process and logs the output to the console when [verbose] is true.
  ///
  /// Args:
  ///   programName (String): The name of the program to run.
  ///   arguments (List<String>): The arguments to pass to the program. Defaults to const []
  ///   workingDirectory (String): The directory to run the command in.
  ///   verbose (bool): Determine when to log the output to the console.
  ///   handleOutput (Function): Function passed to handle the output.
  Future<void> _runProcess({
    required String programName,
    List<String> arguments = const [],
    String? workingDirectory,
    bool verbose = true,
    Future<void> Function(List<String> lines)? handleOutput,
  }) async {
    if (verbose) {
      final hasWorkingDirectory = workingDirectory != null;
      _logger.sessionMateOutput(
        message:
            'Running $programName ${arguments.join(' ')} ${hasWorkingDirectory ? 'in $workingDirectory/' : ''}...',
      );
    }

    try {
      final process = await Process.start(
        programName,
        arguments,
        workingDirectory: workingDirectory,
        runInShell: true,
      );

      final lines = <String>[];
      final lineSplitter = LineSplitter();
      await process.stdout.transform(utf8.decoder).forEach((output) {
        if (verbose) _logger.flutterOutput(message: output);

        if (handleOutput != null) {
          lines.addAll(lineSplitter
              .convert(output)
              .map((l) => l.trim())
              .where((l) => l.isNotEmpty)
              .toList());
        }
      });

      await handleOutput?.call(lines);

      final exitCode = await process.exitCode;

      if (verbose) logSuccessStatus(exitCode);
    } on ProcessException catch (e, _) {
      final message =
          'Command failed. Command executed: $programName ${arguments.join(' ')}\nException: ${e.message}';
      _logger.error(message: message);
      // _analyticsService.logExceptionEvent(
      //   runtimeType: e.runtimeType.toString(),
      //   message: message,
      //   stackTrace: s.toString(),
      // );
    } catch (e, _) {
      final message =
          'Command failed. Command executed: $programName ${arguments.join(' ')}\nException: ${e.toString()}';
      _logger.error(message: message);
      // _analyticsService.logExceptionEvent(
      //   runtimeType: e.runtimeType.toString(),
      //   message: message,
      //   stackTrace: s.toString(),
      // );
    }
  }

  /// Logs an error message. If the exit code is 0, logs a success message.
  ///
  /// Args:
  ///   exitCode (int): The exit code of the command.
  ///
  void logSuccessStatus(int exitCode) {
    if (exitCode == 0) {
      _logger.success(
        message: 'Command complete. ExitCode: $exitCode',
      );
      return;
    }

    _logger.error(
      message: 'Command complete. ExitCode: $exitCode',
    );
  }
}
