import 'package:test/test.dart';
import 'package:KeepUpThePace/KeepUpThePace.dart' as keepupthepace;
import 'package:KeepUpThePace/CompendiumOfPhysicalActivities.dart' as compendium;

void main() {

  // corrected MET
  // Female / Normal Weight
  // 60 kg, 168 cm
  // 35 ans
  keepupthepace.Profile profile = new keepupthepace.Profile('test')
  ..weight = 60.0
  ..heightIntegerPart = 1
  ..heightDecimalPart = 68
  ..metricChoice = 'iso'
  ..age = 35
  ..gender = 'W';

  profile.computeRMR();
  test('calculate RMR (Calorie)', () {
    expect(profile.rRMRcal, 1375.9863);
  });

  profile.computeRMR();
  test('calculate RMR (ml)', () {
    expect(profile.rRMRml, 3.1851534722222223);
  });


  compendium.Sports sportsMET = new compendium.Sports();
  test('obtain MET of 15550', (){
    expect(sportsMET.getMetValue(15550), 12.3);
  });

  test('calculate CorrectedMET', () {
    expect(profile.getCorrectedMetValue(12.3), 13.515832243387889);
  });

}
