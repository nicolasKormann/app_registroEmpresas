import 'dart:io';
import 'package:desafio_final/empresa.dart';
import 'package:desafio_final/pessoa_fisica.dart';
import 'package:desafio_final/pessoa_juridica.dart';

class RegistroEmpresas {
  List<Map<String, Object>> empresas = [];

  void executar() {
    print(
        'Bem vindo ao Sistema de registro de empresas! Para continuar escolha uma das opções abaixo:');
    print(
        '\n 1. Cadastrar uma nova empresa;\n 2.Buscar Empresa cadastrada por CNPJ;\n 3.Buscar Empresa por CPF do Sócio; \n 4.Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);\n 5.Excluir uma empresa (por ID);\n 6.Sair.');

    int escolha = 0;
    do {
      print(
          '\n 1. Cadastrar uma nova empresa;\n 2.Buscar Empresa cadastrada por CNPJ;\n 3.Buscar Empresa por CPF do Sócio; \n 4.Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);\n 5.Excluir uma empresa (por ID);\n 6.Sair.');

      escolha = _escolhaTrataErro();

      switch (escolha) {
        case 1:
          _cadastrar();
          break;
        case 2:
          _buscar();
          break;

        default:
      }
    } while (escolha != 6);

  }

  //Trata erro escolha
  int _escolhaTrataErro() {
    var escolha = int.tryParse(stdin.readLineSync()!);

    while (escolha == null) {
      print(
          'Valor inválido. Por favor escolha um número válido de acordo com o apresentado acima');

      escolha = int.tryParse(stdin.readLineSync()!);
    }

    return escolha;
  }

  //Trata erro escolha(String)
  String _stringTrataErro() {
    var string = stdin.readLineSync();

    while (string == null || string == '') {
      stdout.write('Valor inválido. Por favor, informe novamente:');

      string = stdin.readLineSync();
    }

    return string;
  }

  //Trata erro escolha(int)
  int _intTrataErro() {
    var num = int.tryParse(stdin.readLineSync()!);

    while (num == null) {
      print(
          'Valor inválido. Por favor escolha um número válido de acordo com o apresentado acima');

      num = int.tryParse(stdin.readLineSync()!);
    }

    return num;
  }

  //Trata erro sócio
  int _intSocio() {
    var num = int.tryParse(stdin.readLineSync()!);

    while (num == null) {
      print(
          'Valor inválido. Por favor escolha um número válido de acordo com o apresentado acima');

      num = int.tryParse(stdin.readLineSync()!);
    }

    while (num != 1 && num != 2) {
      stdout.write(
          'Opção inválida. O sócio da empresa é Pessoa Física(1) ou Pessoa Jurídica(2)? (Informe apenas o número): ');
    }

    return num;
  }

  //VeririficaCNPJ
  int _verificaCNPJ() {
    var cnpj = int.tryParse(stdin.readLineSync()!);

    while (cnpj == null) {
      print(
          'Valor inválido. Por favor, informe o número do CNPJ corretamente (apenas números)');

      cnpj = int.tryParse(stdin.readLineSync()!);
    }

    return cnpj;
  }

  //1. Cadastras
  _cadastrar() {
    //Razão Social
    stdout.write('Por favor, informe a razão social da empresa: ');
    String razaoSocial = _stringTrataErro();

    //Nome Fantasia
    stdout.write('Por favor, informe o nome fantasia da empresa: ');
    String nomeFantasia = _stringTrataErro();

    // CNPJ
    stdout.write('Por favor, informe o número do CNPJ(apenas número): ');
    int cnpj = _intTrataErro();

    //Logradouro
    stdout.write('Por favor, informe o nome do logradouro: ');
    String logradouro = _stringTrataErro();

    //Numero
    stdout.write('Por favor, informe o número do endereço: ');
    int numero = _intTrataErro();

    //Complemento
    stdout.write('Por favor, informe o complemento do endereço: ');
    String complemento = _stringTrataErro();

    //Bairro
    stdout.write('Por favor, informe o bairro: ');
    String bairro = _stringTrataErro();

    //estado
    stdout.write('Por favor, informe o estado: ');
    String estado = _stringTrataErro();

    //CEP
    stdout.write('Por favor, informe o CEP(somente números): ');
    int cep = _intTrataErro();

    //Telefone
    stdout.write('Por favor, informe o telefone: ');
    int telefone = _intTrataErro();

    //Sócio
    socio() {
      stdout.write(
          'O sócio da empresa é Pessoa Física(1) ou Pessoa Jurídica(2)? (Informe apenas o número): ');
      int pessoa = _intSocio();

      if (pessoa == 1) {
        //Nome
        stdout.write('Por favor, informe o nome do Sócio: ');
        String nome = _stringTrataErro();

        //CPF
        stdout.write('Por favor, informe o CPF: ');
        int cpf = _intTrataErro();

        //Logradouro
        stdout.write('Por favor, informe o nome do logradouro: ');
        String logradouroPF = _stringTrataErro();

        //Numero
        stdout.write('Por favor, informe o número do endereço: ');
        int numeroPF = _intTrataErro();

        //Complemento
        stdout.write('Por favor, informe o complemento do endereço: ');
        String complementoPF = _stringTrataErro();

        //Bairro
        stdout.write('Por favor, informe o bairro: ');
        String bairroPF = _stringTrataErro();

        //estado
        stdout.write('Por favor, informe o estado: ');
        String estadoPF = _stringTrataErro();

        //CEP
        stdout.write('Por favor, informe o CEP(somente números): ');
        int cepPF = _intTrataErro();

        return PessoaFisica(
          nome: nome,
          cpf: cpf,
          logradouro: logradouroPF,
          numero: numeroPF,
          complemento: complementoPF,
          bairro: bairroPF,
          estado: estadoPF,
          cep: cepPF,
        );
      } else {
        //Razão Social
        stdout.write('Por favor, informe a razão social da empresa: ');
        String razaoSocialPJ = _stringTrataErro();

        //Nome Fantasia
        stdout.write('Por favor, informe o nome fantasia da empresa: ');
        String nomeFantasiaPJ = _stringTrataErro();

        // CNPJ
        stdout.write('Por favor, informe o número do CNPJ(apenas número): ');
        int cnpjPJ = _intTrataErro();

        //Logradouro
        stdout.write('Por favor, informe o nome do logradouro: ');
        String logradouroPJ = _stringTrataErro();

        //Numero
        stdout.write('Por favor, informe o número do endereço: ');
        int numeroPJ = _intTrataErro();

        //Complemento
        stdout.write('Por favor, informe o complemento do endereço: ');
        String complementoPJ = _stringTrataErro();

        //Bairro
        stdout.write('Por favor, informe o bairro: ');
        String bairroPJ = _stringTrataErro();

        //estado
        stdout.write('Por favor, informe o estado: ');
        String estadoPJ = _stringTrataErro();

        //CEP
        stdout.write('Por favor, informe o CEP(somente números): ');
        int cepPJ = _intTrataErro();

        return PessoaJuridica(
          razaoSocial: razaoSocialPJ,
          nomeFantasia: nomeFantasiaPJ,
          cnpj: cnpjPJ,
          logradouro: logradouroPJ,
          numero: numeroPJ,
          complemento: complementoPJ,
          bairro: bairroPJ,
          estado: estadoPJ,
          cep: cepPJ,
        );
      }
    }

    final empresa = Empresa(
      razaoSocial: razaoSocial,
      nomeFantasia: nomeFantasia,
      cnpj: cnpj,
      logradouro: logradouro,
      numero: numero,
      complemento: complemento,
      bairro: bairro,
      estado: estado,
      cep: cep,
      telefone: telefone,
      socio: socio(),
    );

    empresas.add(
      {'ID': empresa.id, 'CNPJ': empresa.cnpj, 'Razão Social': empresa.razaoSocial, 'Nome Fantasia': empresa.nomeFantasia, 'Telefone': empresa.telefone, 'Endereço': empresa.endereco},
    );
  }

  //2. Busca Empresa
  void _buscar() {
    stdout.write(
        'Informe o número do CNPJ da empresa para consulta (somente números): ');
    int cnpj = _verificaCNPJ();

    var verificaCNPJ = empresas.where((element) => element['CNPJ'] == cnpj);

    if (verificaCNPJ.toString() == '()') {
      print('CNPJ não encontrado!');
    } else {
      print('verificaCNPJ');
    }
  }
}
