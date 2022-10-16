import 'package:flutter/material.dart' ;

void main ( ) {
  runApp(login()) ;
}

class login extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
SizedBox(
  height: 70,
    child: Image.asset('image/login.png',height: 50,width: 100)),

                     Text('Register',style:TextStyle(fontSize: 30,color: Colors.blue),),

                    SizedBox(
                      height: 20,
                    ),

TextFormField(
  decoration: InputDecoration(
    labelText: 'username',
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.person)

  ),
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return 'please enter username';
      }
      else {
        return null;
      }
    }),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email_outlined)

                      ),
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return 'please enter Email';
      }
      else {
        return null;
      }
    }),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'password',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock)
                      ),
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return 'please enter password';
      }
      else {
        return null;
      }
    }  ),
                    SizedBox(
                      height: 20,
                    ),
      TextFormField(
        decoration: InputDecoration(
                  labelText: 'phonenumber',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone)
        ),
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return 'please enter phonenumber';
      }
      else {
        return null;
      }
    }
    ),
SizedBox(
  height: 30,
),
                    InkWell(
onTap: (){
  if(_formKey.currentState!.validate()==true){
  }
},
                   child: Container(
                     decoration: BoxDecoration(color:Colors.blue ,borderRadius: BorderRadius.circular(20),
                         gradient: LinearGradient(colors: [
                           Color(0xFF3FABF4),
                           Color(0xFF3ACED4),
                         ])),
                     width: double.infinity,
                     height: 60,
                     child: Text('login',style: TextStyle(fontSize: 30,color:Colors.white)),
alignment: Alignment.center,

                   )
                   ),

                  ],

                ),
              ),
            ),
          ),


        )
    );
  }
}

