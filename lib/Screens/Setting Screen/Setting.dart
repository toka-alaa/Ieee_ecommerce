import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ieee_ecommerce/Screens/Login%20Screen/Login.dart';
import 'package:provider/provider.dart';
import '../../Providers/Theme Provider.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 30,),
            CircleAvatar(
              backgroundImage: AssetImage('images/bb.png'),
              radius: 80,
            ),
            Text("Toka Alaa",style: TextStyle(
              fontSize: 30,
            ),),
            Text ("tokaalaa@gmail.com",style: TextStyle(
              color: Colors.grey
            ),),
            Set(txt: "My Orders",icon : Icons.shopping_bag,ontap: (){},),
            Set(txt: 'Help & Support',icon : Icons.contact_support, ontap: (){},),
            Set(txt: "About Us", icon: Icons.info, ontap: (){},),
            Set(txt: 'Change Theme', icon: Icons.light_mode_outlined, ontap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
    ),
            SizedBox(
              width: 200,
              height: 40,
              child: MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    actions: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20,),
                          Text("Are you sure ? ",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20
                          ),),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(onPressed: (){
                                Get.to(Login());
                              },
                                  child: Text("Yes",style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 20
                                  ),)),
                              TextButton(onPressed: (){
                                Navigator.of(context).pop();
                              },
                                  child: Text("No",style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 20
                                  ),)),
                            ],
                          )
                        ],
                      )
                    ],
                  );
                });
              },
                color:Colors.red,
                
                elevation: 5,
                child: Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login),
                    Text("Logout")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Set extends StatelessWidget {
  const Set({
    super.key, required this.txt, required this.icon, required this.ontap,
  });
final String txt;
final IconData icon;
final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(icon: Icon(icon) , onPressed: ontap,),
      title: Text(txt),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
