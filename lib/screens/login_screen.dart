




import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();}
  class _LoginScreenState extends State<LoginScreen> {
 
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28.42,),
                  Center(child: Image.asset("assets/images/carrot.png")),
                  SizedBox(height: 100.2,),
                  Text("Login",style: TextStyle(fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725))
                  ),
                  SizedBox(height: 15,),
                  Text("Enter your emails and password",style:TextStyle(
                    fontSize: 16
                  ),),
                  TextFormField(
                    controller: _emailController,
                    onTapOutside: (value){
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      labelText: "Email",
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffE2E2E2)
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff53B175)
                        ),
                      ), 
                    ),
                    validator: (value) {
                      if(value==null||value.isEmpty||!value.contains('@')){
                        return 'Enter a valid email';
                      }
                      return null;
          
                    },
                  ),
                  SizedBox(height: 30,),
                   TextFormField(
                    controller: _passwordController,
                    obscureText: _isObscure,
                    onTapOutside: (value){
                      FocusScope.of(context).unfocus();
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                        }); }),
                       enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffE2E2E2)
                        ),),
                        focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff53B175)
                        ),
                      ),
                    ),
                    validator: (value) {
                     if (value == null || value.isEmpty) {
                       return 'Please enter password';
                     }
                     if (value.length < 6) {
                       return 'Password must be at least 6 characters';
                     }
                     
                     
                      if (!RegExp(r'^(?=.*[a-z])(?=.[A-Z])(?=.*\d)').hasMatch(value)) {
                       return 'Password must contain uppercase, lowercase & numbers';
                      }
                        return null;} 
              
                    ),
                    SizedBox(height: 20,),
                    Align(alignment: Alignment.centerRight,
                      child: Text("Forgot Password?",style: TextStyle(
                        color: Color(0xff181725)
                      ),),
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        print("On Tapped");
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: Color(0xff53B175),
                         ),
                         child: Center(child: Text("Log In",
                         style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFF9FF)
                         ),),
                         ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Don’t have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),),
                      Text("Signup",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff53B175),
                      ),),
              
                    ],)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  }
  