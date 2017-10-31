/****************************************************************************
**
** Copyright (C) 2017 The XXXXXXX.
** Contact: www.XXXX.com
**
** This file is part of the QT Framework project developed for ThermoFisher.
**
**  << NEED TO BE ADDED >>
****************************************************************************/

import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Button {

  id: idBtn;   width: parent.width;  height: 55

  property int iCMD: 100

  onClicked:
    { idNavBarCtrl.btnClicked (iCMD, idBtn);  }

  style: ButtonStyle {

    background: Rectangle {

      color: colors.transparentColor

      Rectangle {

        x: 20;      y: 2.5;   width: 50;   height: 50
        radius: 25
        color: colors.elephantColor
        scale: control.pressed ? 1 : 0.75
        opacity: control.pressed ? 1 : 0
        Behavior on opacity { OpacityAnimator { duration: 120 } }
        Behavior on scale { ScaleAnimator { duration: 120 } }
      }
    }
  }
}
