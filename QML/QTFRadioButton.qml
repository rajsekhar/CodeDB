
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0




RadioButton {

  id: idrdoBtn
  text: "TTTTT"

  Layout.fillWidth: true
  Layout.preferredHeight: 40
  Layout.preferredWidth: 132

  style: RadioButtonStyle {

    indicator: Rectangle {

      width:  24;               height: 24;      radius: 12;
      border.color: "#cbc6cd";  border.width: 4;

      Rectangle {
        x: 4;          y: 4;   height: 16;    width: 16
        anchors.margins: 4;
        radius: 8;     visible: control.checked
        color: "#2ea2ec"
      }
    }

    label: Label {

      font.family: "Roboto Regular"; font.pixelSize: 20;
      text: control.text;            color: "#344550"   //RNR - name to be given
    }
  }

  onCheckedChanged:
    { }
}
