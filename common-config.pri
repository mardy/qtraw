PROJECT_NAME = qtraw
PROJECT_VERSION = 1.0

TOP_SRC_DIR = $$PWD
TOP_BUILD_DIR = $${TOP_SRC_DIR}/$(BUILD_DIR)

INSTALL_PREFIX = /usr

isEmpty(PREFIX) {
    message("====")
    message("==== NOTE: To override the installation path run: `qmake PREFIX=/custom/path'")
    message("==== (current installation path is `$${INSTALL_PREFIX}')")
} else {
    INSTALL_PREFIX = $${PREFIX}
    message("====")
    message("==== install prefix set to `$${INSTALL_PREFIX}'")
}


INSTALL_LIBDIR = $${INSTALL_PREFIX}/lib

# default library directory can be overriden by defining LIBDIR when
# running qmake
isEmpty(LIBDIR) {
    message("====")
    message("==== NOTE: To override the library installation path run: `qmake LIBDIR=/custom/path'")
    message("==== (current installation path is `$${INSTALL_LIBDIR}')")
} else {
    INSTALL_LIBDIR = $${LIBDIR}
    message("====")
    message("==== library install path set to `$${INSTALL_LIBDIR}'")
}


INSTALL_KDEDIR = $${PREFIX}

isEmpty(KDEDIR) {
    message("====")
    message("==== NOTE: To override the KDE installation path run: `qmake KDEDIR=/custom/path'")
    message("==== (current installation path is `$${INSTALL_KDEDIR}')")
} else {
    INSTALL_KDEDIR = $${KDEDIR}
    message("====")
    message("==== KDE install path set to `$${INSTALL_KDEDIR}'")
}
