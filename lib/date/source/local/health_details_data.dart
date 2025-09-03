import 'package:dashboard_ui_1/date/models/health_model.dart';

class HealthDetailsData{
  final List<HealthModel> healthData = [
    HealthModel(icon: "assets/icons/burn.png", title:"Calories burned" , value: "305"),
    HealthModel(icon: "assets/icons/steps.png", title:"Steps" , value: "10.983"),
    HealthModel(icon: "assets/icons/distance.png", title:"Distance" , value: "7km"),
    HealthModel(icon: "assets/icons/sleep.png", title:"Sleep" , value: "7h 48m"),
  ];
}