import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import test 1.0

Page {
    id: categoryListPage

    header: HeaderToolBar {
        pageTitle: "Категории"
    }

    ListView {
        id: categoryListView
        anchors.fill: parent
        topMargin: 10
        bottomMargin: 10
        spacing: 10
        // model: ["Красота", "Здоровье", "Дом", "Продукты", "Здоровье", "Дом", "Продукты", "Здоровье", "Дом", "Продукты"]
        model: CategoriesList { }

        delegate: CircledContactDelegate { }
    }
}
