import 'package:equatable/equatable.dart';
import 'package:testbloc/service_action_bean.dart';

abstract class BaseServiceState extends Equatable {

  BaseServiceState([List props = const []]) : super(props);

}

class ServiceActionState extends BaseServiceState {
  ServiceActionState(this.actionBean);

  ServiceActionBean actionBean;

  factory ServiceActionState.update(ServiceActionBean actionBean) {
    return ServiceActionState(actionBean);
  }

  factory ServiceActionState.empty() {
    ServiceActionBean actionBean = ServiceActionBean();
    actionBean.warranty = false;
    actionBean.charge = false;
    actionBean.servicePart = false;
    actionBean.camera = false;
    actionBean.materialPart = false;

    return ServiceActionState(actionBean);
  }
}