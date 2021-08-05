import 'package:flutter/material.dart';
class  Login_screen extends StatelessWidget {
var emailController =TextEditingController();
var passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body:Padding(

        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'login',
                  style: TextStyle(
                  fontSize: 40.0,
                 fontWeight:FontWeight.bold,

                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  onChanged: (String value){
                    print (value);
                  },
                  decoration: InputDecoration(

                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  onChanged: (String value){
                    print (value);
                  },
                  decoration: InputDecoration(

                    labelText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.deepPurple,
                  child: MaterialButton(
                      onPressed: (){
                        print (emailController.text);
                        print (passwordController.text);

                      },
                      child:Text(
                        'Login',

                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white
                        ),

                      )
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',

                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text(
                          'Register Now',
                        ))
                  ],
                ),


              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
