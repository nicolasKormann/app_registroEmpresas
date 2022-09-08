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
    required super.nome,
    required super.nomeFantasia,
    required super.numeroCadastro,
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

  String get conteudo {
    return '''
    ID: $id
    CNPJ: $cnpj
    Razão Social: $razaoSocial
    Nome Fantasia: $nomeFantasia
    Telefone: $telefone
    Endereço: $endereco
    Sócio: ${socio.tipo}
    CPF/CNPJ: ${socio.numeroCadastro}
    Nome/Razão Social: ${socio.nome}
    Endereço: ${socio.endereco}
    ''';
  }
}
