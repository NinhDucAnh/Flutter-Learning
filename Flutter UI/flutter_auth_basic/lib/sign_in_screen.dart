import 'package:flutter/material.dart';
import 'package:flutter_auth_basic/auth.dart';
import 'package:flutter_auth_basic/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String email = "";
  String password = "";
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                      child: SvgPicture.asset(
                        'assets/bread.svg',
                        height: 120,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Login to your account',
                    style: GoogleFonts.jost(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF40573A), width: 2),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                        boxShadow:
                        [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 5,
                              offset: Offset(0, 3),
                              spreadRadius: 2
                          )
                        ]


                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: GoogleFonts.jost(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF40573A), width: 2),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.jost(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(0, 3),
                          )
                        ]
                    ),
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          onPressed: () {
                            final email = emailController.text;
                            final password = passwordController.text;
                            final auth = Auth(email, password);
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen(email,password),));
                          };
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Color(0xFFA9907E),
                        ),
                        child: Stack(
                          children: [
                            Text(
                                'Sign In',
                                style: GoogleFonts.jost(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  foreground: Paint()
                                    ..color = Color(0xFF6B6968),
                                )
                            ),
                            Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                foreground: Paint()
                                  ..strokeWidth = 2
                                  ..color = const Color(0xFFF3DEBA)
                                  ..style = PaintingStyle.stroke,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Center(
                    child: Text('Or sign in with', style: GoogleFonts.jost(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),),
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/facebook.svg', height: 25,),
                      SvgPicture.asset('assets/google.svg', height: 25,),
                      SvgPicture.asset('assets/twitter.svg', height: 25,),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                            style: GoogleFonts.jost(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            )
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/signUp');
                          },
                          child: Text('Sign up', style: GoogleFonts.jost(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
