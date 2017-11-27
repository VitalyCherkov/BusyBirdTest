QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    models/contactsource.cpp \
    models/contact.cpp \
    models/review.cpp \
    models/contactsourceslistmodel.cpp \
    models/userinterface.cpp \
    models/company.cpp \
    models/legalinformation.cpp \
    models/companyservice.cpp \
    models/client.cpp \
    models/servicecategory.cpp \
    models/categorieslistmodel.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    models/contactsource.h \
    models/contact.h \
    models/review.h \
    models/contactsourceslistmodel.h \
    models/userinterface.h \
    models/company.h \
    models/legalinformation.h \
    models/companyservice.h \
    models/client.h \
    models/servicecategory.h \
    models/categorieslistmodel.h

DISTFILES += \
    upload/47080.png \
    upload/avatar_128.png \
    upload/avatar_256.png \
    upload/avatar_64.png \
    upload/logo.png \
    upload/search-ico.png \
    upload/footer-bar/burn.svg \
    upload/footer-bar/notifications.svg \
    upload/footer-bar/searching.svg \
    upload/footer-bar/user.svg \
    upload/footer-bar/work.svg \
    qtquickcontrols2.conf \
    Categories.qml \
    CircledContactDelegate.qml \
    FooterToolBar.qml \
    HeaderToolBar.qml \
    main.qml \
    StartPage.qml
