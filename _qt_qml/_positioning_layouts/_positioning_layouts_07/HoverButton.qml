import QtQuick 2.15

Item {
    id: root
    property color _color: "red"
    property color _hoverColor: "pink"
    property color _clickColor: "orange"
    property color _textColor: "white"
    property color _textHover: "black"
    property alias _title: display
    property alias _are: mouse_area

    Rectangle {
        height: root.height
        width: root.width
        color: root._color
        clip: true

        Text {
            id: display
            text: ""
            anchors.centerIn: parent
            color: root._textColor
            font.bold: true
        }

        MouseArea {
            id: mouse_area
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                parent.color = root._hoverColor
                display.color = root._textHover
            }

            onExited: {
                parent.color = root._color
                display.color = root._textColor
            }

            onPressed: {
                parent.color = root._clickColor
            }

            onReleased: {
                parent.color = root._color
            }

        }
    }
}
