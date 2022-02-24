void main() {
  Pessoa pessoa1 = new Pessoa("Mateus", "Oliveira");
  print("O nome da pessoa é: ${pessoa1.nomeCompleto()}\n");

  Pessoa pessoa2 = new Pessoa.empty();

  print("- Salário Funcionário");
  Funcionario funcionario1 = new Funcionario(1, 6000, "Leoncio", "Oliveira");
  print("Primeira Parcela:  ${funcionario1.getSalarioPrimeiraParcela()}");
  print("Segunda Parcela: ${funcionario1.getSalarioSegundaParcela()}\n");

  print("- Salário Professor");
  Professor professor =
      new Professor("Diretor", 32, 8000, "Lucas", "Cavalcante");
  print("Primeira Parcela:  ${professor.getSalarioPrimeiraParcela()}");
  print("Segunda Parcela: ${professor.getSalarioSegundaParcela()}");
}

class Pessoa {
  String _nome = "";
  String _sobrenome = "";

  Pessoa.empty() {}

  Pessoa(String _nome, String _sobrenome) {
    this._nome = _nome;
    this._sobrenome = _sobrenome;
  }

  String nomeCompleto() {
    return "${this._nome} ${this._sobrenome}";
  }
}

class Funcionario extends Pessoa {
  int? _matricula;
  double _salario = 0;

  Funcionario(int? _matricula, double _salario, String _nome, String _sobrenome)
      : super(_nome, _sobrenome) {
    this._matricula = _matricula;

    if (_validarSalario(_salario)) {
      this._salario = _salario;
    }
  }

  int? get matricula {
    return this._matricula;
  }

  double get salario {
    return this._salario;
  }

  double getSalarioPrimeiraParcela() {
    return 0.6 * this._salario;
  }

  double getSalarioSegundaParcela() {
    return 0.4 * this._salario;
  }

  bool _validarSalario(double valor) {
    return valor > 0;
  }
}

class Professor extends Funcionario {
  String? _titulacao;

  Professor(String? _titulacao, int _matricula, double _salario, String _nome,
      String _sobrenome)
      : super(_matricula, _salario, _nome, _sobrenome) {
    this._titulacao = _titulacao;
  }

  String? get titulacao {
    return this._titulacao;
  }

  void set titulacao(String? titulacao) {
    this._titulacao = titulacao;
  }

  double getSalarioPrimeiraParcela() {
    return this.salario;
  }

  double getSalarioSegundaParcela() {
    return 0;
  }
}
