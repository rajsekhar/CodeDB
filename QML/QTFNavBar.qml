/****************************************************************************
**
** Copyright (C) 2017 The XXXXXXX.
** Contact: www.XXXX.com
**
** This file is part of the QT Framework project developed for ThermoFisher.
**
**  << NEED TO BE ADDED >>
****************************************************************************/

import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {

  id:     idNavBarCtrl
  width:  90;                   height: parent.height
  color:  colors.arsenicColor;  clip:   true

  property int indPos: 16
  property int navPos: 0
  property int iNextBtnYPos: 0

  function start ()
    { idAnmNavBar.start ();  }

  function btnClicked (iCMD, idBtn) {

    console.log("Command ID: " + iCMD + "  " + idBtn)

    indPos = idBtn.y - 2 + (idBtn.height-idIndicator.height)/2;
    idIndicator.move (indPos)
  }

  function addButton (iCMD, strImgName) {

    var ctrl = Qt.createComponent ("QTFImageButton.qml");
    if (ctrl.status === Component.Ready) {

     var imgPath = "../Support/Images/" + strImgName + ".png";
     var obj =  ctrl.createObject(idNavBarCtrl, { "y": iNextBtnYPos,
                                                  "iconSource": imgPath,
                                                  "iCMD": iCMD} );
      iNextBtnYPos = iNextBtnYPos + 64;

      if (iNextBtnYPos > height)
        { height = height + 64; }
    }
  }

  Component.onCompleted: {

    addButton (100, "QTFBack_InActive");   addButton (200, "QTFHome_Selected");
    addButton (300, "QTFSettings_Tap");    addButton (400, "QTFEventLog_Tap");
    addButton (500, "QTFMethods_Tap");     addButton (600, "QTFBurette_Tap");
    addButton (700, "QTFMeasure_Tap");     addButton (800, "QTFMeasure_Tap");
    addButton (700, "QTFMeasure_Tap");     addButton (800, "QTFMeasure_Tap");
  }

  QTFIndicator { id: idIndicator; y: 16 }

  ParallelAnimation {

    id:      idAnmNavBar;   running: true;
    ScaleAnimator { target: idNavBar; from: 0; to: 1; duration: 240 }
  }

  ParallelAnimation {

    running: true;  id: moveNavBar;
    NumberAnimation {

      target: idNavBarCtrl; property: "y";
      to: navPos;           duration: 500
    }
  }

  MouseArea {

    anchors.fill:  parent
    onWheel: {

      navPos = (wheel.angleDelta.y > 0) ? navPos - 64 : navPos + 64;

      if ((navPos + parent.height) < idNavBarCtrl.parent.height)
        { navPos = idNavBarCtrl.parent.height - parent.height; }
      else if (navPos > 0)
        { navPos = 0; }

      moveNavBar.start ()
    }
  }
}
