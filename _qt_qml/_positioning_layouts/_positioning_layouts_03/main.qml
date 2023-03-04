import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        // anchors.centerIn: parent:
        x: 10
        y: 40
        spacing: 2

        MyShape { color: "red" }
        MyShape { color: "green" }
        MyShape { color: "yellow" }
    }

    Row {
        x: 10
        y: 10
        spacing: 2

        MyShape { color: "red" }
        MyShape { color: "green" }
        MyShape { color: "yellow" }
    }

    Grid {
        // anchors.centerIn: parent
        x: 150
        y: 10
        spacing: 2
        MyShape { color: "red" }
        MyShape { color: "green" }
        MyShape { color: "blue" }
        MyShape { color: "yellow" }
        MyShape { color: "black" }
        MyShape { color: "brown" }
        MyShape { color: "teal" }
        MyShape { color: "orange" }
        MyShape { color: "gray" }
    }

    Grid {
        anchors.centerIn: parent
        x: 70
        y: 10
        spacing: 2 // The white space between 2 or more shapes
        rows: 3 // We can increase the value
        columns: 3 // We can increase the value
        MyShape { color: "red" }
        MyShape { color: "green" }
        MyShape { color: "blue" }
        MyShape { color: "yellow" }
        MyShape { color: "black" }
        MyShape { color: "brown" }
        MyShape { color: "teal" }
        MyShape { color: "orange" }
        MyShape { color: "gray" }
    }
}
