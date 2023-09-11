import 'package:flutter/material.dart';
import 'package:taniacast/aluno.dart';
import 'package:taniacast/aluno_repository.dart';


class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final AlunoRepository alunoRepository = AlunoRepository();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _sobrenomeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  


  @override
  Widget build(BuildContext context) {
    AlunoRepository alrepo = AlunoRepository();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Cadastro de Alunos"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/lista");
              },
              icon: const Icon(Icons.list_alt_sharp,))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //imagem
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Icons.person, size: 100, color: Theme.of(context).primaryColor,)),

              //cadastro
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nomeController,
                          decoration: const InputDecoration(
                            labelText: "Nome",
                            hintText: "Digite o nome do aluno",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Digite o nome do aluno!";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          controller: _sobrenomeController,
                          decoration: const InputDecoration(
                            labelText: "sobrenome",
                            hintText: "Digite o sobrenome do aluno",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Digite o  sobrenome!";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton.icon(
                label: const Text("Cadastrar Aluno"),
                icon: const Icon(Icons.add),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String nome = _nomeController.text;
                     String sobrenome = _sobrenomeController.text;

                    Aluno aluno = Aluno(
                      nome: nome,
                      sobrenome: sobrenome,
                    );
                    alrepo.adicionarAluno(aluno);

                    limparCampos();
                    mostrarSucesso();
                    _formKey.currentState!.reset();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void mostrarSucesso() {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Aluno cadastrado com sucesso!")));
  }

  void limparCampos() {
    _nomeController.clear();
    _sobrenomeController.clear();
  }
}
