#include "kmp.h"
#include "libnative_api.h"

QString KMP::getName() {
    return libnative_symbols()->kotlin.root.com.keygenqt.shared.user("TEST");
}
