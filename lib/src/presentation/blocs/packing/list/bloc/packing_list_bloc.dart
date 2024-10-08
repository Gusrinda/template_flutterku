import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soa_jpt/src/core/model/status_page.dart';
import 'package:soa_jpt/src/data/models/response/packing/response_list_packing.dart';
import 'package:soa_jpt/src/domain/repository/packing_repository.dart';

part 'packing_list_event.dart';
part 'packing_list_state.dart';
part 'packing_list_bloc.freezed.dart';

class PackingListBloc extends Bloc<PackingListEvent, PackingListState> {
  final String userId;
  final PackingRepository packingRepository;

  PackingListBloc({
    required this.userId,
    required this.packingRepository,
  }) : super(PackingListState()) {
    on<GetData>(_onGetData);
  }

  FutureOr<void> _onGetData(
      GetData event, Emitter<PackingListState> emit) async {
    try {
      emit(state.copyWith(
        statusPage: LoadingPageStatus.loading,
      ));

      final result =
          await packingRepository.doGetPackingList(search: '', idSales: userId
              // page:
              // paginate: 1000,
              );

      if (result == null) {
        emit(state.copyWith(
          statusPage: LoadingPageStatus.failure,
          error: 'Gagal memperoleh data packing list',
        ));
        return;
      }

      emit(state.copyWith(
        statusPage: LoadingPageStatus.success,
        responseListPacking: result,
      ));
      
    } catch (e) {
      log('Bloc catch GetCustomer: $e');
      emit(state.copyWith(
        statusPage: LoadingPageStatus.failure,
        error: '$e',
      ));
    }
  }
}
