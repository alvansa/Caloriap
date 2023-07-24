import 'package:postgres/postgres.dart';

Future<PostgreSQLConnection> conn() async {
  final connection = PostgreSQLConnection('192.168.56.1', 5432, 'caloriapp',
      username: 'postgres', password: 'password');

  await connection.open();
  print('Connected to database');

  return connection;
}
