part of 'flistfood_order_bloc.dart';

@freezed
class FlistfoodOrderState with _$FlistfoodOrderState {
  const factory FlistfoodOrderState.initial() = _FlistfoodOrderInitial;

  const factory FlistfoodOrderState.loading({required FFOrder? order}) =
      _FlistfoodOrderLoadingState;

  const factory FlistfoodOrderState.error({required bool isUnauthenticated}) =
      _FlistfoodOrderErrorState;

  const factory FlistfoodOrderState.success({required FFOrder? order}) =
      _FlistfoodOrderSuccessState;

  const factory FlistfoodOrderState.send({
    required FFOrderID? orderId,
    required double totalPrice,
  }) = _FlistfoodOrderSendState;
}
