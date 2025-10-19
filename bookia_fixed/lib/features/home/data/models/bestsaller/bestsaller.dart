import 'data.dart';

class Bestsaller {
  Data? data;
  String? message;
  List<dynamic>? error;
  int? status;

  Bestsaller({this.data, this.message, this.error, this.status});

  factory Bestsaller.fromjson(Map<String, dynamic> json) {
    return Bestsaller(
      data: json['data'] == null
          ? null
          : Data.fromjson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      error: json['error'] as List<dynamic>?,
      status: json['status'] as int?,
    );
  }

  Map<String, dynamic> tojson() {
    return {
      'data': data?.tojson(),
      'message': message,
      'error': error,
      'status': status,
    };
  }
}
