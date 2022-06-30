import 'package:flutter/material.dart';
import 'package:forum3/Services/auth.dart';

class Resetpass extends StatefulWidget {
  Resetpass({Key? key}) : super(key: key);

  @override
  State<Resetpass> createState() => _ResetpassState();
}

class _ResetpassState extends State<Resetpass> {
  final _formKey =GlobalKey<FormState>();
  final AuthService _auth=AuthService();
  String email="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],

      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: Container(

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (val)=>val!.isEmpty ? "Please Enter A Valid Email" : null,
                      onChanged: (val){
                        setState(() {
                          email=val;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Email Address",
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),

                      style: TextStyle(

                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async{

                      },
                      child: Text("Reset Password"),
                      style: ElevatedButton.styleFrom(
                          elevation: 6.0,
                          shadowColor: Colors.black,
                          primary: Colors.white,
                          side: BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0)
                          )
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}