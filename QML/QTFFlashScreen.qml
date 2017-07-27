/****************************************************************************
**
** Copyright (C) 2017 The XXXXXXX.
** Contact: www.XXXX.com
**
** This file is part of the QT Framework project developed for ThermoFisher.
**
**  << NEED TO BE ADDED >>
****************************************************************************/

import QtQuick 2.7
import QtQuick.Controls 2.0

Rectangle {

  id: idSplash

  anchors.fill: parent
  color: "#273740"

  property bool bVisible: true

  function start ()
    { idSplash.visible = true; idAnimate.start () }

  Image {

    id: splashImage
    anchors.fill: parent
    fillMode: Image.PreserveAspectCrop
    source: "../Support/Images/QTFSplashScreen.png"
    scale: 0 // 0.85
    opacity: 0
  }

  ParallelAnimation {

    id:      idAnimate
    running: true
    ScaleAnimator {
      target: splashImage
      from: 0
      to: 0.85
      duration: 1600
    }

    OpacityAnimator {
      target: splashImage
      from: 0
      to: 1
      duration: 1600
    }
  }

  Timer {

    id: idSplashTimer
    running: true
    repeat: false
    interval: 3600

    onTriggered: {
      splashImage.visible = false
    }
  }
}
