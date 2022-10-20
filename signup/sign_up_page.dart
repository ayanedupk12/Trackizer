import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/signup/signupwe.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFF1C1C23),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40,),
                Image(image: AssetImage('assets/startpageimages/logo.png'),),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
                  },
                  child: Container(
                    width: 327,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                        border: Border.all(color: Colors.white.withOpacity(0.7),width: 0.1),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0,8)
                          )
                        ]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.apple ,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text('Sign up with Apple',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Color(0xFFFFFFFF)),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
                  },
                  child: Container(
                    width: 327,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black.withOpacity(0.7),width: 0.1),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              blurRadius: 6,
                              offset: Offset(0,8)
                          )
                        ]
                    ),
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/icons/Vector-1.png',)),
                        SizedBox(width: 10,),
                        Text('Sign up with Google',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
                  },
                  child: Container(
                    width: 327,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white.withOpacity(0.7),width: 0.1),
                        gradient: RadialGradient(
                            radius: 15,
                            colors: [
                              Color(0xFF1771E6).withOpacity(0.5),
                              Color(0xFFFFFFFF).withOpacity(0.3)
                            ],
                        ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF1771E6).withOpacity(0.5),
                          blurRadius: 15,
                          offset: Offset(0,8)
                        )
                      ]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/icons/Vector.png',)),
                        SizedBox(width: 10,),
                        Text('Sign up with Google',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Colors.white),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Center(child: Text('or',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Colors.white),),),
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpWEP()));
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
                    child: Center(child: Text('Sign up with E-mail',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Color(0xFFFFFFFF)),)),
                  ),
                ),
                SizedBox(height: 60)

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
