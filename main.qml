import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

import "code.js" as Code

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 133
        height: 92
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: label
            text: qsTr("0")
            font.pointSize: 30
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: button
            text: qsTr("Click me")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: label.text = Code.random()
        }
    }

}
