import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_tagihan.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';

part 'detail_tagihan_event.dart';
part 'detail_tagihan_state.dart';
part 'detail_tagihan_bloc.freezed.dart';

class DetailTagihanBloc extends Bloc<DetailTagihanEvent, DetailTagihanState> {
  final String? _bearerToken;
  final GeneralRepository _repository;

  DetailTagihanBloc(
      {required GeneralRepository repository, required String? token})
      : _repository = repository,
        _bearerToken = token,
        super(const DetailTagihanState()) {
    on<GetDetailTagihan>(_onGetDetailTagihan);
  }
  FutureOr<void> _onGetDetailTagihan(
      GetDetailTagihan event, Emitter<DetailTagihanState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getData = await _repository.getDetailTagihan(
          tokenUser: _bearerToken ?? '', id: event.id);

      List<Placemark> placemarksCheckIn = await placemarkFromCoordinates(
        double.tryParse(getData!.data!.checkIn!.geoLatitude!) ?? 0,
        double.tryParse(getData!.data!.checkIn!.geoLongitude!) ?? 0,
      );

      List<Placemark> placemarksCheckOut = await placemarkFromCoordinates(
        double.tryParse(getData!.data!.checkOut!.geoLatitude!) ?? 0,
        double.tryParse(getData!.data!.checkOut!.geoLongitude!) ?? 0,
      );

      String addressCheckIn =
          "${placemarksCheckIn[0].street}, ${placemarksCheckIn[0].locality}, ${placemarksCheckIn[0].administrativeArea}, ${placemarksCheckIn[0].country}";

      String addressCheckOut =
          "${placemarksCheckOut[0].street}, ${placemarksCheckOut[0].locality}, ${placemarksCheckOut[0].administrativeArea}, ${placemarksCheckOut[0].country}";

      emit(state.copyWith(
        alamatCheckIn: addressCheckIn,
        alamatCheckOut: addressCheckOut,
        responseDetailTagihan: getData,
        statusPage: LoadingPageStatus.success,
      ));
    } on ApiException catch (e) {
      EasyLoading.showError("API Error get data general.\n${e.toString()}");
      emit(state.copyWith(
        errorMessage: "CATCH EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    } catch (e) {
      EasyLoading.showError("System Error get data general.\n${e.toString()}");
      emit(state.copyWith(
        errorMessage: "CATCH EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    }
  }
}
