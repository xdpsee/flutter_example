
class Result {
    int error;
    String message;
    Map<String, dynamic> data;

    Result(this.error, this.message, this.data);
    factory Result.fromJson(Map<String,dynamic> json) => new Result(
        json['error'] as int, 
        json['message'] as String,
        json['data'] as Map);
}