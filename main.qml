import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Imagine 2.12
import QtQuick.Controls.Material 2.12


ApplicationWindow {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Aria2 GUI")
    Material.theme: Material.Light
    Material.accent: Material.Purple
    Label{
        id:apptitle
        x:50;y:20
        text: "Aria2 GUI Client"
        font.pixelSize: 22
        font.bold: true
        font.italic: true
    }
    Item {
        id: info
        x:root.width-150;y:20
        children: [
            Label{
                x:50
                text: "Aria2 v1.33.1"
                font.pixelSize: 12
            },
            Label{
                id: speed
                y:15
                text: "Down: 0KB/s up: 0KB/s"
                font.pixelSize: 12
            }

        ]
    }
    Item {
        id: control_btn
        x:40;y:50
        children: [
            Button{
                x:0
                width:50;height: 40
                text: qsTr("Add")
                font.pixelSize: 12
            },
            Button{
                x:60
                width:50;height: 40
                text: "Stop"
                font.pixelSize: 12
            },
            Button{
                x:120
                width:60;height: 40
                text: "Trash"
                font.pixelSize: 12
            },
            Button{
                x:root.width-200
                width:60;height: 40
                text: "Refesh"
                font.pixelSize: 12
            },
            Button{
                x:root.width-120
                width:60;height: 40
                text: "Setting"
                font.pixelSize: 12
            }
        ]
    }
    ListView{
        id:download_mission
        width: root.width;height: root.height-300
        delegate: Text {
            id: wrapper
            width: root.width-100;height: 32
            font.pixelSize: 15
            verticalAlignment: Text.AlignHCenter
            horizontalAlignment: Text.AlignHCenter
            text: qsTr('context')
        }
    }
}
