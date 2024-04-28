///isCodingWorkCompleted? => "yes, completed";
library;

class ResponseData {
  final bool isSuccess;
  final int statusCode;
  final String errorMessage;
  final dynamic responseData;

  ResponseData({
    required this.isSuccess,
    required this.statusCode,
    required this.responseData,
    this.errorMessage = 'Something went wrong!',
  });
}

// class ResponseData {
//   final bool isSuccess;
//   final int statusCode;
//   String errorMessage;
//   final dynamic responseData;
//
//   ResponseData({
//     required this.isSuccess,
//     required this.statusCode,
//     required this.responseData,
//     this.errorMessage = "Something went wrong!",
//   });
// }
