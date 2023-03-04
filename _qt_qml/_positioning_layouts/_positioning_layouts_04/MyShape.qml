import QtQuick 2.15

Rectangle {
    id: root
    color: "gray"
    width: 90
    height: 90

    MouseArea {
        anchors.fill: parent
        drag.target: parent
        acceptedButtons: Qt.RightButton | Qt.LeftButton
        onClicked: (mouse) => {
            if (mouse.button === Qt.RightButton) {
                parent.z = 0
            }
            else {
                parent.z++
            }
            console.log("Clicked - color: " + root.color)
            console.log("\tLevel of block: " + parent.z)
        }
    }
}

