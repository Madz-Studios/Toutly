import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cloud_function_call_cubit.freezed.dart';
part 'cloud_function_call_state.dart';

@lazySingleton
class CloudFunctionCallCubit extends Cubit<CloudFunctionCallState> {
  CloudFunctionCallCubit() : super(CloudFunctionCallState.empty());

  sendMessageNotification({
    @required List<String> tokens,
    @required String title,
    @required String body,
  }) async {
    emit(CloudFunctionCallState.loading());
    try {
      final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
        functionName: 'sendMessageNotificationToDevice',
      )..timeout = const Duration(seconds: 30);

      dynamic result = await callable.call(<String, dynamic>{
        'tokens': tokens,
        'title': title,
        'body': body,
      });
      print(result.toString());
      emit(CloudFunctionCallState.success(info: result.toString()));
    } on CloudFunctionsException catch (e) {
      emit(CloudFunctionCallState.failure(info: e.message));
      print('caught firebase functions CloudFunctionsException exception');
      print(e.code);
      print(e.message);
      print(e.details);
    } on PlatformException catch (e) {
      emit(CloudFunctionCallState.failure(info: e.message));
      print('caught firebase functions PlatformException exception');
      print(e.code);
      print(e.message);
      print(e.details);
    } catch (e) {
      emit(CloudFunctionCallState.failure(info: e.message));
      print('caught generic exception');
      print(e);
    }
  }
}
