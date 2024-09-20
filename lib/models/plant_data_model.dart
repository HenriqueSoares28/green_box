class PlantDataModel {
  final String plantName;
  final String healthStatus;
  final String recommendedActions;

  PlantDataModel(
      {required this.plantName,
      required this.healthStatus,
      required this.recommendedActions});

  // Factory method para construir a partir de um JSON
  factory PlantDataModel.fromJson(Map<String, dynamic> json) {
    return PlantDataModel(
      plantName: json['plantName'],
      healthStatus: json['healthStatus'],
      recommendedActions: json['recommendedActions'],
    );
  }
}
