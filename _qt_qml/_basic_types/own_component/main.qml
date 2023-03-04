import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int middle: (height / 2) - 50

    ButtonTPN {
        id: button_00
        x: 100
        y: middle
        color: "orange"
        colorClicked: "green"
        title: "Button 1"
    }

    ButtonTPN {
        id: button_01
        x: (parent.width / 2) - (width / 2)
        y: middle
        color: "blue"
        colorClicked: "orange"
        title: "Button 2"
    }

    ButtonTPN {
        id: button_02
        x: parent.width - 200
        y: middle
        color: "green"
        colorClicked: "orange"
        title: "Button 3<br>Testing!"
    }

    ButtonTPN {
        id: button_03
        x: (parent.width / 2) - (width / 2)
        y: middle + 120
        width: 500
        height: 35
        color: "lightblue"
        colorClicked: "orange"
        title: "<b> Super Button </b> <i>Long</i> <u>Button</u>"
    }

    ImageTPN {
        x: 10
        y: 10
        id: img_00
        title: "hello"
        url_link: "https://qt.io"
        image_path: "http://upload.wikimedia.org/wikipedia/commons/0/0b/Qt_logo_2016.svg"
    }
}
