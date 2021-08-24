enum Technical { android, kotlin, flutter, NetCore, SQL, SQLite, HiveSQL }

extension technicalText on Technical{

  String get text => _getName();

  String _getName(){
    switch(this){
      case Technical.android:
        return "Android";
      case Technical.flutter:
        return "Flutter";
      case Technical.NetCore:
        return ".NetCore";
      case Technical.SQL:
        return "SQL";
      case Technical.SQLite:
        return "SQLite";
      case Technical.HiveSQL:
        return  "HiveSQL";
      case Technical.kotlin:
        return "Kotlin";

      default:
        return "";
    }
  }

}