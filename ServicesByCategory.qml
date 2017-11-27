import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

Page {
    id: servicesByCategory

    property string categoryName

    header: HeaderToolBar {

        ToolButton {
            text: qsTr("")
            font.pixelSize: 25
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            onClicked: searchStackView.pop()
        }

        pageTitle: categoryName

        ToolButton {
            text: qsTr("")
            font.pixelSize: 25
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter

            onClicked: searchStackView.push("qrc:/ServicesFilters.qml")
        }
    }

    ListModel {
        id: servicesShortModel

        ListElement {
            label: "Название 1"
            provider: "ООО \"Компания 1\""
            rateing: 4.4
            lowCost: 600
            highCost: 5000
        }
        ListElement {
            label: "Название 2"
            provider: "ООО \"Компания 2\""
            rateing: 4.4
            lowCost: 600
            highCost: 5000
        }
        ListElement {
            label: "Название 3"
            provider: "ООО \"Компания 3\""
            rateing: 4.4
            lowCost: 600
            highCost: 5000
        }
    }

    ListView {
        id: servicesByCategoryListView
        anchors.fill: parent
        model: servicesShortModel
        topMargin: 10
        bottomMargin: 10
        spacing: 10

        delegate: ServiceShortDelegate {
            id: serviceShortItem
        }
    }
}
