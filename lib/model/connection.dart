import 'package:postgres/postgres.dart';

Future<PostgreSQLConnection> conn() async {
  final connection = PostgreSQLConnection('localhost', 5432, 'caloriapp2',
      username: 'postgres', password: 'postgres');

  await connection.open();
  print('Connected to database');

  return connection;
}
