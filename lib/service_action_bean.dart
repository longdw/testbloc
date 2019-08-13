import 'package:equatable/equatable.dart';

enum ActionHeaderFlag { warranty, servicePart, materialPart, camera, charge }

class ServiceActionBean extends Equatable {
  final bool warranty;
  final bool servicePart;
  final bool materialPart;
  final bool camera;
  final bool charge;
  final ActionHeaderFlag currentHeaderFlag;

  ServiceActionBean({
    this.warranty = false,
    this.servicePart = false,
    this.materialPart = false,
    this.camera = false,
    this.charge = false,
    this.currentHeaderFlag,
  }) : super([
          warranty,
          servicePart,
          materialPart,
          camera,
          charge,
          currentHeaderFlag
        ]);

  ServiceActionBean copyWith({
    bool warranty,
    bool servicePart,
    bool materialPart,
    bool camera,
    bool charge,
    ActionHeaderFlag currentHeaderFlag,
  }) {
    return ServiceActionBean(
      warranty: warranty ?? this.warranty,
      servicePart: servicePart ?? this.servicePart,
      materialPart: materialPart ?? this.materialPart,
      camera: camera ?? this.camera,
      charge: charge ?? this.charge,
      currentHeaderFlag: currentHeaderFlag ?? this.currentHeaderFlag,
    );
  }
}
