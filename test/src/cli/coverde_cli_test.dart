import 'package:salami_cli/src/cli/cli.dart';
import 'package:test/test.dart';

void main() {
  group('Coverde', () {
    group('.installed', () {
      test('returns false when melos is not installed', () {
        expectLater(Coverde.installed(), completion(true));
      });
    });

    group('.activate', () {
      test('completes normally', () async {
        await expectLater(Coverde.activate(), completes);
      });
    });
  });
}