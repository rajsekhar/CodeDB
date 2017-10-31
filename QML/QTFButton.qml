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

  width: parent.width
  height: 32

  style: ButtonStyle {

    background: Rectangle {

      color: colors.transparentColor

      Rectangle {

        x: 2.5
        y: 2.5
        width: parent.width-5.0
        height: parent.height-5.0
        radius: 10
        color: colors.elephantColor
        scale: control.pressed ? 1 : 0.75
        opacity: control.pressed ? 1 : 0
        Behavior on opacity { OpacityAnimator { duration: 120 } }
        Behavior on scale { ScaleAnimator { duration: 120 } }
      }
    }

/*   label: Text {

      anchors.centerIn: parent
      renderType: Text.NativeRendering
      verticalAlignment: Text.AlignVCenter
      horizontalAlignment: Text.AlignHCenter
      font.family:    "Roboto-Regular"
      font.pointSize: 20
      color:          "blue"
      text: control.text
    }*/
  }
}
