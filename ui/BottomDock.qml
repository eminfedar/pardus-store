import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtQuick.Controls.Material 2.0

Rectangle {
    width: parent.width * 20 / 21
    height: parent.height / 15
    z: 89
    anchors  {
        bottom: parent.bottom
        right: parent.right
    }

    //Material.elevation: 3
    color: "transparent"
    property alias pageIndicator: indicator




    PageIndicator {
        id: indicator
        interactive: false
        visible: stackView.depth > 1
        count: stackView.depth
        currentIndex: stackView.depth -1
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

    }
}
