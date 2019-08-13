import 'package:equatable/equatable.dart';
import 'package:testbloc/service_action_bean.dart';

abstract class BaseServiceState extends Equatable {
  BaseServiceState([List props = const []]) : super(props);
}

class ServiceActionState extends BaseServiceState {
  ServiceActionState(this.actionBean) : super([actionBean]);

  final ServiceActionBean actionBean;

  factory ServiceActionState.empty() {
    return ServiceActionState(
      ServiceActionBean(
        warranty: false,
        charge: false,
        servicePart: false,
        camera: false,
        materialPart: false,
      ),
    );
  }
}
