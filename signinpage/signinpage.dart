import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pagescontroller.dart';
import '../signup/sign_up_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  var checkValue =true;
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF1C1C23),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image(
                    image: AssetImage('assets/startpageimages/logo.png'),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('E-mail adress',style: TextStyle(color: Color(0xFF666680),fontSize: 12),),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color(0xFF666680)))
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password',style: TextStyle(color: Color(0xFF666680),fontSize: 12),),
                        SizedBox(height: 5,),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color(0xFF666680)))
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Checkbox(value: checkValue, onChanged: (value){
                        setState(() {
                          //todo: functionality missing
                                    checkValue = value!;
                        });
                      }),
                      Text('Remember me',style: TextStyle(color: Color(0xFF666680),fontSize: 12),),
                      Spacer(),
                      Text('Forgot passoword',style: TextStyle(color: Color(0xFF666680),fontSize: 12),),
                      SizedBox(width: 32,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(onTap: (){
                    setState(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=> pagescontroller()));
                    });
                  },
                    child: Container(
                      width: 324,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const RadialGradient(
                              radius: 50,
                              colors: [
                                Color(0xFFFF7966),
                                Color(0xFFFFFFFF)
                              ]
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFFF7F37).withOpacity(0.4),
                                blurRadius: 6,
                                offset: Offset(0,8)
                            )
                          ]
                      ),
                      child: Center(child: Text('Sign in',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Color(0xFFFFFFFF)),)),
                    ),
                  ),
                  SizedBox(height: 130,),
                  Text('Do you have already an account?',style: TextStyle(color: Color(0xFF666680),fontSize: 12),),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                    },
                    child: Container(
                      width: 327,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black.withOpacity(0.7),width: 0.1),
                          gradient: RadialGradient(
                              radius: 25,
                              colors: [
                                Color(0xFFFFFFFF).withOpacity(0.1),
                                Color(0xFFFFFFFF).withOpacity(0.15)
                              ]
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.7),
                                blurRadius: 6,
                                offset: Offset(0,8)
                            )
                          ]
                      ),
                      child: Center(child: Text('Sign up',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Color(0xFFFFFFFF)),)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
