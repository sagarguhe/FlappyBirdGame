import 'dart:async';
import 'dart:io';

import 'package:flame/components.dart';
import 'package:flappy_game/components/pipe.dart';
import 'package:flappy_game/game/configuration.dart';
import 'package:flappy_game/game/flappy_bird_game.dart';
import 'package:flappy_game/game/pipe_position.dart';

class PipeGroup extends PositionComponent with HasGameRef<FlappyBirdGame> {
  PipeGroup();

  @override
  FutureOr<void> onLoad() async {
    addAll([
      Pipe(pipePosition: PipePosition.top, height: 100.0),
      Pipe(pipePosition: PipePosition.bottom, height: 200.0),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= Config.gameSpeed * dt;
  }
}
