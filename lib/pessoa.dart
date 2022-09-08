abstract class Pessoa {
  final String nome;
  final int numeroCadastro;
  final String logradouro;
  final int numero;
  final String? complemento;
  final String bairro;
  final String cidade;
  final String estado;
  final int cep;

  Pessoa({
    required this.nome,
    required this.numeroCadastro,
    required this.logradouro,
    required this.numero,
    this.complemento,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
  });

  String get tipo => tipo;

  String get endereco {
    return '$logradouro, $numero, $bairro, $cidade/$estado, $cep';
  }
}
