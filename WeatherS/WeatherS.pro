QT += qml quick positioning

CONFIG += c++11 \
plugin

SOURCES += main.cpp
#LIBS        =        -lmingw32 -LD:\QtCreator\5.8\mingw53_32\lib D:\QtCreator\5.8\mingw53_32\lib\libqtmain.a -LC:\utils\my_sql\my_sql\lib -LC:\utils\postgresql\pgsql\lib -lshell32 D:\QtCreator\5.8\mingw53_32\lib\libQt5Quick.a D:\QtCreator\5.8\mingw53_32\lib\libQt5Gui.a D:\QtCreator\5.8\mingw53_32\lib\libQt5Qml.a D:\QtCreator\5.8\mingw53_32\lib\libQt5Network.a D:\QtCreator\5.8\mingw53_32\lib\libQt5Positioning.a D:\QtCreator\5.8\mingw53_32\lib\libQt5Core.a release\weatherS_res.o
#INCLUDEPATH += D:/Qt/Static/5.8.0/include
RESOURCES += qml.qrc \
    images.qrc
win32:RC_FILE = weatherS.rc
#QMAKE_LFLAGS_RELEASE += -Wl,-s -release -Wl,-subsystem,windows -mthreads

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS +=
