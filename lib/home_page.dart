import "package:flutter/foundation.dart";
import "package:flutter/material.dart";



// class HomePage extends StatelessWidget {
  
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text(  
//             "Button",
//           ),
//           onPressed: () {},
//         ),
        
//      ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});
   
  
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
   String title = "Button off";

  void onSubmit(){
    setState(() {
      if(title == "Button off"){
        title = "Button on";
      }else{
        title = "Button off";
      }
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: ElevatedButton(
          child: Text(title),
          onPressed: onSubmit,
        ),
      ),
    );
  }
}