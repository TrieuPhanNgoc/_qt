import QtQuick 2.15

Item {
    id: root
    property color _color: "gray"
    property string _text: "title"

    width: 100
    height: 100

    Rectangle {
        id: rec_shape
        color: root._color
        anchors.fill: parent

        Text {
            text: root._text
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            drag.target: root.parent        // access from Item parent
            onPressed: root.z++
        }
    }
}



