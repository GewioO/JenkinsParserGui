import QtQuick 6.0
import QtQuick.Window 6.0
import QtQuick.Layouts 6.0
import QtQuick.Controls 6.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Jenkins Parser")

    RowLayout {
        id: rowLayout
        anchors.fill: parent

        MenuView {
            Layout.fillHeight: true
            Layout.fillWidth: false
            Layout.preferredWidth: 200
        }

        StackLayout {
            id: stackLayout
            Layout.fillHeight: true
            Layout.fillWidth: true

            SignInView {
                Layout.alignment: Qt.AlignBaseline
                Layout.minimumWidth: 300
            }

            SettingsView {}

            ChangeSettingsView {}
            SettingsView {}

            CurrentSettingsView {
                Layout.alignment: Qt.AlignBaseline
                Layout.minimumWidth: 300
            }
        }
    }
}
