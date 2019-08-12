import 'package:equatable/equatable.dart';
import 'package:testbloc/service_action_bean.dart';

class BaseServiceEvent extends Equatable {

  BaseServiceEvent([List props = const []]) : super(props);

}

///以下是工单信息录入的选择栏
class WarrantyActionEvent extends BaseServiceEvent {
  ServiceActionBean actionBean;
  WarrantyActionEvent(this.actionBean);
}