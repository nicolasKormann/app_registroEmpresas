import 'package:desafio_final/pessoa.dart';

class PessoaJuridica extends Pessoa {
  final String nomeFantasia;

  @override
  final String tipo = 'Pessoa Jurídica';

  PessoaJuridica({
    required super.nome,
    required this.nomeFantasia,
    required super.numeroCadastro,
    required super.logradouro,
    required super.numero,
    super.complemento,
    required super.bairro,
    required super.cidade,
    required super.estado,
    required super.cep,
  });

  get cnpj => super.numeroCadastro;

  get razaoSocial => super.nome;
}
