#ifndef KONAN_LIBNATIVE_H
#define KONAN_LIBNATIVE_H
#ifdef __cplusplus
extern "C" {
#endif
#ifdef __cplusplus
typedef bool            libnative_KBoolean;
#else
typedef _Bool           libnative_KBoolean;
#endif
typedef unsigned short     libnative_KChar;
typedef signed char        libnative_KByte;
typedef short              libnative_KShort;
typedef int                libnative_KInt;
typedef long long          libnative_KLong;
typedef unsigned char      libnative_KUByte;
typedef unsigned short     libnative_KUShort;
typedef unsigned int       libnative_KUInt;
typedef unsigned long long libnative_KULong;
typedef float              libnative_KFloat;
typedef double             libnative_KDouble;
typedef float __attribute__ ((__vector_size__ (16))) libnative_KVector128;
typedef void*              libnative_KNativePtr;
struct libnative_KType;
typedef struct libnative_KType libnative_KType;

typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Byte;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Short;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Int;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Long;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Float;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Double;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Char;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Boolean;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_Unit;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_UByte;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_UShort;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_UInt;
typedef struct {
  libnative_KNativePtr pinned;
} libnative_kref_kotlin_ULong;


typedef struct {
  /* Service functions. */
  void (*DisposeStablePointer)(libnative_KNativePtr ptr);
  void (*DisposeString)(const char* string);
  libnative_KBoolean (*IsInstance)(libnative_KNativePtr ref, const libnative_KType* type);
  libnative_kref_kotlin_Byte (*createNullableByte)(libnative_KByte);
  libnative_KByte (*getNonNullValueOfByte)(libnative_kref_kotlin_Byte);
  libnative_kref_kotlin_Short (*createNullableShort)(libnative_KShort);
  libnative_KShort (*getNonNullValueOfShort)(libnative_kref_kotlin_Short);
  libnative_kref_kotlin_Int (*createNullableInt)(libnative_KInt);
  libnative_KInt (*getNonNullValueOfInt)(libnative_kref_kotlin_Int);
  libnative_kref_kotlin_Long (*createNullableLong)(libnative_KLong);
  libnative_KLong (*getNonNullValueOfLong)(libnative_kref_kotlin_Long);
  libnative_kref_kotlin_Float (*createNullableFloat)(libnative_KFloat);
  libnative_KFloat (*getNonNullValueOfFloat)(libnative_kref_kotlin_Float);
  libnative_kref_kotlin_Double (*createNullableDouble)(libnative_KDouble);
  libnative_KDouble (*getNonNullValueOfDouble)(libnative_kref_kotlin_Double);
  libnative_kref_kotlin_Char (*createNullableChar)(libnative_KChar);
  libnative_KChar (*getNonNullValueOfChar)(libnative_kref_kotlin_Char);
  libnative_kref_kotlin_Boolean (*createNullableBoolean)(libnative_KBoolean);
  libnative_KBoolean (*getNonNullValueOfBoolean)(libnative_kref_kotlin_Boolean);
  libnative_kref_kotlin_Unit (*createNullableUnit)(void);
  libnative_kref_kotlin_UByte (*createNullableUByte)(libnative_KUByte);
  libnative_KUByte (*getNonNullValueOfUByte)(libnative_kref_kotlin_UByte);
  libnative_kref_kotlin_UShort (*createNullableUShort)(libnative_KUShort);
  libnative_KUShort (*getNonNullValueOfUShort)(libnative_kref_kotlin_UShort);
  libnative_kref_kotlin_UInt (*createNullableUInt)(libnative_KUInt);
  libnative_KUInt (*getNonNullValueOfUInt)(libnative_kref_kotlin_UInt);
  libnative_kref_kotlin_ULong (*createNullableULong)(libnative_KULong);
  libnative_KULong (*getNonNullValueOfULong)(libnative_kref_kotlin_ULong);

  /* User functions. */
  struct {
    struct {
      struct {
        struct {
          struct {
            const char* (*user)(const char* name);
          } shared;
        } keygenqt;
      } com;
    } root;
  } kotlin;
} libnative_ExportedSymbols;
extern libnative_ExportedSymbols* libnative_symbols(void);
#ifdef __cplusplus
}  /* extern "C" */
#endif
#endif  /* KONAN_LIBNATIVE_H */
