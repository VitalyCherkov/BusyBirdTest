import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3

ItemDelegate {

    id: contactMenuItem
    anchors.fill: parent
    height: 56


    Rectangle {
        id: contactLogo
        height: parent.height
        width: height
        anchors.left: parent.left
        anchors.top: parent.top
        color: "transparent"

        function contactSourceToIcon(sourceCode) {
            switch(sourceCode) {
            case "GH": return qsTr("")
            case "YT": return qsTr("")
            case "SMS": return qsTr("")
            case "WEB": return qsTr("")
            case "PH": return qsTr("")
            case "EML": return qsTr("")
            case "VK": return qsTr("")
            case "OK": return qsTr("")
            case "SKP": return qsTr("")
            case "FB": return qsTr("")
            case "TW": return qsTr("")
            case "IN": return qsTr("")
            case "TLG": return qsTr("")
            case "ICQ": return qsTr("")
            case "WTS": return qsTr("")
            case "VIB": return qsTr("")
            default: return qsTr("")
            }
        }

        Label {
            property string contactSource: model.source
            font.pixelSize: 25

            FontLoader {
                id: socialsFont
                source: "qrc:/upload/Socials.ttf"
            }

            font.family: socialsFont.name
            text: socialsFont.status == FontLoader.Ready ? parent.contactSourceToIcon(contactSource) : ""
            anchors.centerIn: parent

        }
    }

    Rectangle {
        id: contactText
        color: "transparent"
        anchors.left: contactLogo.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        height: 56
        Text {
            id: mainText
            //anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 16
            text: model.data
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.bottomMargin: 3
        }
        Text {
            id: subText
            text: model.description
            font.pixelSize: 14
            color: Material.color(Material.Grey)
            anchors.bottom: parent.bottom
            anchors.top: mainText.bottom
            anchors.topMargin: 3
            anchors.bottomMargin:10
        }
    }

}
