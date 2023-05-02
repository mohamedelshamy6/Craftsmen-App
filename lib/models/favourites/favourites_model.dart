class FavouritesModel {
  int? id;
  int? workerId;
  Map? workerInformation;

  FavouritesModel({
    this.id,
    this.workerId,
    this.workerInformation,
  });

  FavouritesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    workerInformation=json['workerInformation'];
  }

  Map<String, dynamic> toJson() {
    return {
      'workerId': id,
    };
  }
}
