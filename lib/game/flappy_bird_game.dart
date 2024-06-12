import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flappy_game/components/background.dart';
import 'package:flappy_game/components/bird.dart';
import 'package:flappy_game/components/ground.dart';
import 'package:flappy_game/components/pipe_group.dart';
import 'package:flappy_game/game/configuration.dart';

class FlappyBirdGame extends FlameGame {

late Bird bird;
Timer interval = Timer(Config.pipeInterval, repeat: true);

  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup(),
    ]);

    interval.onTick = () => add(PipeGroup());
  }

  @override void update(double dt) {
    super.update(dt);
    interval.update(dt);
  }
}
