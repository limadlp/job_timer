import 'package:isar/isar.dart';

abstract class Database {
  Future<Isar> openConnection();
}

/*
final db = Modular.get<Database>();
              final connection = await db.openConnection();
              await connection.writeTxn((isar) => connection.clear());

              connection.writeTxn((isar) {
                var project = Project();
                project.name = 'Projeto Teste';
                project.status = ProjectStatus.finalizado;

                return connection.projects.put(project);
              });

              */