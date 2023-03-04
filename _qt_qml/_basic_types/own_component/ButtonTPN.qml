import QtQuick 2.15

Item {
    // Id of item
    id: root

    // Size of item
    width: 100
    height: 100

    // Property of item
    property color color: "#C0C0C0"                         // Default value
    property color colorClicked: "gray"                     // Default value
    property string title: "Click Me"                       // Default value
    property string image_path: ""                          // Default value
    property string qt_link_url: "https://www.google.com"   // Default value

    Rectangle {                             // Creating th rectangle
        id: reg_00                          // Id for reg
        anchors.fill: parent                // color filling
        color: root.color                   // Filling color with color value

        Text {
            id: disp_text_00
            text: root.title
            anchors.centerIn: parent
        }

        MouseArea {
            id: mouseArea_00
            anchors.fill: parent
            onPressed: parent.color = root.colorClicked     // Turning to the clicked color
            onReleased: parent.color = root.color           // Turning back to default color
        }

        Image {
            id: img_id_00
            source: root.image_path
            Text {
                id: txt_id_00
                text: qsTr("<a href='" + qt_link_url + "'</a>")

                // Opening the link that we clicked on
                onLinkActivated: Qt.openUrlExternally(link)
            }
        }
    }


}
