import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class InitSqlLite {
  static getDatabase() async {
      return openDatabase(
      join(await getDatabasesPath(), 'odisseia_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE questaoResposta("+
            "fkMissaoAluno INTEGER,"+
            "fkQuestao INTEGER,"+
            "fkAlternativa INTEGER,"+
            "tempoGasto INTEGER)",
        );
      },
      version: 1,
    );
  }
}