import QtQuick 6.0
import QtQuick.Layouts 6.0
import QtQuick.Controls 6.0

Item {
    Rectangle {
        id: сhangeSettingsViewBackground
        anchors.fill: parent
        color: "mediumturquoise"
        border.color: "black"
        border.width: 0
    }

    ColumnLayout {
        id: mainLayout
        spacing: 30

        Row {
            id: link
            spacing: 10

            LabelElement {
                id: lableLink
                text: qsTr("Set Link to build:")
            }

            Rectangle {
                id: inputLink
                height: 30
                y: 30
                color: "whitesmoke"
                border.color: "black"
                width: сhangeSettingsViewBackground.width - 195

                InputElement {
                    onTextChanged: if (text.length > 0) {
                                       buttonLink.enabled = true
                                   } else {
                                       buttonLink.enabled = false
                                   }
                }
            }
        }

        ButtonElement {
            id: buttonLink
            text: qsTr("Enter")
        }

        Row {
            id: path
            spacing: 10

            LabelElement {
                id: lablePath
                text: qsTr("Set Path to build:")
            }

            Rectangle {
                id: inputPath
                height: 30
                y: 30
                color: "whitesmoke"
                border.color: "black"
                width: сhangeSettingsViewBackground.width - 200

                InputElement {
                    onTextChanged: if (text.length > 0) {
                                       buttonPath.enabled = true
                                   } else {
                                       buttonPath.enabled = false
                                   }
                }
            }
        }

        ButtonElement {
            id: buttonPath
            text: qsTr("Enter")
        }

        Row {
            id: number
            spacing: 10

            LabelElement {
                id: lableNumber
                text: qsTr("Set Number of build:")
            }

            Rectangle {
                id: inputNumber
                height: 30
                y: 30
                color: "whitesmoke"
                border.color: "black"
                width: сhangeSettingsViewBackground.width - 240

                InputElement {
                    onTextChanged: if (text.length > 0) {
                                       buttonNumber.enabled = true
                                   } else {
                                       buttonNumber.enabled = false
                                   }
                }
            }
        }

        ButtonElement {
            id: buttonNumber
            text: qsTr("Enter")
        }

        Row {
            id: messageTime
            spacing: 10

            LabelElement {
                id: lableMessageTime
                text: qsTr("Set message time:")
            }

            Rectangle {
                id: inputMessageTime
                height: 30
                y: 30
                color: "whitesmoke"
                border.color: "black"
                width: сhangeSettingsViewBackground.width - 210

                InputElement {
                    onTextChanged: if (text.length > 0) {
                                       buttonMessageTime.enabled = true
                                   } else {
                                       buttonMessageTime.enabled = false
                                   }
                }
            }
        }

        ButtonElement {
            id: buttonMessageTime
            text: qsTr("Enter")
        }
    }
}
