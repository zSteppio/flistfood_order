part of 'flistfood_order_bloc.dart';

sealed class FlistfoodOrderState extends Equatable {
  const FlistfoodOrderState();

  @override
  List<Object?> get props => [];
}

final class FlistfoodOrderInitial extends FlistfoodOrderState {}

final class FlistfoodOrderLoadingState extends FlistfoodOrderState {
  final FFOrder? order;
  const FlistfoodOrderLoadingState({required this.order});

  @override
  List<Object?> get props => [order];
}

final class FlistfoodOrderErrorState extends FlistfoodOrderState {
  final bool isUnauthenticated;
  const FlistfoodOrderErrorState({required this.isUnauthenticated});

  @override
  List<Object?> get props => [isUnauthenticated];
}

final class FlistfoodOrderSuccessState extends FlistfoodOrderState {
  final FFOrder? order;
  const FlistfoodOrderSuccessState({required this.order});

  @override
  List<Object?> get props => [order];
}

final class FlistfoodOrderDeletedState extends FlistfoodOrderState {
  const FlistfoodOrderDeletedState();

  @override
  List<Object?> get props => [];
}

final class FlistfoodOrderSendState extends FlistfoodOrderState {
  final FFOrderID? orderId;
  const FlistfoodOrderSendState({required this.orderId});

  @override
  List<Object?> get props => [orderId];
}
