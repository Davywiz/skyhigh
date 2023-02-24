import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

import '../../../models/product.dart';

@immutable
abstract class GetDataState extends Equatable {
  const GetDataState();
  @override
  List<Object?> get props => [];
}

class GetDataInitial extends GetDataState {
  const GetDataInitial();
}

class LoadingState extends GetDataState {
  const LoadingState();
}

class ErrorState extends GetDataState {
  final String errorText;
  const ErrorState(this.errorText);

  @override
  List<Object?> get props => [errorText];
}

class LoadedState extends GetDataState {
  final List<Product> data;
  const LoadedState(this.data);

  @override
  List<Object?> get props => [data];
}
