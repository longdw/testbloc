import 'package:bloc/bloc.dart';
import 'package:testbloc/service_action_bean.dart';
import 'package:testbloc/service_action_event.dart';
import 'package:testbloc/service_action_state.dart';

class ServiceActionBloc extends Bloc<BaseServiceEvent, BaseServiceState> {
  @override
  // TODO: implement initialState
  get initialState => ServiceActionState.empty();

  @override
  Stream<BaseServiceState> mapEventToState(BaseServiceEvent event) async* {
    if (event is WarrantyActionEvent) {
      event.actionBean.warranty = !event.actionBean.warranty;
      event.actionBean.currentHeaderFlag = ActionHeaderFlag.warranty;
      yield ServiceActionState.update(event.actionBean);
    }
  }

}