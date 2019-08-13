import 'package:bloc/bloc.dart';
import 'package:testbloc/service_action_bean.dart';
import 'package:testbloc/service_action_event.dart';
import 'package:testbloc/service_action_state.dart';

class ServiceActionBloc extends Bloc<BaseServiceEvent, BaseServiceState> {
  @override
  get initialState => ServiceActionState.empty();

  @override
  Stream<BaseServiceState> mapEventToState(BaseServiceEvent event) async* {
    if (event is WarrantyActionEvent) {
      yield ServiceActionState(
        event.actionBean.copyWith(
          warranty: !event.actionBean.warranty,
          currentHeaderFlag: ActionHeaderFlag.warranty,
        ),
      );
    }
  }

  @override
  void onTransition(Transition<BaseServiceEvent, BaseServiceState> transition) {
    super.onTransition(transition);
    print(transition);
  }
}
