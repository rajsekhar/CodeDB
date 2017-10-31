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
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0

Rectangle {

  x: 0;          y: 0;
  width: iWidth; height: iHeight;
  color: colors.transparentColor

  property int iWidth: 24
  property int iHeight: 24
  property int iSpacing: 5;
  property int dpi: 72;
  property bool bChecked: false
  property string strLabel: "TTTTT"
  property string strImgChk: "../Support/Images/QTFCheckbox_Selected.png";
  property string strImgUnChk: "../Support/Images/QTFCheckbox_Unselected.png";

  Rectangle {

    width: 150;    height: iHeight
    color: colors.transparentColor;
    border.color: "#FF0000"
  }

  Image {

    id: idImage; source: "";
    anchors.fill: parent;
    Component.onCompleted:
      { idImage.source = bChecked ? strImgChk : strImgUnChk; }
  }

  Text {

    font.family: "Roboto Regular"; font.pointSize: 20;
    text:  strLabel
    color: "#39454d" //RNR  - need give a name to the color
  }

  MouseArea {

    anchors.fill: idImage
    onClicked: {

      bChecked = !bChecked
      idImage.source = bChecked ? strImgChk : strImgUnChk;
    }
  }
}
