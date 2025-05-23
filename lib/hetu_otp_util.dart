import 'dart:io';

import 'package:hetu_script/hetu/hetu.dart';
import 'package:path/path.dart';

abstract class HetuOtpUtilLoader {
  static Future<void> loadBytecodePureDart(
    Hetu hetu,
    String packagePath,
  ) async {
    final byteCodeFile = File(join(packagePath, 'lib/assets/bytecode/otp_util.out'));
    final byteCode = await byteCodeFile.readAsBytes();

    hetu.loadBytecode(bytes: byteCode, moduleName: 'otp_util');
  }

  static Future<void> loadBytecodeFlutter(Hetu hetu) async {
    final byteCodeFile = File('packages/hetu_otp_utl/assets/bytecode/otp_util.out');
    final byteCode = await byteCodeFile.readAsBytes();

    hetu.loadBytecode(bytes: byteCode, moduleName: 'otp_util');
  }
}
