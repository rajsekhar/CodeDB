/****************************************************************************
**
** Copyright (C) 2017 The XXXXXXX.
** Contact: www.XXXX.com
**
** This file is part of the QT Framework project developed for ThermoFisher.
**
**  << NEED TO BE ADDED >>
****************************************************************************/

import QtQuick 2.0

Rectangle {

  id: idIndicator;           x: 85;        y: 0
  width: 16;                 height: 16
  color: colors.azureColor;  rotation: 45

  transform: Scale { yScale: 1.35 }

  property int iY: 16

  function move (iYPos)
    { iY = iYPos; idMove.start (); }

  ParallelAnimation {

    running: true;  id: idMove;
    NumberAnimation { target: idIndicator; property: "y"; to: iY; duration: 250 }
  }

  PropertyAnimation {

    id: idSwitchToDark;   target: idIndicator
    properties: "color";  to: colors.deeptangaroaColor; duration: 240
  }

  PropertyAnimation {

    id: idSwitchToLight;  target: idIndicator
    properties: "color";  to: colors.whiteSmokeColor;   duration: 240
  }
}

