part of 'cli.dart';

/// Melos CLI
class Melos {
  /// Determine whether melos is installed.
  static Future<bool> installed() async {
    try {
      await _Cmd.run('melos', ['--help']);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Install melos (`dart pub global activate melos`).
  static Future<void> activate({
    String cwd = '.',
    bool recursive = false,
  }) async {
    await _runCommand(
      cmd: (cwd) async {
        await _Cmd.run(
          'dart',
          ['pub', 'global', 'activate', 'melos'],
          workingDirectory: cwd,
        );
      },
      cwd: cwd,
      recursive: recursive,
    );
  }
}
