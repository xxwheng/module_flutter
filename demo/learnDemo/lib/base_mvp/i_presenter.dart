abstract class IPresenter<T> {
  void attachView(T baseView);
  void detachView();
  bool isAttached();
}