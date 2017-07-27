import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.1
import QtQuick.Window 2.1


import "./Support/QTFColors.js" as JSQTFColors
import "./QML"

ApplicationWindow {

  id: idAppWnd
  visible: true
  width: 600
  height: 500

  title: qsTr("Qt Framework")

  property var colors: JSQTFColors

  function resizeWinddow (iWid, iHig) {

    idAppWnd.width = iWid; idAppWnd.height = iHig;
    idNavBar.visible = false;
    idSplashScreen.start(); idTmrSplashScreen.start();
  }

  QTFFlashScreen { id: idSplashScreen }

  QTFNavBar { id: idNavBar; visible: false; }

  QTFCheckBox { id: idChkBox;
                x: 250; y: 200; }

  QTFRadioButton { id: idrdoBtn1;
                x: 250; y: 250; }

  menuBar: MenuBar {

    Menu {
      title: "&File"
      MenuItem { text: "Quit"; onTriggered: Qt.quit() }
    }

    Menu {
      title: "&Settings"
      MenuItem { text: "Resol 800x600"; onTriggered: resizeWinddow (800, 600) }
      MenuItem { text: "Resol 600x480"; onTriggered: resizeWinddow (600, 480) }
    }
  }

  Timer {

    id: idTmrSplashScreen
    running: true
    repeat: false
    interval: 30

    onTriggered: {

      idNavBar.visible = true
      idNavBar.start()
      idSplashScreen.visible = false
    }
  }
}
