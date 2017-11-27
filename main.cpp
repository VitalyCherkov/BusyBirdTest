#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "models/categorieslistmodel.h"

int main(int argc, char *argv[]) {
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QVector <ServiceCategory> categories;
    for(int i = 0; i < 10; i++)
        categories.push_back(ServiceCategory(i, QString("Category %1").arg(i)));

    qmlRegisterType <CategoriesListModel> ("test", 1, 0, "CategoriesList");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
