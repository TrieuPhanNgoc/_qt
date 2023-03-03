import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int middle: height / 2
    property int mode: 0
    property int clicked_count: 0

    // Basic Type
    /*********************** Rectangle *************************/
    Rectangle {
        id: my_rgtl_00
        color: "red"
        width: 100
        height: 100
        x: 10
        y: 10
        visible: true
        border.color: "#000000"
        border.width: 2

        // Radius:
        radius: 20
    }

    // Rectangle for circle
    Rectangle {
        id: my_rgtl_01
        color: "red"
        width: 100
        height: 100
        x: 150
        y: 10
        visible: true
        border.color: "#000000"
        border.width: 2

        // for making circle -> making radius equal to width
        radius: width
    }

    // Rectangle with gradient
    Rectangle {
        id: my_rgtl_02
        color: "red"
        width: 100
        height: 100
        x: 300
        y: 10
        visible: true
        border.color: "#000000"
        border.width: 2

        // for making circle -> making radius equal to width
        radius: width

        gradient: Gradient {
            GradientStop { position: 0.4; color: "red" }
            GradientStop { position: 0.4; color: "yellow" }
            GradientStop { position: 1.0; color: "green" }
        }
    }

    /*********************** Image *************************/
    Image {
        id: myImage_00
        //anchors.centerIn: parent
        source: "qrc:/image/smile.png"
        width: 300
        fillMode: Image.PreserveAspectFit
        x: 300
        y: 130

    }

    Image {
        id: remote_image
        source: "http://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"

        width: 100
        fillMode: Image.PreserveAspectFit

        x: 100
        y: 150

        onProgressChanged: console.log(myImage_00.progress)
        onStateChanged: if(myImage_00.status == Image.Ready) console.log("Remote image was loaded")
    }

    /*********************** Text *************************/
    Rectangle {
        id: tgl_container_00
        x: 10
        y: 300
        height: 100
        width: 300
        border.width: 2
        border.color: "red"

        Text {
            id: text_00
            text: qsTr("
                    <html><b>Hello</b><i> <font color='green'>World</font></i></html>
                    <br>
                    <font color='#C0C0C0'>This is the new line</font>
                    <br>
                    <a href='http://www.google.com'>Google</a>
                        ") // (a)
            anchors.centerIn: parent
            font.pointSize: 10
            font.bold: false // Might not work -> because we already define this attribute on the string (a)
            font.italic: true // Might not work -> because we already define this attribute on the string

            // Hovering the object
            onLinkHovered: {
                if (link) {
                    text_00.font.bold = true
                    console.log("Hovering: " + link)
                }
                else {
                    text_00.font.bold = false
                }
            }

            // Opening the link that we clicked on
            onLinkActivated: Qt.openUrlExternally(link)
        }
    }


    /*********************** Mouse Area *************************/
    Rectangle {
        id: mouse_area_reg_00
        color: "blue"
        width: 90
        height: 90
        x: 400
        y: 300

        MouseArea {
            id: mouse_are_00

            anchors.fill: parent

            //
            acceptedButtons: Qt.LeftButton | Qt.RightButton

            onDoubleClicked: {
                console.log("Double Clicked: " + mouse.button)
            }


            onClicked: {
                console.log("Clicked: " + mouse.button)
                if (mouse.button === Qt.LeftButton) {
                    parent.color = "green"
                }
                else if (mouse.button === Qt.RightButton) {
                    parent.color = "red"
                }
            }

            // Enable hovering before using onPosition -> if not -> they would not trace the value of onPositionChanged()
            //hoverEnabled: true
            //onPositionChanged: console.log("Position x: " + mouseX + " - Position y: " + mouseY)

            // Enter and exit the rectangle
            onEntered: parent.color = "yellow"
            onExited: parent.color = "blue"
        }
    }
}
