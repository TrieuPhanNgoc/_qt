import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Using margin
    Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 400
        color: "red"

        Rectangle {
            width: 100
            height: 100
            color: "yellow"

            // No anchor by default
            anchors.margins: 50 // All margins
            anchors.left: parent.left   // Setting anchors for margin with left of parent
            anchors.bottom: parent.bottom   // margin 50 from parent bottom
            anchors.leftMargin: 15
        }
    }
}
