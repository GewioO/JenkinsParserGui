import QtQuick 6.0
import QtQuick.Layouts 6.0
import QtQuick.Controls 6.0

Item {
    id: currentSettingsView

    Rectangle {
        id: currentSettingsBackground
        anchors.fill: parent
        color: "mediumturquoise"
        border.color: "black"
    }

    GridLayout {
        id: mainLayout
        anchors {
            left: parent.left
            right: parent.right
        }
        columns: 4
        rowSpacing: 10
        columnSpacing: 1

        Label {
            id: buildLinkLabel
            Layout.preferredWidth: 160
            text: qsTr("Build Link:")
            font.pixelSize: 24
        }

        Rectangle {
            Layout.columnSpan: 2
            Layout.fillWidth: true
            Layout.preferredHeight: 30
            Layout.minimumWidth: 200
            color: "whitesmoke"
            border.color: "black"

            TextInput {
                id: buildLinkInput
                width: parent.width
                height: parent.height
                text: qsTr("")
                font.pixelSize: 24
                selectByMouse: true
                autoScroll: true
                cursorVisible: false
                clip: true
                onTextChanged: if (text.acceptableInput) {
                                   buildLinkButton.enabled = true
                               } else {
                                   buildLinkButton.enabled = false
                               }
                validator: RegularExpressionValidator {
                    regularExpression: /^http[s]?:\/\/[a-zA-Z0-9_.]+\/(view\/[a-zA-Z0-9_]+\/)+job\/[a-zA-Z0-9_]+\/\d+\/?$/
                }
            }
        }

        BusyIndicator {
            id: buildLinkIndicator
            running: false
        }

        Button {
            id: buildLinkButton
            Layout.row: 1
            Layout.column: 2
            text: qsTr("Check Build")
            flat: false
            enabled: false
            onClicked: {
                buildLinkIndicator.running = true
            }
        }

        Label {
            id: buildPathLabel
            Layout.row: 2
            Layout.column: 0
            text: qsTr("Build Path:")
            font.pixelSize: 24
        }

        Rectangle {
            Layout.columnSpan: 2
            Layout.fillWidth: true
            Layout.preferredHeight: 30
            color: "whitesmoke"
            border.color: "black"

            TextInput {
                id: buildPathInput
                width: parent.width
                height: parent.height
                text: qsTr("")
                font.pixelSize: 24
                selectByMouse: true
                autoScroll: true
                cursorVisible: false
                clip: true
                onTextChanged: if (text.acceptableInput
                                       && buildNumberInput.text.acceptableInput) {
                                   buildNumberButton.enabled = true
                               } else {
                                   buildNumberButton.enabled = false
                               }
                validator: RegularExpressionValidator {
                    regularExpression: /^http[s]?:\/\/[a-zA-Z0-9_.]+\/(view\/[a-zA-Z0-9_]+\/)+job\/[a-zA-Z0-9_]+\/?$/
                }
            }
        }

        BusyIndicator {
            id: buildPathIndicator
            running: false
        }

        Label {
            id: buildNumberLabel
            Layout.row: 3
            Layout.column: 0
            text: qsTr("Build Number:")
            font.pixelSize: 24
        }

        Rectangle {
            Layout.columnSpan: 2
            Layout.fillWidth: true
            Layout.preferredHeight: 30
            color: "whitesmoke"
            border.color: "black"

            TextInput {
                id: buildNumberInput
                width: parent.width
                height: parent.height
                text: qsTr("")
                font.pixelSize: 24
                selectByMouse: true
                autoScroll: true
                cursorVisible: false
                clip: true
                onTextChanged: if (text.acceptableInput
                                       && buildPathInput.text.acceptableInput) {
                                   buildNumberButton.enabled = true
                               } else {
                                   buildNumberButton.enabled = false
                               }
                validator: IntValidator {
                    bottom: 0
                }
            }
        }

        BusyIndicator {
            id: buildNumberIndicator
            running: false
        }

        Button {
            id: buildNumberButton
            Layout.row: 4
            Layout.column: 2
            text: qsTr("Check Build")
            Layout.alignment: Qt.AlignRight
            flat: false
            enabled: false
            onClicked: {
                buildLinkIndicator.running = true
                buildNumberIndicator.running = true
            }
        }

        Label {
            id: messageTimeLabel
            Layout.row: 5
            Layout.column: 0
            text: qsTr("Message Time:")
            font.pixelSize: 24
        }

        Rectangle {
            Layout.columnSpan: 2
            Layout.fillWidth: true
            Layout.preferredHeight: 30
            color: "whitesmoke"
            border.color: "black"

            TextInput {
                id: messageTimeInput
                width: parent.width
                height: parent.height
                text: qsTr("300")
                font.pixelSize: 24
                selectByMouse: true
                autoScroll: true
                cursorVisible: false
                clip: true
                onTextChanged: if (text.acceptableInput) {
                                   button.enabled = true
                               } else {
                                   button.enabled = false
                               }
                validator: IntValidator {
                    bottom: 0
                }
            }
        }

        BusyIndicator {
            id: messageTimeIndicator
            running: false
        }

        Button {
            id: button
            Layout.row: 6
            Layout.column: 2
            text: qsTr("Check Preset")
            Layout.alignment: Qt.AlignRight
            flat: false
            enabled: false
            onClicked: {
                messageTimeIndicator.running = true
            }
        }
    }
}
