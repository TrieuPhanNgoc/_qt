import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window_00
    property color bgColor: "#5A6263"
    property color btnColor: "green"
    property color hoverColor: "limegreen"
    property color clickColor: "yellow"
    property int size: 100

    Rectangle {
        id: background
        color: window_00.btnColor
        width: 100
        height: parent.height

        Column {
            id: column
            anchors.fill: parent

            HoverButton {
                width: 100
                height: 50
                _title.text: "Cat"
                _color: window_00.btnColor
                _hoverColor: window_00.hoverColor
                _clickColor: window_00.clickColor
                _are.onPressed: image_00.source = "qrc:/images/cat.jpg"
            }

            HoverButton {
                width: 100
                height: 50
                _title.text: "Dog"
                _color: window_00.btnColor
                _hoverColor: window_00.hoverColor
                _clickColor: window_00.clickColor
                _are.onPressed: image_00.source = "qrc:/images/dog.jpg"
            }

            HoverButton {
                width: 100
                height: 50
                _title.text: "Dog"
                _color: window_00.btnColor
                _hoverColor: window_00.hoverColor
                _clickColor: window_00.clickColor
                _are.onPressed: image_00.source = "qrc:/images/fish.jpg"
            }
        }
    }

    Rectangle {
        id: rectangle
        color: window_00.bgColor
        x: 100
        y: 0
        width: parent.width - x
        height: parent.height

        Image {
            id: image_00
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/logo.jpg"

        }
    }
}
