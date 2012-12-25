TARGET  = qtraw
TEMPLATE = lib
CONFIG += \
    link_pkgconfig \
    plugin
DESTDIR = imageformats

PKGCONFIG += \
    libraw

HEADERS += \
    datastream.h \
    raw-io-handler.h
SOURCES += \
    datastream.cpp \
    main.cpp \
    raw-io-handler.cpp

target.path += $$[QT_INSTALL_PLUGINS]/imageformats
INSTALLS += target
