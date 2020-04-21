import 'i_view.dart';
import 'i_presenter.dart';


abstract class BasePresenter<T extends IView> implements IPresenter<T> {
  T _view;

  @override
  void attachView(T baseView) {
    this._view = baseView;
    initView();
    initModel();
  }

  void initView();
  void initModel();

  @override
  void detachView() {
    this._view = null;
  }

  @override
  bool isAttached() {
    return this._view != null;
  }
}
