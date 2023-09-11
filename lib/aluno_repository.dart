
import 'package:taniacast/aluno.dart';

class AlunoRepository {
  static List<Aluno> _listaAlunos = [
    Aluno(nome: "lucas", sobrenome: "costa"),
    Aluno(nome: "tania", sobrenome: "basso"),
    Aluno(nome: "priscila", sobrenome: "ferraz"),
  ];

  //getters e setters
  static get getListaAlunos => _listaAlunos;
  set listaAlunos(value) => _listaAlunos = value;

  //métodos
  void adicionarPet(Aluno aluno) {
    _listaAlunos.add(aluno);
  }

  static void adicionarAluno(Aluno aluno) {}
}
