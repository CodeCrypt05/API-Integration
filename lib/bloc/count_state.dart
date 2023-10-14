abstract class CountState {}

class InitialState extends CountState {
  final int count;
  InitialState(this.count);
}
