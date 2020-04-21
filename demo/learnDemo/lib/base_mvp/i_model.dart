
abstract class IModel<T> {

  /// 请求数据之前， 比如开启加载动画等
  void onBefore();

  /// 请求成功回调
  void onSuccess(T data);

  void onFailure(String msg);

  void onComplete();

  void onNetError();
  /// 数据异常
  void onDataError();
}