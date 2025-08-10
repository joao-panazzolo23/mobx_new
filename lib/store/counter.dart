//importante: as vezes no ctrl+S ele cria o g.dart, mt legal isso
import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class Counter = _Counter with _$Counter;

//nome da classe precisa necessariamente ser em pascal case, o mobx funciona dessa forma
abstract class _Counter with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}
