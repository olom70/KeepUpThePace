import 'package:args/args.dart';
import 'package:KeepUpThePace/KeepUpThePace.dart' as keepupthepace;
import 'package:KeepUpThePace/CompendiumOfPhysicalActivities.dart' as compendium;

ArgResults argResults;

void main(List<String> arguments) {
  final ArgParser argParser = new ArgParser()
    ..addOption('Profilename', abbr: 'n', defaultsTo: 'Claude?', help: "Name the profile")
    ..addOption('ProfileGoal', abbr: 'g', defaultsTo: 'Know my weekly needs', help: "What will be the use of this profile")
    ..addOption('MetricChoice', abbr: 'm', defaultsTo: 'iso', help: "Metric : Imperial or Iso ?")
    ..addOption('DefaultProfile', abbr: 'd', defaultsTo: 'Yes', help: "Define the profile as the default one loaded on start")
    ..addOption('Weight', abbr: 'e', defaultsTo: '67', help: "Your Weight")
    ..addOption('HeightIntegerPart', abbr: 'h', defaultsTo: '1', help: 'Your Height Integer part' )
    ..addOption('HeightDecimalPart', abbr: 't', defaultsTo: '72', help: 'Your Height (Decimal part)')
    ..addOption('Age', abbr: 'a', defaultsTo: '48', help: 'Your age')
    ..addOption('Wrist', abbr: 'r', defaultsTo: '16.5', help: 'Size of your wrist')
    ..addOption('Forearm', abbr: 'f', defaultsTo: '26', help: 'Length of your forearm')
    ..addOption('Waist', abbr: 's', defaultsTo: '92', help: 'Size of your Waist')
    ..addOption('Hips', abbr: 'i', defaultsTo: '91', help: 'Size of your Hips')
    ..addOption('Gender', abbr: 'w', defaultsTo: 'M', help: '(M)an or (W)oman ?')
    ..addOption('ActivityFactor', abbr: 'y', defaultsTo: 'lightlyActive', help: 'Your activity Factor')
    ..addFlag('help', abbr: 'p', negatable: false, help: 'Displays this help information.');

    argResults = argParser.parse(arguments);

    if (argResults['help']) {
    print("""
        ** HELP **
        ${argParser.usage}
        """);
  }

  // taking into account the arguments
    final String profileName = argResults['Profilename'];
    final String profileGoal = argResults['ProfileGoal'];
    final String metricChoice = argResults['MetricChoice'];
    final String defaultProfile = argResults['DefaultProfile'];
    final int weight = int.parse(argResults['Weight']);
    final int heightIntegerPart = int.parse(argResults['HeightIntegerPart']);
    final int heightDecimalPart = int.parse(argResults['HeightDecimalPart']);
    final int age = int.parse(argResults['Age']);
    final double wrist = double.parse(argResults['Wrist']);
    final double forearm = double.parse(argResults['Forearm']);
    final double waist = double.parse(argResults['Waist']);
    final double hips = double.parse(argResults['Hips']);
    final String gender = argResults['Gender'];
    final String activityFactor = argResults['ActivityFactor'];

    // setting the profile facts
    keepupthepace.Profile profile = new keepupthepace.Profile(profileName);
    profile.weight = weight;
    profile.heightIntegerPart = heightIntegerPart;
    profile.heightDecimalPart = heightDecimalPart;
    profile.metricChoice = metricChoice;
    profile.age = age;
    profile.gender = gender;
    profile.activityFactor = activityFactor;
    profile.wrist = wrist;
    profile.waist = waist;
    profile.hips = hips;

    // infering the metrics of the current profile
    try {
      profile.computeBMI();
    }
    catch(e) {
      print('profile.computeBMI :');
      print (e.errMsg());
    }

    try {
      profile.computeBMR();
    }
    catch(e) {
      print('profile.computeBMR :');
      print (e.errMsg());
    }

    try {
      profile.computeHBE();
    }
    catch(e) {
      print('profile.computeHBE :');
      print (e.errMsg());
    }

    try {
      profile.computeFat();
    }
    catch(e) {
      print('profile.computeFat :');
      print (e.errMsg());
    }

    try {
      profile.computeRatio();
    }
    catch(e) {
      print('profile.computeRatio :');
      print (e.errMsg());
    }

    profile.verify();

  // check the good health of the compendium classes
  compendium.Bicycling bicyclingMET = new compendium.Bicycling();
  bicyclingMET.printValues();

  compendium.ConditioningExercise conditioningMET = new compendium.ConditioningExercise();
  conditioningMET.printValues();

  compendium.Dancing dancingMET = new compendium.Dancing();
  dancingMET.printValues();

  compendium.FishingHunting fishingHuntingMET = new compendium.FishingHunting();
  fishingHuntingMET.printValues();

  compendium.HomeActivity homeActivityMET = new compendium.HomeActivity();
  homeActivityMET.printValues();

  compendium.HomeRepair homeRepairMET = new compendium.HomeRepair();
  homeRepairMET.printValues();

  compendium.Inactivity inactivityMET = new compendium.Inactivity();
  inactivityMET.printValues();

  compendium.LawnAndGarden lawnAndGardenMET = new compendium.LawnAndGarden();
  lawnAndGardenMET.printValues();

  compendium.Miscellaneous miscellaneousMET = new compendium.Miscellaneous();
  miscellaneousMET.printValues();

  compendium.MusicPlaying musicPlayingMET = new compendium.MusicPlaying();
  musicPlayingMET.printValues();

  compendium.Occupation occupationMET = new compendium.Occupation();
  occupationMET.printValues();

  compendium.Running runningMET = new compendium.Running();
  runningMET.printValues();

  compendium.SelfCare selfCareMET = new compendium.SelfCare();
  selfCareMET.printValues();

  compendium.SexualActivity sexualActivityMET = new compendium.SexualActivity();
  sexualActivityMET.printValues();

  compendium.Sports sportsMET = new compendium.Sports();
  sportsMET.printValues();

  compendium.Transportation transportationMET = new compendium.Transportation();
  transportationMET.printValues();

  compendium.Walking walkingMET = new compendium.Walking();
  walkingMET.printValues();

  compendium.WaterActivities waterActivitiesMET = new compendium.WaterActivities();
  waterActivitiesMET.printValues();

  compendium.WinterActivities winterActivitiesMET = new compendium.WinterActivities();
  winterActivitiesMET.printValues();

  compendium.ReligiousActivities religiousActivitiesMET = new compendium.ReligiousActivities();
  religiousActivitiesMET.printValues();

  compendium.VolunteerActivities volunteerActivitiesMET = new compendium.VolunteerActivities();
  volunteerActivitiesMET.printValues();
}
