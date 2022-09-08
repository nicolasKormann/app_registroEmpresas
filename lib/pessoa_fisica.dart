import 'package:desafio_final/pessoa.dart';

class PessoaFisica extends Pessoa {
  final String nome;
  final int cpf;

  PessoaFisica({
    required this.nome,
    required this.cpf,
    required super.logradouro,
    required super.numero,
    required super.complemento,
    required super.bairro,
    required super.cidade,
    required super.estado,
    required super.cep,
  });
}
