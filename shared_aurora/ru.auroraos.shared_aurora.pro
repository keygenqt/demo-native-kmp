TARGET = ru.auroraos.shared_aurora

CONFIG += \
    auroraapp kmp

PKGCONFIG += \

SOURCES += \
    src/kmp.cpp \
    src/main.cpp \

HEADERS += \
    src/kmp.h

DISTFILES += \
    rpm/ru.auroraos.shared_aurora.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

INCLUDEPATH += $$PWD/native
LIBS += -L$$PWD/native/lib -lnative

kmp.files = $$PWD/native/lib
kmp.path = /usr/share/$${TARGET}

INSTALLS += kmp

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.auroraos.shared_aurora.ts \
    translations/ru.auroraos.shared_aurora-ru.ts \
