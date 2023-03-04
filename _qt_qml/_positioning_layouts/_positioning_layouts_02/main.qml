import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int midX: width / 2
    property int midY: height / 2

    MyShape {
        id: shape_00
        color: "red"
        x: midX - (width / 2)
        y: midY - (height / 2) - 30
    }

    MyShape {
        id: shape_01
        color: "green"
        x: midX - (width / 2) - 55
        y: midY - (height / 2) + 30
    }

    MyShape {
        id: shape_02
        color: "Orange"
        x: midX - (width / 2) + 55
        y: midY - (height / 2) + 30
    }
}
