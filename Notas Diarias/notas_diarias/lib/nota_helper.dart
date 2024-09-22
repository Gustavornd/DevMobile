import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../nota.dart';

class NotaHelper {
  static const String tabela = "tblNota";

  static final NotaHelper _instancia = NotaHelper._interno();
  factory NotaHelper() => _instancia;

  NotaHelper._interno();

  Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _inicializarDB();
    return _db!;
  }

  Future<Database> _inicializarDB() async {
    final caminho = await getDatabasesPath();
    final dbPath = join(caminho, "notas.db");

    return openDatabase(dbPath, version: 1, onCreate: (db, version) {
      db.execute("CREATE TABLE $tabela ("
          "id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "titulo TEXT, "
          "descricao TEXT, "
          "data TEXT)");
    });
  }

  Future<int> inserirNota(Nota nota) async {
    var banco = await db;
    return await banco.insert(tabela, nota.toMap());
  }

  Future<List<Nota>> buscarNotas() async {
    var banco = await db;
    List<Map<String, dynamic>> resultado = await banco.query(tabela);
    return resultado.map((e) => Nota.fromMap(e)).toList();
  }

  Future<int> atualizarNota(Nota nota) async {
    var banco = await db;
    return await banco
        .update(tabela, nota.toMap(), where: "id = ?", whereArgs: [nota.id]);
  }

  Future<int> deletarNota(int id) async {
    var banco = await db;
    return await banco.delete(tabela, where: "id = ?", whereArgs: [id]);
  }
}
