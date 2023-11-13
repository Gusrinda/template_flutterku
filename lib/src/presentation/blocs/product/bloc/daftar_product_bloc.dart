import 'dart:async';

import 'package:becca_supir/src/core/model/status_page.dart';
import 'package:becca_supir/src/data/models/response/response_list_product/response_list_product.dart';
import 'package:becca_supir/src/domain/domain.dart';
import 'package:becca_supir/src/domain/repository/productRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daftar_product_event.dart';
part 'daftar_product_state.dart';
part 'daftar_product_bloc.freezed.dart';

class DaftarProductBloc extends Bloc<DaftarProductEvent, DaftarProductState> {
  ProductRepository _productRepository;

  DaftarProductBloc({
    required ProductRepository productRepository,
  })  : _productRepository = productRepository,
        super(const DaftarProductState()) {
    on<GetListDaftarProduct>(_onGetListDaftarProduct);
  }

  FutureOr<void> _onGetListDaftarProduct(
      GetListDaftarProduct event, Emitter<DaftarProductState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getListProduct = await _productRepository.getDaftarProduct();

      emit(state.copyWith(
        responseListProduct: getListProduct,
        statusPage: LoadingPageStatus.success,
      ));
    } on ApiException catch (e) {
      emit(state.copyWith(
        error: "API EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: "CATCH EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    }
  }
}
