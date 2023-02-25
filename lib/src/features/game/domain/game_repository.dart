import 'package:tic_tac_toe/src/services/data_source/request_handler.dart';

class GameRepository {
GameRepository({required this.requestHandler});

  final RequestHandler requestHandler;
}