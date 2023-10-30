import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget{
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text("Write title of page",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            body: "Write the more description of the page.Write the more description of the page.Write the more description of the page.Write the more description of the page.",
            image: Image.asset("assets/images/login1.jpg",fit: BoxFit.cover,height: 250,width: 250,)
          ),
          PageViewModel(
            titleWidget: Text("Write title of page",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            body: "Write the more description of the page.Write the more description of the page.Write the more description of the page.Write the more description of the page.",
            image: Image.asset("assets/images/login2.jpg",fit: BoxFit.cover,height: 250,width: 250,)
          ),
          PageViewModel(
            titleWidget: Text("Write title of page",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            body: "Write the more description of the page.Write the more description of the page.Write the more description of the page.Write the more description of the page.",
            image: Image.asset("assets/images/login2.jpg",fit: BoxFit.cover,height: 250,width: 250,)
          ),
        ],
        onDone: (){
          Navigator.pushNamed(context, "homePage");
        },
        onSkip: (){
          Navigator.pushNamed(context, "homePage");
        },
        showSkipButton: true,
        skip: Text("Skip",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF6C63FF)),),
        next: Icon(Icons.arrow_forward,color: Color(0xFF6C63FF),),
        done: Text("Done",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF6C63FF)),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20,10),
          color:Colors.black54,
          activeColor: Color(0xFF6C63FF),
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
          )
        ),
      ),
    );
  }
}