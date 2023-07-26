import 'package:postgres/postgres.dart';

Future<PostgreSQLConnection> conn() async {
  final connection = PostgreSQLConnection('127.0.0.1', 5432, 'caloriapp',
      username: 'postgres', password: 'postgres');

  await connection.open();
  print('Connected to database');

  return connection;
}
