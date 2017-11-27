import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

Pane {

    property int aroundSpacing: 10

    id: serviceShortItem
    width: parent.width
    height: serviceShortItemInner.height + serviceShortItemInner.anchors.margins * 2
    padding: 0
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.margins: aroundSpacing
    Material.elevation: 1

    ServiceShortItemInner {
        id: serviceShortItemInner
        label: model.label
        sublabel: model.provider
        spaceing: aroundSpacing
    }
}
