import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as path;

import 'shared_dart_bindings_generated.dart';

var libraryPath = path.join(
  Directory.current.path,
  '..',
  '..',
  'shared_kmp',
  'shared',
  'build',
  'bin',
  'native',
  'releaseShared',
  'libnative.so',
);

final lib = Shared(ffi.DynamicLibrary.open(libraryPath));

typedef FunUser = ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char> name);

Future<String> user(String name) {
  return Future.value(lib
      .libnative_symbols()
      .ref
      .kotlin
      .root
      .com
      .keygenqt
      .shared
      .user
      .asFunction<FunUser>()
      .call(name.toNativeUtf8().cast<ffi.Char>())
      .cast<Utf8>()
      .toDartString());
}
