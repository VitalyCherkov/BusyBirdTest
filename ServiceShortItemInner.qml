import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

ItemDelegate {
    property string label
    property string sublabel
    property real spaceing: 10

    anchors.fill: parent
    padding: spaceing
    height: Math.max(
                serviceShortInfo.height,
                serviceShortLogo.height + aroundSpacing * 2
                )
    
    Image {
        id: serviceShortLogo
        source: "qrc:/upload/avatar_128.png"
        width: 128
        height: 128
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.margins: spaceing
    }
    
    Rectangle {
        id: serviceShortInfo
        
        anchors.fill: parent
        anchors.leftMargin: serviceShortLogo.width + spaceing * 2
        
        color: "transparent"
        
        Rectangle {
            id: serviceShortLabel
            
            color: "transparent"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: 20
            anchors.margins: spaceing
            
            Label {
                text: label
                font.pixelSize: 20
            }
        }
        
        Rectangle {
            id: serviceShortProvider
            color: "transparent"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: serviceShortLabel.bottom
            anchors.margins: spaceing
            height: 16
            
            Label {
                text: sublabel
                font.pixelSize: 16
                color: "#424242"
            }
        }
    }
}
