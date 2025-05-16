class TaskModel {
  late String id;
  late String title;
  String? description;
  List<String>? tags;

  TaskModel({
    required String id,
    required String title,
    String? description,
    List<String>? tags,
  });
}
