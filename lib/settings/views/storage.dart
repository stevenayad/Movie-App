import 'package:flutter/material.dart';

class Storage extends StatelessWidget {
  const Storage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Storage", style: TextStyle(
          color: Colors.orange,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  
                },
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        
                title: Text(
                      "Downloaded Content",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                subtitle: Text("3.2 GB of 32 GB used" ,style: TextStyle(color: Colors.white70),),
                trailing: Text("Manage",style: TextStyle(color: Colors.red,fontSize: 16),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.red),
                  borderRadius: BorderRadius.circular(4),
                  value: 10,
                  minHeight: 8,
                  backgroundColor: Colors.grey.shade300,
                  
                ),
              )
            ],
          ),
        
        ),
      ],
    );
  }
}