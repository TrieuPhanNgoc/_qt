import QtQuick 2.15
import QtQuick.Window 2.15

/*
    id: has to be unique
    Root Object: - There can be only one
*/

// Top level is the root object
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: myImage
        source: "http://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        anchors.centerIn: parent
        height: 20
        width: 40
        opacity: 0.2 // Transparent capicity


        Rectangle {
            color: "red"
            width: parent.width
            height: parent.height
            opacity: 0.5 // 50% - 0.0 - 1.0
        }
    }


    // QML Object and QObject
    TextInput {
        id: myInput
        text: "Hello World"
        anchors.centerIn: parent
        font.pixelSize: 10
    }

    Text {
        id: myText
        text: myInput.text
        font.pixelSize: 25
        x: 300
        y: 300

    }

    // x,y,z Positioning
    /*
       x : x co-ordinate
       y : y co-ordinate
       z : y co-ordinate    When changing this one, this is the same meaning as changing the level of layer
    */
    Image {
        id: myImage_2
        source: "http://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        height: 150
        width: 200
        x: 40
        y: 80
    }

    // The red one is lower level than the blue one
    Rectangle {
        id: red_tgl
        color: "red"
        height: 50
        width: 40
        opacity: 0.5
        x: 150
        y: 20
        z: 0 // Lowest level
    }

    Rectangle {
        id: blue_tgl
        color: "blue"
        height: 50
        width: 40
        opacity: 0.5
        x: 170
        y: 50
        z: 0
    }

    // The red one is higher level than the blue one
    Rectangle {
        id: red_tgl_2
        color: "red"
        height: 50
        width: 40
        opacity: 0.5
        x: 300
        y: 20
        z: 1
    }

    Rectangle {
        id: blue_tgl_2
        color: "blue"
        height: 50
        width: 40
        opacity: 0.5
        x: 320
        y: 50
        z: 0
    }


    // Parent and child children relationship
    Image {
        id: myImage_3
        source: "http://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
        height: 150
        width: 200
        x: 320
        y: 80

        Rectangle {
            id: yellow_tgl_3
            color: "yellow"
            height: 30
            width: 40
            x: 0    // This position base on the parent which is image - not window
            y: 0    // This position base on the parent which is image - not window
        }
    }


    // Object Interaction - Tap Handler
    Rectangle {
        id: blue_tgl_3
//        anchors.centerIn: parent
        width: 100
        height: 100
        x: 10
        y: 300
        color: inputHandler.pressed ? "red" : "blue"
        TapHandler {
            id: inputHandler
        }
    }
}
