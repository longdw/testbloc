enum ActionHeaderFlag {
  warranty,
  servicePart,
  materialPart,
  camera,
  charge
}

class ServiceActionBean {
  bool warranty = false;
  bool servicePart = false;
  bool materialPart = false;
  bool camera = false;
  bool charge = false;
  ActionHeaderFlag currentHeaderFlag;
}