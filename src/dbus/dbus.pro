TEMPLATE = lib
CONFIG = qt plugin
QT += declarative dbus

TARGET = hildondbus

INCLUDEPATH += ../components

HEADERS += \
    ../components/qdeclarativeconnections_p.h \
    dbusadaptor_p.h \
    dbusconnections_p.h \
    dbusmessage_p.h \
    dbusutils_p.h \
    qdbusutil_p.h \
    plugin_p.h \

SOURCES += \
    dbusadaptor.cpp \
    dbusconnections.cpp \
    dbusmessage.cpp \
    dbusutils.cpp \
    plugin.cpp

qdeclarativesources.files += \
    qml/qmldir

qdeclarativesources.path = /opt/lib/qt4/imports/org/hildon/dbus
target.path = /opt/lib/qt4/imports/org/hildon/dbus

INSTALLS += qdeclarativesources target
