import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/Home/presentation/manger/changemainscreencubit/changemainscreencubit.dart';
import 'package:movie/Home/presentation/manger/changemainscreencubit/changemainscreenstate.dart';
import 'package:movie/Home/presentation/views/Myfavouriteview.dart';
import 'package:movie/Home/presentation/views/homepageview.dart';
import 'package:movie/Home/presentation/views/moviepageview.dart';
import 'package:movie/Home/presentation/views/widget/customnavgationbar.dart';

class Mainscreenview extends StatelessWidget {
  const Mainscreenview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<Changemainscreencubit, Changemainscreenstate>(
        builder: (context, state) {
          final currentindex = BlocProvider.of<Changemainscreencubit>(
            context,
          ).currentindex;
          return IndexedStack(
            index: currentindex,
            children: [Homepageview(), Moviepageview(), Myfavouriteview(), ],
          );
        },
      ),
      bottomNavigationBar: Custombottomnavigationbar(),
    );
  }
}
