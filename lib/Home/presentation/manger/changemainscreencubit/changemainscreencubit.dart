import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/Home/presentation/manger/changemainscreencubit/changemainscreenstate.dart';

class Changemainscreencubit extends Cubit<Changemainscreenstate> {
  Changemainscreencubit() : super(intialstate());

  int currentindex = 0;
  void changeindex(int index) {
    currentindex = index;
    emit(Changemainscreenstate());
  }
}
