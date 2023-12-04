import 'package:demoapp/pages/tabs.dart';
import 'package:demoapp/widgets/appbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            
            children: [
              Row(
                children: [
                  Container(height: 1,
                  width: 110,
                  color: Colors.grey),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 41,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/Group.png"),
            radius: 40,
          ),
              ),
                  ),
                  Container(height: 1,
                  width: 115,
                  color: Colors.grey,),
                  
                ],
              ),
              const SizedBox(
                height: 30,
              ),
               Padding(
                 padding: const EdgeInsets.only(right: 255),
                 child: Text('Hello !',style: GoogleFonts.merriweather(color: Colors.grey.shade400,fontSize: 30)),
               ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text('Welcome Back',style: GoogleFonts.merriweather(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                  
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
          width: 350,
          height: 450,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey, //New
                blurRadius: 10.0,
              )
            ],
          ),
          child: Container(
            color: Colors.white,
                child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Text('Email',style: GoogleFonts.merriweather(color: Colors.grey.shade400,fontSize: 15)),
              ),
               
              const TextField(
                        decoration: InputDecoration(
                         
                          
                        ),
                                   ),
              const SizedBox(
                height: 20,
              ),
               Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text('Password',style: GoogleFonts.merriweather(color: Colors.grey.shade400,fontSize: 15)),
              ),
               
              const TextField(
                        decoration: InputDecoration(
                         
                          
                        ),
                                   ),
              const SizedBox(height: 20,),
              TextButton(onPressed: (){}, child: Text('Forgot Password',style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),) ,
          
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AppButton(label: 'Login', onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const Tabs()));},),
              ),
               const SizedBox(height: 15,),
              TextButton(onPressed: (){
               
              }, child: Text('SIGN UP',style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),) ,
                   
              
            ],
          ),
                ),
          ),
          )
            
              
            ]
          ),
        ),
      ),
    );
  }
  }