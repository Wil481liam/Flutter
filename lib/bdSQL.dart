import 'package:mysql1/mysql1.dart';

class Autentificao {
  Future<bool> autenticarUsuario(String cpf, String senha) async {
    try {
      var conexao = await MySqlConnection.connect(
        ConnectionSettings(
            host: "192.168.228.1",
            port: 3306,
            user: "root",
            password: null,
            db: "petmania"),
      );

      var result = await conexao.query(
          "SELECT * FROM usuarios WHERE cpf = ? AND senha = ?", [cpf, senha]);

      await conexao.close();

      return result.isNotEmpty;
    } catch (e) {
      print("Erro ao autenticar o usuario $e");
      return false;
    }
  }
}

void main() async {
  try {
    var conexao = await MySqlConnection.connect(
      ConnectionSettings(
          host: "localhost", user: "root", password: null, db: "petmania"),
    );
    var result = await conexao.query("SELECT * FROM usuarios;");
    //print(result);

    for (var row in result) {
      print(
          'ID: ${row[0]}, Nome: ${row[1]}, Data de nascimento: ${row[2]}, CPF: ${row[3]}, Email: ${row[4]}, Senha: ${row[5]}');
    }
    await conexao.close();
  } catch (e) {
    print("Erro:> ${e}");
  }
}
