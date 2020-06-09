import 'package:dart_designer_patters_prototype/i_prototype.dart';
import 'package:dart_designer_patters_prototype/telefone.dart';

class Cliente implements IPrototype<Cliente> {
  
  String nome;
  DateTime dataNascimento;
  String _cpf;
  List<Telefone> telefones;

  Cliente._();

  factory Cliente() {
    var c = Cliente._();
    c.nome = 'Rodrigo';
    c.dataNascimento = DateTime.now();
    c._cpf = '2131321321321';
    c.telefones = [Telefone(telefone: '(12)3123123'),Telefone(telefone: '(11)3123123')];
    return c;
  }

  @override
  Cliente clone() {
    var c = Cliente();
    c.nome = nome;
    c.dataNascimento = dataNascimento;
    c._cpf = _cpf;
    c.telefones = [...telefones];
    return c;
  }


  @override
  String toString() {
    return 'Cliente(nome: $nome, dataNascimento: $dataNascimento, _cpf: $_cpf, telefones: $telefones)';
  }
}
