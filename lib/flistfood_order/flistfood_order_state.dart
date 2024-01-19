part of 'flistfood_order_bloc.dart';

@freezed
class FlistfoodOrderState with _$FlistfoodOrderState {
  const factory FlistfoodOrderState.initial() = _FlistfoodOrderInitial;

  const factory FlistfoodOrderState.loading({required FFOrder? order}) =
      _FlistfoodOrderLoadingState;

  const factory FlistfoodOrderState.success({
    required FFOrder? order,
    required FFOrderID? orderId,
    required double? totalPrice,
    required bool isSended,
    required bool is401,
  }) = _FlistfoodOrderSuccessState;
}
