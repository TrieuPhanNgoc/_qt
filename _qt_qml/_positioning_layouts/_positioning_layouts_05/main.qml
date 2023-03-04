import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyShape {
        id: shareControl
        anchors.centerIn: parent
        _text: "hello"

        Rectangle {
            width: 25
            height: 25
            color: "pink"
            // no anchors by default
            //anchors.centerIn: parent
            //anchors.fill:parent

            // Moving rec to the left-bottom
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }

    MyShape {
        id: shap_top
        _text: "Top"
        _color: "green"
        anchors.bottom: shareControl.top
        anchors.left: shareControl.left
    }

    MyShape {
        id: shap_bottom
        _text: "Bottom"
        _color: "orange"
        anchors.top: shareControl.bottom
        anchors.left: shareControl.left
    }

    MyShape {
        id: shap_left
        _text: "Left"
        _color: "red"
        anchors.top: shareControl.top
        anchors.right: shareControl.left
    }

    MyShape {
        id: shap_right
        _text: "Right"
        _color: "blue"
        anchors.top: shareControl.top
        anchors.left: shareControl.right
    }
}
