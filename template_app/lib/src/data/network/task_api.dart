import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_app/src/domain/dto/task_dto.dart';

part 'task_api.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class TaskApi {
  factory TaskApi(Dio dio, {String baseUrl}) = _TaskApi;

  @GET('/tasks')
  Future<List<Task>> getTasks();
}