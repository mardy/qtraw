include(../common-config.pri)

TARGET = qtraw-test

QT += \
    testlib

SOURCES += \
    qtraw-test.cpp

HEADERS += \
    qtraw-test.h

check.commands = "QT_PLUGIN_PATH=$${TOP_BUILD_DIR}/src ./qtraw-test"
check.depends = qtraw-test
QMAKE_EXTRA_TARGETS += check
