import QtQuick 6.0
import QtQuick.Layouts 6.0
import QtQuick.Controls 6.0

Item {
    Rectangle {
        id: signInViewBackground
        anchors.fill: parent
        color: "mediumturquoise"
        border.color: "black"
    }

    ColumnLayout {
        id: mainLayout
        spacing: 30

        Label {
            id: title
            text: qsTr("Authorization")
            font.pixelSize: 24
            Layout.alignment: Qt.AlignHCenter
            textFormat: Text.PlainText
        }

        Row {
            Layout.alignment: Qt.AlignHCenter

            Label {
                id: lable
                text: qsTr("Login:")
                font.pixelSize: 24
            }

            Rectangle {
                width: signInViewBackground.width - 100
                height: 30
                color: "whitesmoke"
                border.color: "black"

                TextInput {
                    id: textInput
                    width: parent.width
                    height: 30
                    text: qsTr("")
                    font.pixelSize: 24
                    selectByMouse: true
                    autoScroll: true
                    cursorVisible: false
                    clip: true
                    onTextChanged: if (text.length > 0) {
                                       button.enabled = true
                                   } else {
                                       button.enabled = false
                                   }
                }
            }
        }

        Button {
            id: button
            text: qsTr("Sign In")
            Layout.alignment: Qt.AlignRight
            flat: false
            enabled: false
            onClicked: {
                signInModel.username = textInput.text
                signInController.signIn = signInModel
            }
        }
    }
}
