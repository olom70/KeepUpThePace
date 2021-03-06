import 'dart:io';
import 'dart:math';
import 'phrasebook.dart' as phrasebook;
//
// Exception handling
//
class ProfileNotEnoughArguments implements Exception {
  String rootCause;
  ProfileNotEnoughArguments (this.rootCause);
  String errMsg() => phrasebook.PhraseBook.notEnoughArguments(this.rootCause);

}

class ProfileNotAProperValue implements Exception {
  //
  String property;
  ProfileNotAProperValue (this.property);
String errMsg() => phrasebook.PhraseBook.notAProperValue(this.property);

}

// class to manage ap profile
class Profile {

  //facts
  String profileName;
  String fileName;
  String profileGoal;
  String metricChoice;
  String defaultProfile;
  double weight;
  int heightIntegerPart;
  int heightDecimalPart;
  int age;
  double wrist;
  double forearm;
  double waist;
  double hips;
  String gender;
  String activityFactor;
  // infered
  double bBMI; // classic way to calculate it
  double nBMI; // new way to calculate it
  double bBMR;
  double rRMRcal;
  double rRMRml;
  double hHBE;
  double fatPercentage;
  double bodyFatWeight;
  double leanBodyMass;
  double ratio;


// constructor
  Profile (String profilename) {
    this.profileName = profilename;
    fileName = profileName.trim().toLowerCase().replaceAll(new RegExp(r'[];\\/:*?\<>|&'), ' ');
  }

  computeBMI() {
    // classic way
    // http://www.bmi-calculator.net/bmi-formula.php
    // Imperial : BMI = (Weight in Pounds / (Height in inches x Height in inches)) x 703
    // ISO : BMI = (Weight in Kilograms / (Height in Meters x Height in Meters))
    //
    // new way
    // https://www.medicalnewstoday.com/articles/255712.php
    // ISO: BMI = 1.3 x weight (kg) / height (m)2.5
    // or
    // imperial : BMI = 5734*weight(lb)/height(in)2.5
    if ((weight == null) || (heightIntegerPart == null) || (heightDecimalPart == null) || (metricChoice == null)) {
      throw new ProfileNotEnoughArguments('$weight $heightIntegerPart $heightDecimalPart $metricChoice');
  } else {
      switch(metricChoice) {
        case 'imperial':
          bBMI = 10000*(weight / pow((heightIntegerPart*12+heightDecimalPart),2))*703;
          nBMI = 5734*weight / pow(heightIntegerPart*12+heightDecimalPart,2.5);
          break;
        case 'iso':
          bBMI = 10000*(weight / pow((heightIntegerPart*100+heightDecimalPart),2));
          nBMI = 100000*(weight*1.3 / pow((heightIntegerPart*100+heightDecimalPart),2.5));
          break;
        default:
          throw new ProfileNotAProperValue('metricChoice : $metricChoice');
      }
    }
  }

  double computeRMRml(double rRMRcal, double weight) {
    // To convert kilocalories per day obtained from the Harris Benedict equation2 to ml.kg-1.min-1, the following formula is used.
    //     kcal.day-1/1440 = kcal.min-1; kcal.min-1/5 = L.min-1; L.min-1/(weight kg)x1000 = ml.kg-1.min-1
    double rRMRml;
    rRMRml = (rRMRcal / 1440 / 5 / weight)*1000;
    return rRMRml;
  }

  computeRMR(int version) {
    // RMR =  resting metabolic rate
    // https://sites.google.com/site/compendiumofphysicalactivities/corrected-mets
    // https://en.wikipedia.org/wiki/Harris–Benedict_equation
    // https://en.wikipedia.org/wiki/Metabolic_equivalent
        if ((weight == null) || (heightIntegerPart == null) || (heightDecimalPart == null) || (metricChoice == null) || (age == null) || (gender == null)) {
          throw new ProfileNotEnoughArguments('$weight $heightIntegerPart $heightDecimalPart $metricChoice $age $gender');
        } else {
          switch(metricChoice) {
            case 'imperial':
              switch(gender) {
                case 'W':
                  switch(version) {
                    case 1918:
                      rRMRcal = 655.0955 + (9.5634*(weight*0.453592)) + (1.8496*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (4.6756*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    case 1984:
                      rRMRcal = 447.593 + (9.247*(weight*0.453592)) + (3.098*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (4.330*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    case 1990:
                      rRMRcal = -161 + (10*(weight*0.453592)) + (6.25*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (5*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    default:
                      throw new ProfileNotAProperValue('version : $version');
                  }
                  break;
                case 'M':
                switch(version) {
                    case 1918:
                      rRMRcal = 66.4730 + (13.7516*(weight*0.453592)) + (5.033*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (6.7550*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    case 1984:
                      rRMRcal = 88.362 + (13.397*(weight*0.453592)) + (4.799*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (5.677*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    case 1990:
                      rRMRcal = 5 + (10*(weight*0.453592)) + (6.25*((heightIntegerPart*12+heightDecimalPart)*0.0508)) - (5*age);
                      rRMRml = computeRMRml(rRMRcal, weight);
                      break;
                    default:
                      throw new ProfileNotAProperValue('version : $version');
                  }
                  break;
                default:
                  throw new ProfileNotAProperValue('gender : $gender');
              }
              break;
            case 'iso':
            switch(gender) {
              case 'W':
              switch(version) {
                  case 1918:
                    rRMRcal = 655.0955 + (9.5634*weight) + (1.8496*(heightIntegerPart*100+heightDecimalPart)) - (4.6756*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  case 1984:
                    rRMRcal = 447.593 + (9.247*weight) + (3.098*(heightIntegerPart*100+heightDecimalPart)) - (4.330*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  case 1990:
                    rRMRcal = -161 + (10*weight) + (6.25*(heightIntegerPart*100+heightDecimalPart)) - (5*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  default:
                    throw new ProfileNotAProperValue('version : $version');
                }
                break;
              case 'M':
              switch(version) {
                  case 1918:
                    rRMRcal = 66.4730 + (13.7516*weight) + (5.0033*(heightIntegerPart*100+heightDecimalPart)) - (6.7550*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  case 1984:
                    rRMRcal = 88.362 + (13.397*weight) + (4.799*(heightIntegerPart*100+heightDecimalPart)) - (5.677*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  case 1990:
                    rRMRcal = 5 + (10*weight) + (6.25*(heightIntegerPart*100+heightDecimalPart)) - (5*age);
                    rRMRml = computeRMRml(rRMRcal, weight);
                    break;
                  default:
                    throw new ProfileNotAProperValue('version : $version');
                }
                break;
              default:
                  throw new ProfileNotAProperValue('gender : $gender');
              }
              break;
            default:
              throw new ProfileNotAProperValue('metricChoice : $metricChoice');
          }
       }
  }

  double getCorrectedMetValue (double metValue) {
    double correctedMetValue;
    if ((metValue == null) || (rRMRml == null)) {
      throw new ProfileNotAProperValue('metValue/RMRml : $metValue/$rRMRml');
    } else {
      correctedMetValue = metValue * (3.5 / rRMRml);
    }
    return correctedMetValue;
  }


  computeHBE() {
    //http://www.bmi-calculator.net/bmr-calculator/harris-benedict-equation/
    //If you are sedentary (little or no exercise) : Calorie-Calculation = BMR x 1.2
    //If you are lightly active (light exercise/sports 1-3 days/week) : Calorie-Calculation = BMR x 1.375
    //If you are moderatetely active (moderate exercise/sports 3-5 days/week) : Calorie-Calculation = BMR x 1.55
    //If you are very active (hard exercise/sports 6-7 days a week) : Calorie-Calculation = BMR x 1.725
    //If you are extra active (very hard exercise/sports & physical job or 2x training) : Calorie-Calculation = BMR x 1.9
    if ((bBMR == null) || (activityFactor == null)) {
      throw new ProfileNotEnoughArguments('$bBMR $activityFactor');
    } else {
      switch(activityFactor) {
        case 'sedentary':
          hHBE = bBMR * 1.2;
          break;
        case 'lightlyActive':
          hHBE = bBMR * 1.375;
          break;
        case 'moderatelyActive':
          hHBE = bBMR * 1.55;
          break;
        case 'veryActive':
          hHBE = bBMR * 1.725;
          break;
        case 'extraActive':
          hHBE = bBMR * 1.9;
          break;
        default:
          throw new ProfileNotAProperValue('activityFactor : $activityFactor');
      }
    }
  }

  computeFat() {
  //http://www.calculator.net/body-fat-calculator.html
  //body fat calculator formula for man:
  //495/(1.0324-0.19077(LOG(waist-neck))+0.15456(LOG(height)))-450
  //
  //body fat calculator formula for woman:
  //495/(1.29579-0.35004(LOG(waist+hip-neck))+0.22100(LOG(height)))-450
    if ((metricChoice == null) || (waist == null) || (hips == null) || (gender == null)) {
      throw new ProfileNotEnoughArguments('$metricChoice $waist $hips $gender');
    } else {
      switch(metricChoice) {
        case('imperial'):
          switch(gender) {
            case('W'):
              fatPercentage = 495 / (
                1.29579-0.35004*(log(waist+hips-wrist))
                + 0.22100*(log((heightIntegerPart*12+heightDecimalPart)))
                ) - 450;
            break;
            case('M'):
              fatPercentage = 495 / (
                1.0324-0.19077*(log(waist-wrist))
                + 0.15456*(log((heightIntegerPart*12+heightDecimalPart)))
              ) - 450;
            break;
            default:
              throw new ProfileNotAProperValue('gender : $gender');
          }
          break;
          case('iso'):
            switch(gender) {
              case('W'):
                fatPercentage = 495 / (
                  1.29579-0.35004*(log(waist+hips-wrist))
                  + 0.22100*(log((heightIntegerPart*100+heightDecimalPart)))
                  ) - 450;
              break;
              case('M'):
                fatPercentage = 495 / (
                  1.0324-0.19077*(log(waist-wrist))
                  + 0.15456*(log((heightIntegerPart*100+heightDecimalPart)))
                ) - 450;
              break;
              default:
                throw new ProfileNotAProperValue('gender : $gender');
            }
            break;
          default:
            throw new ProfileNotAProperValue('metricChoice : $metricChoice');
        }
      }
    }

    computeRatio() {
      if ((waist == null) || (hips == null)) {
        throw new ProfileNotEnoughArguments('$waist $hips');
      } else {
        ratio = waist / hips;
      }
    }

  saveFile() {
    new File(profileName).exists();
  }


  verify() {
    print('Hi my name is : $profileName\n');
    print('filename is : $fileName\n');
    print('Weight :$weight');
    print('old BMI : $bBMI');
    print('new BMI : $nBMI');
    print('BMR : $bBMR');
    print('HBE : $hHBE');
    print('fatPercentage : $fatPercentage');
    print('ratio : $ratio');
  }

}
