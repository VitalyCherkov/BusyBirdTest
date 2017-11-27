import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3

Page {
    header: HeaderToolBar {
        ToolButton {
            text: qsTr("")
            font.pixelSize: 25
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            onClicked: searchStackView.pop()
        }

        pageTitle: qsTr("Фильтры")
    }

    ColumnLayout {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 10
        anchors.topMargin: 10
        anchors.bottomMargin: 10

        ListModel {
            id: serviceFilterParameters

            function actions(index) {
                if(index === 1)
                    searchStackView.push("qrc:/ServicesSortingPage.qml")
            }


            ListElement {
                index: 1
                title: qsTr("Сортировка")
                type: ""
                controller: qsTr("")
            }
            ListElement {
                index: 2
                title: qsTr("Город")
                type: ""
                controller: qsTr("")
            }
            ListElement {
                index: 3
                title: qsTr("Район")
                type: ""
                controller: qsTr("")
            }
            ListElement {
                title: qsTr("Работает сейчас")
                type: "S"
            }
        }

        SettingsContainer {
            buttonListModel: serviceFilterParameters
        }
    }
}
