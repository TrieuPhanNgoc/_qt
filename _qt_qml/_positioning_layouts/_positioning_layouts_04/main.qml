import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        color: "pink"
        width: 300
        height: 400
        anchors.centerIn: parent

        // Cliping the shape (for not overwrite the shape to parent shapes
        // or just making the shape inside the parent
        clip: true

        // The way using Flow
        Flow {
            anchors.centerIn: parent
            spacing: 5

            // flow: Flow.TopToBottom
            flow: Flow.LeftToRight      // same as Row

            MyShape {
                id: shape_00
            }

            MyShape {
                id: shape_01
                color: "green"
            }

            MyShape {
                id: shape_02
                color: "black"
            }
        }

    }
}
