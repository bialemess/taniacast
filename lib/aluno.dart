class Aluno {
  String nome;
  String sobrenome;

  String get getSobrenome => sobrenome;
  set setSobrenome(String  sobrenome) => this.sobrenome = sobrenome;

  String get getNome => nome;
  set setNome(String nome) => this.nome = nome;

  Aluno({required this.nome, required this.sobrenome});
}
