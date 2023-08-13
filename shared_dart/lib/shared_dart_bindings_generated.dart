// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// KMP dynamic library
class Shared {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  Shared(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  Shared.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<libnative_ExportedSymbols> libnative_symbols() {
    return _libnative_symbols();
  }

  late final _libnative_symbolsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<libnative_ExportedSymbols>
              Function()>>('libnative_symbols');
  late final _libnative_symbols = _libnative_symbolsPtr
      .asFunction<ffi.Pointer<libnative_ExportedSymbols> Function()>();
}

final class libnative_KType extends ffi.Opaque {}

final class libnative_kref_kotlin_Byte extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

typedef libnative_KNativePtr = ffi.Pointer<ffi.Void>;

final class libnative_kref_kotlin_Short extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_Int extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_Long extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_Float extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_Double extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_Char extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_Boolean extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_Unit extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_UByte extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_UShort extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_UInt extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_kref_kotlin_ULong extends ffi.Struct {
  external libnative_KNativePtr pinned;
}

final class libnative_ExportedSymbols extends ffi.Struct {
  external ffi.Pointer<
          ffi.NativeFunction<ffi.Void Function(libnative_KNativePtr ptr)>>
      DisposeStablePointer;

  external ffi.Pointer<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char> string)>>
      DisposeString;

  external ffi.Pointer<
          ffi.NativeFunction<
              ffi.Bool Function(
                  libnative_KNativePtr ref, ffi.Pointer<libnative_KType> type)>>
      IsInstance;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_Byte Function(libnative_KByte)>>
      createNullableByte;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KByte Function(libnative_kref_kotlin_Byte)>>
      getNonNullValueOfByte;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_Short Function(libnative_KShort)>>
      createNullableShort;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KShort Function(libnative_kref_kotlin_Short)>>
      getNonNullValueOfShort;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_Int Function(libnative_KInt)>>
      createNullableInt;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KInt Function(libnative_kref_kotlin_Int)>>
      getNonNullValueOfInt;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_Long Function(libnative_KLong)>>
      createNullableLong;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KLong Function(libnative_kref_kotlin_Long)>>
      getNonNullValueOfLong;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_Float Function(libnative_KFloat)>>
      createNullableFloat;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KFloat Function(libnative_kref_kotlin_Float)>>
      getNonNullValueOfFloat;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_Double Function(libnative_KDouble)>>
      createNullableDouble;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KDouble Function(libnative_kref_kotlin_Double)>>
      getNonNullValueOfDouble;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_Char Function(libnative_KChar)>>
      createNullableChar;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KChar Function(libnative_kref_kotlin_Char)>>
      getNonNullValueOfChar;

  external ffi.Pointer<
          ffi.NativeFunction<libnative_kref_kotlin_Boolean Function(ffi.Bool)>>
      createNullableBoolean;

  external ffi.Pointer<
          ffi.NativeFunction<ffi.Bool Function(libnative_kref_kotlin_Boolean)>>
      getNonNullValueOfBoolean;

  external ffi
          .Pointer<ffi.NativeFunction<libnative_kref_kotlin_Unit Function()>>
      createNullableUnit;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_UByte Function(libnative_KUByte)>>
      createNullableUByte;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KUByte Function(libnative_kref_kotlin_UByte)>>
      getNonNullValueOfUByte;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_UShort Function(libnative_KUShort)>>
      createNullableUShort;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KUShort Function(libnative_kref_kotlin_UShort)>>
      getNonNullValueOfUShort;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_UInt Function(libnative_KUInt)>>
      createNullableUInt;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KUInt Function(libnative_kref_kotlin_UInt)>>
      getNonNullValueOfUInt;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_kref_kotlin_ULong Function(libnative_KULong)>>
      createNullableULong;

  external ffi.Pointer<
          ffi.NativeFunction<
              libnative_KULong Function(libnative_kref_kotlin_ULong)>>
      getNonNullValueOfULong;

  external UnnamedStruct1 kotlin;
}

typedef libnative_KByte = ffi.SignedChar;
typedef libnative_KShort = ffi.Short;
typedef libnative_KInt = ffi.Int;
typedef libnative_KLong = ffi.LongLong;
typedef libnative_KFloat = ffi.Float;
typedef libnative_KDouble = ffi.Double;
typedef libnative_KChar = ffi.UnsignedShort;
typedef libnative_KUByte = ffi.UnsignedChar;
typedef libnative_KUShort = ffi.UnsignedShort;
typedef libnative_KUInt = ffi.UnsignedInt;
typedef libnative_KULong = ffi.UnsignedLongLong;

final class UnnamedStruct1 extends ffi.Struct {
  external UnnamedStruct2 root;
}

final class UnnamedStruct2 extends ffi.Struct {
  external UnnamedStruct3 com;
}

final class UnnamedStruct3 extends ffi.Struct {
  external UnnamedStruct4 keygenqt;
}

final class UnnamedStruct4 extends ffi.Struct {
  external UnnamedStruct5 shared;
}

final class UnnamedStruct5 extends ffi.Struct {
  external ffi.Pointer<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char> name)>> user;
}
