import 'package:flutter/material.dart';
import 'package:taniacast/aluno_repository.dart';

class ListaAlunosPage extends StatefulWidget {
  const ListaAlunosPage({super.key});

  @override
  State<ListaAlunosPage> createState() => _ListaAlunosPageState();
}

class _ListaAlunosPageState extends State<ListaAlunosPage> {

   final listaAlunos = AlunoRepository.getListaAlunos;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alunos Cadastrados"),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemCount: listaAlunos.length,
            separatorBuilder: ((context, index) => const Divider(
                  thickness: 2,
                )),
            itemBuilder: ((context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Text(listaAlunos[index].nome[0]),
                ),
                title: Text(listaAlunos[index].nome),
                subtitle: Text(listaAlunos[index].ra),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
              );
            })));
  }
}
