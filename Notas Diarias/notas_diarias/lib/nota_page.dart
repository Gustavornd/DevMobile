import 'package:flutter/material.dart';

import 'package:notas_diarias/nota.dart';
import 'package:notas_diarias/nota_helper.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class NotasPage extends StatefulWidget {
  const NotasPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotasPageState createState() => _NotasPageState();
}

class _NotasPageState extends State<NotasPage> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();
  final NotaHelper _dbHelper = NotaHelper();
  List<Nota> _notas = [];

  _abrirFormulario({Nota? nota}) {
    String acao = nota == null ? "Adicionar" : "Editar";
    if (nota != null) {
      _tituloController.text = nota.titulo!;
      _descricaoController.text = nota.descricao!;
    } else {
      _tituloController.clear();
      _descricaoController.clear();
    }

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("$acao Nota"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  controller: _tituloController,
                  decoration: const InputDecoration(labelText: "Título"),
                ),
                TextField(
                  controller: _descricaoController,
                  decoration: const InputDecoration(labelText: "Descrição"),
                )
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancelar",
                    style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  _salvarAtualizarNota(notaExistente: nota);
                  Navigator.pop(context);
                },
                child: Text(acao,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 244, 210, 249))),
              )
            ],
          );
        });
  }

  _salvarAtualizarNota({Nota? notaExistente}) async {
    String titulo = _tituloController.text;
    String descricao = _descricaoController.text;

    if (notaExistente == null) {
      Nota novaNota = Nota(titulo, descricao, DateTime.now().toString());
      await _dbHelper.inserirNota(novaNota);
    } else {
      notaExistente.titulo = titulo;
      notaExistente.descricao = descricao;
      notaExistente.data = DateTime.now().toString();
      await _dbHelper.atualizarNota(notaExistente);
    }

    _recuperarNotas();
  }

  _recuperarNotas() async {
    List<Nota> notasRecuperadas = await _dbHelper.buscarNotas();
    setState(() {
      _notas = notasRecuperadas;
    });
  }

  _removerNota(int id) async {
    await _dbHelper.deletarNota(id);
    _recuperarNotas();
  }

  String _formatarData(String data) {
    initializeDateFormatting("pt_BR");
    var formatador = DateFormat.yMd("pt_BR");
    return formatador.format(DateTime.parse(data));
  }

  @override
  void initState() {
    super.initState();
    _recuperarNotas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Lista de Notas", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple[900],
      ),
      body: ListView.builder(
        itemCount: _notas.length,
        itemBuilder: (context, index) {
          final nota = _notas[index];
          return Dismissible(
            key: Key(nota.id.toString()),
            onDismissed: (direction) {
              _removerNota(nota.id!);
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Nota excluída')));
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            child: Card(
              child: ListTile(
                title: Text(nota.titulo ?? ''),
                subtitle:
                    Text("${_formatarData(nota.data!)} - ${nota.descricao}"),
                trailing: IconButton(
                  icon: const Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {
                    _abrirFormulario(nota: nota);
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[900],
        onPressed: () => _abrirFormulario(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
