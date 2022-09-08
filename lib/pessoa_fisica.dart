import 'package:desafio_final/pessoa.dart';

class PessoaFisica extends Pessoa {

  @override
  final String tipo = 'Pessoa Física';

  PessoaFisica({
    required super.nome,
    required super.numeroCadastro,
    required super.logradouro,
    required super.numero,
    super.complemento,
    required super.bairro,
    required super.cidade,
    required super.estado,
    required super.cep,
  });

  int get cpf => super.numeroCadastro;
}
