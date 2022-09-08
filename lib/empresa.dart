import 'package:desafio_final/pessoa.dart';
import 'package:desafio_final/pessoa_juridica.dart';
import 'package:uuid/uuid.dart';

class Empresa extends PessoaJuridica {
  final _id = Uuid().v4();
  final int telefone;
  final _dataCadastro = DateTime.now();
  Pessoa socio;
  Map<String, Object> infos = {};

  Empresa({
    required super.razaoSocial,
    required super.nomeFantasia,
    required super.cnpj,
    required super.logradouro,
    required super.numero,
    required super.complemento,
    required super.bairro,
    required super.cidade,
    required super.estado,
    required super.cep,
    required this.telefone,
    required this.socio,
  });

  DateTime get dataCadastro => _dataCadastro;

  String get id => _id;

  String get endereco {
    return '${super.logradouro}, ${super.numero}, ${super.bairro}, ${super.cidade}/${super.estado}, ${super.cep}';
  }
}
