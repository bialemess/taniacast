
import 'package:taniacast/aluno.dart';

class AlunoRepository {
  static List<Aluno> _listaAlunos = [
    Aluno(nome: "Dorinha", ra: 234),
    Aluno(nome: "Bolinha", ra: 233),
    Aluno(nome: "Pipoca", ra: 455),
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
