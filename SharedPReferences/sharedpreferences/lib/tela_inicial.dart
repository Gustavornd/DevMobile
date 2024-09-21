import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool _notificacoes = false;
  bool _somAtivado = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _carregarDados();
  }

  final TextEditingController _campoTextoController = TextEditingController();

  Future<void> _salvarDados() async {
    final preferencias = await SharedPreferences.getInstance();
    await preferencias.setString("usuario", _campoTextoController.text);
    await preferencias.setBool("notificacoes", _notificacoes);
    await preferencias.setBool("som", _somAtivado);
  }

  Future<void> _carregarDados() async {
    final preferencias = await SharedPreferences.getInstance();
    setState(() {
      _campoTextoController.text =
          preferencias.getString("usuario") ?? "Sem dados";
      _notificacoes = preferencias.getBool("notificacoes") ?? false;
      _somAtivado = preferencias.getBool("som") ?? false;
    });
  }

  Future<void> _removerDados() async {
    final preferencias = await SharedPreferences.getInstance();
    await preferencias.remove("usuario");
    await preferencias.remove("notificacoes");
    await preferencias.remove("som");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preferências do Usuário"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: "Digite algo"),
              controller: _campoTextoController,
            ),
            CheckboxListTile(
              title: const Text("Notificações Ativadas"),
              subtitle: const Text("Ativar notificações do aplicativo"),
              activeColor: Colors.deepPurple,
              secondary: const Icon(Icons.notifications),
              value: _notificacoes,
              onChanged: (bool? valor) {
                setState(() {
                  _notificacoes = valor!;
                });
              },
            ),
            SwitchListTile(
              title: const Text("Ativar Som"),
              value: _somAtivado,
              activeColor: Colors.purpleAccent,
              onChanged: (bool valor) {
                setState(() {
                  _somAtivado = valor;
                });
              },
            ),
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                      ),
                      onPressed: _salvarDados,
                      child: const Text(
                        "Salvar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                      ),
                      onPressed: _carregarDados,
                      child: const Text(
                        "Carregar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                      ),
                      onPressed: _removerDados,
                      child: const Text(
                        "Remover",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
