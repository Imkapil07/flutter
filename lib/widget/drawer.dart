import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://th.bing.com/th/id/OIP.r1NCvJI9IlqaFbzsoFhQCgHaE8?pid=ImgDet&rs=1";
    return Drawer(
      child: Container( 
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text("Kapil Rai"),
                    accountEmail: Text("kapilraivines@gmail.com"), 
                    currentAccountPicture: CircleAvatar( 
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                 ),
              ), 
              ListTile(  
               leading: Icon(
               CupertinoIcons.home,
               color:Colors.white,
               ),  
               title: Text( 
                "Home", 
                textScaleFactor: 1.2,
                style: TextStyle( 
                  color: Colors.white,
                ),
                ),
              ),
               ListTile(  
               leading: Icon(
               CupertinoIcons.profile_circled,
               color:Colors.white,
               ),  
               title: Text( 
                "Profile", 
                textScaleFactor: 1.2,
                style: TextStyle( 
                  color: Colors.white,
                ),
                ),
              ),
               ListTile(  
               leading: Icon(
               CupertinoIcons.mail,
               color:Colors.white,
               ),  
               title: Text( 
                "Email", 
                textScaleFactor: 1.2,
                style: TextStyle( 
                  color: Colors.white,
                ),
                ),
              )

          ],
        ),
      ),
    );
  }
}
