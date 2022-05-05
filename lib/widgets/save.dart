import 'dart:io';
import 'package:flutter_editor/controller/assets_state.dart';
import 'package:get/get.dart';
import 'package:xml/xml.dart';

var fetchedDetails = {};

class SaveXml {
  static load(path) {
    var detailsDict = {};
    var file = File(path + "\\lockscreen\\advance\\manifest.xml");
    var xml = XmlDocument.parse(file.readAsStringSync());
    var details = xml.findAllElements('Var');
    // fetch expression attribute of all element
    for (var element in details) {
      detailsDict[element.getAttribute('name')] =
          element.getAttribute('expression');
    }
    return (detailsDict);
  }

  static void saveXml(path) {
    var file = File(path + "\\lockscreen\\advance\\manifest.xml");
    var xml = XmlDocument.parse(file.readAsStringSync());
    var details = xml.findAllElements('Var');
    // update expression attribute of all element
    for (var element in details) {
      element.setAttribute(
          'expression', fetchedDetails[element.getAttribute('name')]);
    }
    file.writeAsStringSync(xml.toXmlString(pretty: true, indent: '\t'));
  }

  static void updateData() {
    AssetsController assetsController = Get.find();
    
      //update data to fetched details
      fetchedDetails.addAll({
        "scale1": assetsController.scale1().text,
        "scale2": assetsController.scale2().text,
        "scale3": assetsController.scale3().text,
        "scaleDot": assetsController.scaleDot().text,
        "scaleAM": assetsController.scaleAM().text,
        "scaleWeek": assetsController.scaleWeek().text,
        "scaleDate": assetsController.scaleDate().text,
        "scaleMonth": assetsController.scaleMonth().text,
        "scaleMonthNum": assetsController.scaleMonthNum().text,
        "scaleTemp": assetsController.scaleTemp().text,
        "scaleWeatherIcon": assetsController.scaleWeatherIcon().text,
        "scaleBtr": assetsController.scaleBtr().text,
        "scaleBg": assetsController.scaleMusicBg().text,
        "scaleBtn": assetsController.scaleBtn().text,
        "scaleThemes": assetsController.scaleThemes().text,
        "scaleSettings": assetsController.scaleSettings().text,
        "scaleMusic": assetsController.scaleMusic().text,
        "analogScale": assetsController.analogScale().text,
        "scaleCam": assetsController.scaleCam().text,
        "scaleCalc": assetsController.scaleCalc().text,
        "scaleClock": assetsController.scaleClock().text,
        "scaleSecurity": assetsController.scaleSecurity().text,
        "scaleRadio": assetsController.scaleRadio().text,
        "scaleFile": assetsController.scaleFile().text,
        "scaleScanner": assetsController.scaleScanner().text,
        "scaleGallery": assetsController.scaleGallery().text,
        "scaleCompass": assetsController.scaleCompass().text,
        "scaleRecorder": assetsController.scaleRecorder().text,
        "scaleYear": assetsController.scaleYear().text,
        "scaleCalender": assetsController.scaleCalender().text,
        "scaleCalWeek": assetsController.scaleCalWeek().text,
        "scaleCalDate": assetsController.scaleCalDate().text,
        "x1Align": assetsController.x1Align().text,
        "y1Align": assetsController.y1Align().text,
        "x2Align": assetsController.x2Align().text,
        "y2Align": assetsController.y2Align().text,
        "x3Align": assetsController.x3Align().text,
        "y3Align": assetsController.y3Align().text,
        "xDotAlign": assetsController.xDotAlign().text,
        "yDotAlign": assetsController.yDotAlign().text,
        "xAMAlign": assetsController.xAMAlign().text,
        "yAMAlign": assetsController.yAMAlign().text,
        "xWeekAlign": assetsController.xWeekAlign().text,
        "yWeekAlign": assetsController.yWeekAlign().text,
        "xDateAlign": assetsController.xDateAlign().text,
        "yDateAlign": assetsController.yDateAlign().text,
        "xMonthAlign": assetsController.xMonthAlign().text,
        "yMonthAlign": assetsController.yMonthAlign().text,
        "xMonthNumAlign": assetsController.xMonthNumAlign().text,
        "yMonthNumAlign": assetsController.yMonthNumAlign().text,
        "xYearAlign": assetsController.xYearAlign().text,
        "yYearAlign": assetsController.yYearAlign().text,
        "xCalenderAlign": assetsController.xCalenderAlign().text,
        "yCalenderAlign": assetsController.yCalenderAlign().text,
        "xTempAlign": assetsController.xTempAlign().text,
        "yTempAlign": assetsController.yTempAlign().text,
        "xWeatherIconAlign": assetsController.xWeatherIconAlign().text,
        "yWeatherIconAlign": assetsController.yWeatherIconAlign().text,
        "xBtrAlign": assetsController.xBtrAlign().text,
        "yBtrAlign": assetsController.yBtrAlign().text,
        "xMusicBgAlign": assetsController.xMusicBgAlign().text,
        "yMusicBgAlign": assetsController.yMusicBgAlign().text,
        "xPrevBtnAlign": assetsController.xPrevBtnAlign().text,
        "yPrevBtnAlign": assetsController.yPrevBtnAlign().text,
        "xNextBtnAlign": assetsController.xNextBtnAlign().text,
        "yNextBtnAlign": assetsController.yNextBtnAlign().text,
        "xCamAlign": assetsController.xCamAlign().text,
        "yCamAlign": assetsController.yCamAlign().text,
        "xAnalogAlign": assetsController.xAnalogAlign().text,
        "yAnalogAlign": assetsController.yAnalogAlign().text,
        "xThemesAlign": assetsController.xThemesAlign().text,
        "yThemesAlign": assetsController.yThemesAlign().text,
        "xSettingsAlign": assetsController.xSettingsAlign().text,
        "ySettingsAlign": assetsController.ySettingsAlign().text,
        "xMusicAlign": assetsController.xMusicAlign().text,
        "yMusicAlign": assetsController.yMusicAlign().text,
        "xCalcAlign": assetsController.xCalcAlign().text,
        "yCalcAlign": assetsController.yCalcAlign().text,
        "xClockAlign": assetsController.xClockAlign().text,
        "yClockAlign": assetsController.yClockAlign().text,
        "xSecurityAlign": assetsController.xSecurityAlign().text,
        "ySecurityAlign": assetsController.ySecurityAlign().text,
        "xGalleryAlign": assetsController.xGalleryAlign().text,
        "yGalleryAlign": assetsController.yGalleryAlign().text,
        "xRadioAlign": assetsController.xRadioAlign().text,
        "yRadioAlign": assetsController.yRadioAlign().text,
        "xScannerAlign": assetsController.xScannerAlign().text,
        "yScannerAlign": assetsController.yScannerAlign().text,
        "xRecorderAlign": assetsController.xRecorderAlign().text,
        "yRecorderAlign": assetsController.yRecorderAlign().text,
        "xCompassAlign": assetsController.xCompassAlign().text,
        "yCompassAlign": assetsController.yCompassAlign().text,
        "xFileAlign": assetsController.xFileAlign().text,
        "yFileAlign": assetsController.yFileAlign().text,
        "angle1": assetsController.angle1().text,
        "angle2": assetsController.angle2().text,
        "angle3": assetsController.angle3().text,
        "angleDot": assetsController.angleDot().text,
        "angleAM": assetsController.angleAM().text,
        "angleWeek": assetsController.angleWeek().text,
        "angleDate": assetsController.angleDate().text,
        "angleMonth": assetsController.angleMonth().text,
        "angleMonthNum": assetsController.angleMonthNum().text,
        "angleYear": assetsController.angleYear().text,
        "angleCalender": assetsController.angleCalender().text,
        "angleTemp": assetsController.angleTemp().text,
        "angleWeatherIcon": assetsController.angleWeatherIcon().text,
        "angleBtr": assetsController.angleBtr().text,
        "angleMusicBg": assetsController.angleMusicBg().text,
        "anglePrevBtn": assetsController.anglePrevBtn().text,
        "angleNextBtn": assetsController.angleNextBtn().text,
        "angleCam": assetsController.angleCam().text,
        "angleAnalog": assetsController.angleAnalog().text,
        "angleThemes": assetsController.angleThemes().text,
        "angleSettings": assetsController.angleSettings().text,
        "angleMusic": assetsController.angleMusic().text,
        "angleCalc": assetsController.angleCalc().text,
        "angleClock": assetsController.angleClock().text,
        "angleSecurity": assetsController.angleSecurity().text,
        "angleGallery": assetsController.angleGallery().text,
        "angleRadio": assetsController.angleRadio().text,
        "angleScanner": assetsController.angleScanner().text,
        "angleRecorder": assetsController.angleRecorder().text,
        "angleCompass": assetsController.angleCompass().text,
        "angleFile": assetsController.angleFile().text,
        "alpha1": assetsController.alpha1().text,
        "alpha2": assetsController.alpha2().text,
        "alpha3": assetsController.alpha3().text,
        "alphaDot": assetsController.alphaDot().text,
        "alphaAM": assetsController.alphaAM().text,
        "alphaWeek": assetsController.alphaWeek().text,
        "alphaDate": assetsController.alphaDate().text,
        "alphaMonth": assetsController.alphaMonth().text,
        "alphaMonthNum": assetsController.alphaMonthNum().text,
        "alphaYear": assetsController.alphaYear().text,
        "alphaCalender": assetsController.alphaCalender().text,
        "alphaTemp": assetsController.alphaTemp().text,
        "alphaWeatherIcon": assetsController.alphaWeatherIcon().text,
        "alphaBtr": assetsController.alphaBtr().text,
        "alphaMusicBg": assetsController.alphaMusicBg().text,
        "alphaPrevBtn": assetsController.alphaPrevBtn().text,
        "alphaNextBtn": assetsController.alphaNextBtn().text,
        "alphaCam": assetsController.alphaCam().text,
        "alphaAnalog": assetsController.alphaAnalog().text,
        "alphaThemes": assetsController.alphaThemes().text,
        "alphaSettings": assetsController.alphaSettings().text,
        "alphaMusic": assetsController.alphaMusic().text,
        "alphaCalc": assetsController.alphaCalc().text,
        "alphaClock": assetsController.alphaClock().text,
        "alphaSecurity": assetsController.alphaSecurity().text,
        "alphaGallery": assetsController.alphaGallery().text,
        "alphaRadio": assetsController.alphaRadio().text,
        "alphaScanner": assetsController.alphaScanner().text,
        "alphaRecorder": assetsController.alphaRecorder().text,
        "alphaCompass": assetsController.alphaCompass().text,
        "alphaFile": assetsController.alphaFile().text,
        "seq1": assetsController.seq1().text,
        "seq2": assetsController.seq2().text,
        "seq3": assetsController.seq3().text,
        "seqDot": assetsController.seqDot().text,
        "seqAM": assetsController.seqAM().text,
        "seqWeek": assetsController.seqWeek().text,
        "seqDate": assetsController.seqDate().text,
        "seqMonth": assetsController.seqMonth().text,
        "seqMonthNum": assetsController.seqMonthNum().text,
        "seqYear": assetsController.seqYear().text,
        "seqTemp": assetsController.seqTemp().text,
        "seqWeatherIcon": assetsController.seqWeatherIcon().text,
        "seqBtr": assetsController.seqBtr().text,
        "seqMusicBg": assetsController.seqMusicBg().text,
        "seqPrevBtn": assetsController.seqPrevBtn().text,
        "seqNextBtn": assetsController.seqNextBtn().text,
        "seqCam": assetsController.seqCam().text,
        "seqAnalog": assetsController.seqAnalog().text,
        "seqThemes": assetsController.seqThemes().text,
        "seqSettings": assetsController.seqSettings().text,
        "seqMusic": assetsController.seqMusic().text,
        "seqCalc": assetsController.seqCalc().text,
        "seqClock": assetsController.seqClock().text,
        "seqSecurity": assetsController.seqSecurity().text,
        "seqGallery": assetsController.seqGallery().text,
        "seqRadio": assetsController.seqRadio().text,
        "seqScanner": assetsController.seqScanner().text,
        "seqRecorder": assetsController.seqRecorder().text,
        "seqCompass": assetsController.seqCompass().text,
        "seqFile": assetsController.seqFile().text,
        "diffCalender": assetsController.diffCalender().text,
        "lockNormal": assetsController.lockNormal.value ? '1' : '0',
        "lockPress": assetsController.lockPress.value ? '1' : '0',
        "lockSlide": assetsController.lockSlide.value ? '1' : '0',
        "lockSlideDown": assetsController.lockSlideDown().text,
        "lockSideUnlLeft": assetsController.lockSideUnlLeft().text,
        "scaleLockPress": assetsController.scaleLockPress().text,
        "xLockPressAlign": assetsController.xLockPressAlign().text,
        "yLockPressAlign": assetsController.yLockPressAlign().text,
        "scaleText": assetsController.scaleText().text,
        "songTitle": "'" + assetsController.songTitle().text + "'",
        "songArtist": "'" + assetsController.songArtist().text + "'",
        "colorText": "'#" + assetsController.colorText().text + "'",
        "xTextAlign": assetsController.xTextAlign().text,
        "yTextAlign": assetsController.yTextAlign().text,
        "scaleCity": assetsController.scaleCity().text,
        "alphaCity": assetsController.alphaCity().text,
        "angleCity": assetsController.angleCity().text,
        "xCityAlign": assetsController.xCityAlign().text,
        "yCityAlign": assetsController.yCityAlign().text,
        "cityAlignment": "'" + assetsController.cityAlignment().text + "'",
        "cityColor": "'#" + assetsController.cityColor().text + "'",
        "nameCity": "'" + assetsController.nameCity().text + "'",
      });
  }
}
