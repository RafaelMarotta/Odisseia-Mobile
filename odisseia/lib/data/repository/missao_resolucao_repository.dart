import 'package:odisseia/data/model/MissaoResolucaoDTO.dart';
import 'package:odisseia/data/sqlLite/init_sql_lite.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';
import 'package:sqflite/sqlite_api.dart';

class MissaoResolucaoRepository implements IMissaoResolutionRepository{

  @override
  Future<bool> salvarMissaoResolucao(List<MissaoResolucaoDTO> resolucao) async {
    try {
      await Http.post(ApiUtils.MISSAORESOLUCAO,resolucao.map((m) => m.toJson()).toList());
      return true;
    } catch (NotFoundException) {
      return false;
    }
  }

  Future<void> saveOrUpdate(MissaoResolucaoDTO dto) async {
    MissaoResolucaoDTO dtos = await fetchByResolucaoDTO(dto); 
    if(dtos != null) {
      await updateResolucao(dto);
    } else {
      await insertResolucao(dto);
    }
    return Future;
  }

  Future<void> insertResolucao(MissaoResolucaoDTO dto) async {
    final db = await InitSqlLite.getDatabase();
 
    await db.insert(
      'questaoResposta',
      dto.toJson(),
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
  }

  Future<void> updateResolucao(MissaoResolucaoDTO dto) async {
    final db = await InitSqlLite.getDatabase();

    await db.update(
      'questaoResposta',
       dto.toJson(),
       where: "fkMissaoAluno=? AND fkQuestao=?",
       whereArgs:[dto.fkMissaoAluno,dto.fkQuestao]
    );
  }

  Future<MissaoResolucaoDTO> fetchByResolucaoDTO(MissaoResolucaoDTO dto) async {
    final Database db = await InitSqlLite.getDatabase();
    final List<Map<String, dynamic>> maps = await db.query(
        'questaoResposta',
        where: "fkMissaoAluno=? AND fkQuestao=?", 
        whereArgs:[dto.fkMissaoAluno,dto.fkQuestao]
      );
    if(maps.length > 0) {
      return MissaoResolucaoDTO.fromJson(maps[0]);
    } else {
      return null;
    }
  }

  Future<List<MissaoResolucaoDTO>> fetchByMissaoByMissaoAlunoId(int missaoId) async{
     final Database db = await InitSqlLite.getDatabase();
     final List<Map<String, dynamic>> maps = await db.query(
       'questaoResposta',
        where: "fkMissaoAluno = ?",
        whereArgs: [missaoId]   
      );
    return List.generate(maps.length, (i) {
      return MissaoResolucaoDTO.fromJson(maps[i]);
    });
  }

  Future<List<MissaoResolucaoDTO>> fetchAll() async {
    final Database db = await InitSqlLite.getDatabase();
    final List<Map<String, dynamic>> maps = await db.query('questaoResposta',);
    return List.generate(maps.length, (i) {
      return MissaoResolucaoDTO.fromJson(maps[i]);
    });
  }

  Future<void> deleteAll() async {
    final db = await InitSqlLite.getDatabase();
    await db.delete('questaoResposta');
  }

}