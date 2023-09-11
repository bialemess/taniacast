class Aluno {
  String nome;
  int ra;

  int get getRa => ra;
  set setRa(int ra) => this.ra = ra;

  String get getNome => nome;
  set setNome(String nome) => this.nome = nome;

  Aluno({required this.nome, required this.ra});
}
