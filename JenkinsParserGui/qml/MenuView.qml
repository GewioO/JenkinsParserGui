import QtQuick 6.0
import QtQuick.Layouts 6.0
import QtQuick.Controls 6.0

Item {
    Rectangle {
        id: menuBackground
        anchors.fill: parent
        color: "powderblue"
        border.color: "black"
    }

    ColumnLayout {
        id: menuRowLayout
        spacing: 10

        MenuButton {
            id: homeButton
            Layout.fillWidth: false
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            Layout.column: 1
            text: qsTr("Home")
            onPressed: {
                //if (signedIn) {
                //    stackLayout.currentIndex = 1
                //} else {
                stackLayout.currentIndex = 0
                //}
            }
        }

        MenuButton {
            id: changeSettingButton
            Layout.fillWidth: false
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            Layout.column: 2
            text: qsTr("Change Settings")
            onPressed: {
                stackLayout.currentIndex = 2
            }
        }

        MenuButton {
            id: currentSettingsButton
            Layout.fillWidth: false
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            Layout.column: 3
            text: qsTr("Current Settings")
            onPressed: {
                stackLayout.currentIndex = 3
            }
        }

        MenuButton {
            id: settingsPresetButton
            Layout.fillWidth: false
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            Layout.preferredHeight: 50
            Layout.column: 4
            text: qsTr("Settings Preset")
            onPressed: {
                stackLayout.currentIndex = 4
            }
        }
    }
}
