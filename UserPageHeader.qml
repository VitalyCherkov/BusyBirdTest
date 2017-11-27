import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ToolBar {
    //pageTitle: "Имечко Фамилия"
    height: 100
    
    CircledImage {
        id: userAvatar
        imagePath: "qrc:/upload/avatar_128.png"
        aroundSpacing: 10
        sideLen: parent.height
        anchors.verticalCenter: parent.verticalCenter
    }
    
    Rectangle {
        anchors.fill: parent
        anchors.leftMargin: userAvatar.width
        anchors.topMargin: 20
        anchors.bottomMargin: 20
        color: "transparent"
        
        Row {
            height: parent.height / 2
            Label {
                id: userName
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr("Имечко Фамилия")
                font.pixelSize: 18
            }
        }
        
        Row {
            height: parent.height / 2
            anchors.bottom: parent.bottom
            Label {
                id: userRateing
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(" 4.5")
                font.pixelSize: 18
            }
        }
    }
    
}
