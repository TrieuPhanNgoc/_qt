import QtQuick 2.15

Item {
    id: root

    width: 120
    height: 100

    property string url_link: "https://google.com"
    property string image_path: ""
    property string title: ""

    Image {
        anchors.fill: parent

        height: parent
        width: parent
        id: image_00
        source: root.image_path
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton
            onClicked: {
                onLinkActivated: Qt.openUrlExternally(url_link)
            }
        }
    }
}
