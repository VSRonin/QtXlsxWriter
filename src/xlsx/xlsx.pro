include($$PWD/qtxlsx.pri)

load(qt_build_config)
TARGET = QtXlsx
load(qt_module)
QMAKE_DOCS = $$PWD/doc/qtxlsx.qdocconf

#Define this macro if you want to run tests, so more AIPs will get exported.
#DEFINES += XLSX_TEST

QMAKE_TARGET_COMPANY = "Debao Zhang"
QMAKE_TARGET_COPYRIGHT = "Copyright (C) 2013-2014 Debao Zhang <hello@debao.me>"
QMAKE_TARGET_DESCRIPTION = ".Xlsx file wirter for Qt5"

