import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: shape_00
        width: 100
        height: 100
        color: "orange"

        function update() {
            console.log(x + " x " + y)
            label_00.text = Math.round(x) + " x " + Math.round(y)
        }


        //anchors.centerIn: parent
        x: 100
        y: 100

        // Update the previous value of x and y
        Component.onCompleted: update()
        onXChanged: update()
        onYChanged: update()


        Text {
            id: label_00
            text: qsTr("Text")
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            drag.target: parent
        }
    }
}
