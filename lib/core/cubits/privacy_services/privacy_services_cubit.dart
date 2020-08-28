import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'privacy_services_cubit.freezed.dart';
part 'privacy_services_state.dart';

@lazySingleton
class PrivacyServicesCubit extends Cubit<PrivacyServicesState> {
  PrivacyServicesCubit() : super(PrivacyServicesState.empty());

  setLocationServiceEnabled(bool isLocationServiceEnabled) {
    emit(
      state.copyWith(
        isLocationServiceEnabled: isLocationServiceEnabled,
      ),
    );
  }
}
