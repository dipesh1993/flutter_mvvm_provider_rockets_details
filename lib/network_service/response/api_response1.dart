import 'status.dart';

class ApiResponse1<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse1(this.status, this.data, this.message);

  ApiResponse1.none() : status = Status.NONE;

  ApiResponse1.loading() : status = Status.LOADING;

  ApiResponse1.success(this.data) : status = Status.SUCCESS;

  ApiResponse1.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}
