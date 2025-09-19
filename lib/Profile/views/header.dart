import 'package:flutter/material.dart';
import 'package:movie/Profile/widgets/watching_details.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: double.infinity,
        height: 250,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 60,
                child: Image.asset("assets/icons/man.png",fit: BoxFit.cover,),

              ),
              
              Text("John Doe",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              Text(
                "john.doe@gmail.com",style: TextStyle(
                color: Colors.grey.shade300,

              ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WatchingDetails(
                  number: '127',
                  desc: "Movies Watched",
                  color: Colors.red,
                ),
                WatchingDetails(
                  number: '4.8',
                  desc: "Avg Rating",
                  color: Colors.yellow,
                ),
                WatchingDetails(
                  number: '127',
                  desc: "Reviews",
                  color: Colors.blue,
                ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
