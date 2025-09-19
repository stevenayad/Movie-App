import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/Home/presentation/manger/changemainscreencubit/changemainscreencubit.dart';
import 'package:movie/Home/presentation/manger/changemainscreencubit/changemainscreenstate.dart';

class Custombottomnavigationbar extends StatelessWidget {
  const Custombottomnavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    final changecubit = BlocProvider.of<Changemainscreencubit>(context);
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BlocBuilder<Changemainscreencubit, Changemainscreenstate>(
        builder: (context, state) {
          return BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Color(0xFF6200EE),
            unselectedItemColor: Colors.grey,
            elevation: 8.0,
            currentIndex: changecubit.currentindex,
            onTap: (index) => changecubit.changeindex(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie_outlined),
                activeIcon: Icon(Icons.movie),
                label: 'Movies',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                activeIcon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
          );
        },
      ),
    );
  }
}
