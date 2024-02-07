import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset('lib/images/nike_logo3.png',
              height: 240),

              SizedBox(height: 50.0),

              //title
              Text('Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              Text('Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 50),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),
                  ),
                  );
                },
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                    padding: EdgeInsets.all(17),
                    child: Center(
                      child: Text('Shop Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,

                      ),
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
