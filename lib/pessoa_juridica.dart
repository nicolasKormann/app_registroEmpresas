import 'package:desafio_final/pessoa.dart';

class PessoaJuridica extends Pessoa {
  final String razaoSocial;
  final String nomeFantasia;
  final int cnpj;


  PessoaJuridica({
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.cnpj,
    required super.logradouro,
    required super.numero,
    required super.complemento,
    required super.bairro,
    required super.cidade,
    required super.estado,
    required super.cep,
  });
}
