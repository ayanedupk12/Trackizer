import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/signinpage/signinpage.dart';
import 'package:untitled3/signup/sign_up_page.dart';
class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xFF1C1C23),
      body: SafeArea(
        child: SizedBox(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const Positioned(top: 120,
                  left: 0,
                  child: Image(image: AssetImage('assets/startpageimages/Image.png'),),
              ),
              const Positioned(top: 220,
                  right: 0,
                  child: Image(image: AssetImage('assets/startpageimages/Frame.png'),),
              ),
              const Positioned(top: 60,
                  right: 98,
                  child: Image(image: AssetImage('assets/startpageimages/logo.png'),),
              ),
              const Positioned(top: 396,
                  right: 0,
                  child: Image(image: AssetImage('assets/startpageimages/Image-2.png'),),
              ),
              const Positioned(top: 148,
                  left: 6.27,
                  child: Image(image: AssetImage('assets/startpageimages/Frame-1.png'),),
              ),
              Positioned(top: 629,
                right: 25,
                child: GestureDetector(onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
                  });
                },
                  child: Container(
                  width: 324,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const RadialGradient(
                          radius: 25,
                          colors: [
                            Color(0xFFFF7F37),
                            Color(0xFFFFFFFF)
                          ]
                      )
                  ),
                    child: Center(child: Text('Get Started',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Color(0xFFFFFFFF)),)),
              ),
                ),),
              Positioned(top: 690,
                right: 25,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
                  },
                  child: Container(
                  width: 324,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: RadialGradient(
                          radius: 25,
                          colors: [
                            Color(0xFFFFFFFF).withOpacity(0.1),
                            Color(0xFFFFFFFF).withOpacity(0.15)
                          ]
                      )
                  ),
                    child: Center(child: Text('I have an account',style: GoogleFonts.inter(fontStyle: FontStyle.normal,fontSize: 14,color: Color(0xFFFFFFFF)),)),
              ),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
