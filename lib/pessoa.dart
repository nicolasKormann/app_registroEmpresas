abstract class Pessoa {
  final String logradouro;
  final int numero;
  final String complemento;
  final String bairro;
  final String cidade;
  final String estado;
  final int cep;

  Pessoa({
    required this.logradouro,
    required this.numero,
    required this.complemento,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
  });
}
