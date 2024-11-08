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
