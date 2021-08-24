enum PositionJob { intern, mobileDeveloper, fullStackDeveloper }

extension PositionExtention on PositionJob{
  String get text=>_toString();

  String _toString() {
    switch(this){
      case PositionJob.intern:
        return "Intern";
      case PositionJob.mobileDeveloper:
        return "Mobile Developer";
      case PositionJob.fullStackDeveloper:
        return"Full Stack Developer";
      default:return "";
    }
  }
}