import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
  )
);

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}



class _NinjaCardState extends State<NinjaCard>{

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Ninja Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[900] 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            ninjaLevel+=1;
          });
        },
        child: Icon(
          Icons.add
        ),
        backgroundColor: Colors.grey[800]
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0,30.0,40.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,30.0),
             child:  Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/muddabir.png'),
                radius: 60.0
              )
            )
            )
           ,
           Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,30.0),
             child:  Divider(
             height: 20.0,
             color: Colors.black
           )

           )
          ,
             Text(
               "Name",
               style: TextStyle(
                 color: Colors.grey[300],
                 letterSpacing: 2.0
               )
             ),

                Text(
               "Muddabir Chohan",
               style: TextStyle(
                 color: Colors.yellow,
                 fontSize: 20,
                 fontWeight: FontWeight.bold
               )
             ),
              SizedBox(height :20.0),


                           Text(
               "Current Ninja Level",
               style: TextStyle(
                 color: Colors.grey[300],
                 letterSpacing: 2.0
               )
             ),

                Text(
               '$ninjaLevel',
               style: TextStyle(
                 color: Colors.yellow,
                 fontSize: 20,
                 fontWeight: FontWeight.bold
               )
             ),
              SizedBox(height :20.0),

              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.white
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:     Text(
                    "muddabir22@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                    )
                    )
                  )
              
                ]
              )
          ]
        )
      ), 
    );
  }
}

