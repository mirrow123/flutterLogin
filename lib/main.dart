import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: _login(),
    );
  }
}

class _login extends StatefulWidget {


  @override
  State<_login> createState() => __loginState();
}

class __loginState extends State<_login> {
  TextEditingController  celular = TextEditingController();
  TextEditingController  contrasena = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100 ,
      body: Container(
        decoration: BoxDecoration(

          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
                blurRadius: 25.0,
              spreadRadius: 5.0,
              offset: Offset(
                15.0,15.0
              )
            )

          ]
            ,
          color: Colors.white       ,
          borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:  [
               Image.asset('assets/auxilio.png'),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: celular,
                  decoration: const InputDecoration(
                    hintText: "Ingrese su número de telefono"
                  ),
                ),
               SizedBox(height: 50,),
               TextField(

                 controller: contrasena,
                 obscureText: true,
                 decoration: const InputDecoration(
                     hintText: "Ingrese su contraseña 🤫🤫"
                 ),
               ),
               Container(
                 margin: EdgeInsets.only(top: 80),
                 width: 200,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: RaisedButton(
                   child: const Text("Login", style: TextStyle(color: Colors.grey, fontSize: 20),),
                   onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => const SecundScreen(),
                     ));
                   },


                 ),
               ),
               SizedBox(height: 100,),
               Text("Primera vez? Registrate aquí 😎"),
             ],
           ),
        ),
      ),
    );
  }
}

class SecundScreen extends StatefulWidget {
  const SecundScreen({Key? key}) : super(key: key);

  @override
  State<SecundScreen> createState() => _SecundScreenState();
}

class _SecundScreenState extends State<SecundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hola joven jaider"),
      ),
    );
  }
}




