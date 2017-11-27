import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0


ItemDelegate {
    text: label
    width: ListView.view.width
           - ListView.view.leftMargin
           - ListView.view.rightMargin
    height: itemLogo.height
    leftPadding: itemLogo.sideLen + itemLogo.aroundSpacing

    CircledImage {
        id: itemLogo
        imagePath: "qrc:/upload/avatar_128.png"
        sideLen: 74
        aroundSpacing: 5
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: aroundSpacing
    }

    onClicked: searchStackView.push("qrc:/ServicesByCategory.qml", { categoryName: label })
}
