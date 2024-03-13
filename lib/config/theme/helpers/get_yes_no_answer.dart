import 'package:yes_no_chat/domain/entities/message.dart';
import 'package:dio/dio.dart';
import 'package:yes_no_chat/infraestructure/models/get_yes_no_model.dart';

class GetYesNoAnser{
  final _dio = Dio();

  Future<Message> getAnswer()async{
    final response = await _dio.get('http://yesno.wtf/api');
    final YesNoModel ynModel = YesNoModel.fromJson(response.data);
    return ynModel.toMessageEntity();
  }


}