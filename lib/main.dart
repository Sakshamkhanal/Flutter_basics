
import 'package:flutter/material.dart';
void main()
{
runApp(MaterialApp(
  home: Homepage(),
));

}

class Homepage extends StatefulWidget {
  
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var myText = "Change my name.";
  TextEditingController _nameController = TextEditingController();

  @override
  void InitState()
  {
    //TODO:implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // const circleAvatar = CircleAvatar(
    //                     backgroundImage: NetworkImage("https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
    //                   );//!The code drawer won't respond when this commented line is uncommented
    return Scaffold(
      appBar: AppBar(
        title:const Text("Awesome app"),), 
         body: Center(
           child:Padding(
             padding: const EdgeInsets.all(16.0),
               child:SingleChildScrollView(
                 child: Card(
                 child:Column(
                 children: <Widget>[
                   Image.asset('images/bg.jpg',
                 //  width: 700,
                   height: 300,
                   fit:BoxFit.fitWidth,
                           
                   ),
                   const SizedBox(
                     height: 20,
                   ),
                 Text(myText,
                  style:  TextStyle(fontSize:25,fontWeight:FontWeight.bold),
                   ),
                   const SizedBox(
                     height:20,
                   ),
                  Padding(padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        border:OutlineInputBorder() ,
                        hintText: "Enter Some text",
                        labelText: "Name"
               
                      ),
                    ),
                  ),
                   
                 ],
                            ),
                          ),
               ),
               ),
         ),
                drawer: Drawer(
                  child:ListView(
                    children: <Widget>[
                      const UserAccountsDrawerHeader(
                        accountName: Text("Saksham Khanal"), 
                      accountEmail:Text("saksham.khanal@gmail.com"),
                      // currentAccountPicture:circleAvatar ,//!Undeclaredvariable
                       ),
                    ListTile(
                      leading: const Icon(Icons.person),
                        title: const Text("Saksham Khanal"),
                        subtitle: const Text("Developer"),
                        trailing: const Icon(Icons.edit),
                        onTap:(){},

                       ),
                        const ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Email"),
                        subtitle: Text("Saksham.khanal@gmail.com"),
                        trailing: Icon(Icons.edit),

                       ),
                    ],
                   
                  ) ,
                ),
               floatingActionButton:FloatingActionButton (
                 onPressed:()
                 {
                   myText = _nameController.text;
                   setState(() {
                     
                   });
                 },

                 child: const Icon(Icons.send)
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
