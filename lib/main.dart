import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersocialui/bottom_sheet.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selected = 1;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    void _showBottomSheet() {
      showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50)
            ),
          ),
          backgroundColor: Colors.tealAccent.withOpacity(0.2),
          context: context, builder: (context){
        return Sheet();
      });
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:SingleChildScrollView(

            child: Stack(
              
              children: <Widget>[

                   Column(

                    children: <Widget>[
                      Container(
                        height: height*0.3,
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 20.0, right: 30.0, left: 20.0),
                        decoration: BoxDecoration(
                         // color: Color(0xa7ffeb),
                          color: Colors.tealAccent.withOpacity(0.2)
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  Icons.short_text,
                                  color: Colors.indigo[900],
                                  size: 40,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.notifications_none,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                )

                            ],),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(child:
                                Text(
                                  'Social \nIntelligence',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo[900]

                                  ),
                                )
                                )
                              ],
                            ),



                          ],



                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(top: 20),


                        width: double.infinity,
                        height: height*0.3,
                        child: Image.network('https://png2.cleanpng.com/sh/9035b5adf15e21e8007e5c336d68f587/L0KzQYm3VsI3N5NugZH0aYP2gLBuTfNwdZ56httsYYTsf7A0gB9vfpZ3i9NsaXBxPYbpU8I1bpdoetRvZUK2PoK9VMc5PmU9Sac8MEC1Q4q6Usc4NqFzf3==/kisspng-communication-conversacion-5b324ffcbbfe23.16478648153002393277.png'),
                      ),

                    ],

                  ),


                Positioned(
                    top: height*0.26,
                    right: 20,
                    left: 20,

                    child:Container(
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 1
                          ),
                          color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'search',
                                prefixIcon: Icon(Icons.search, color: Colors.black,),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),






              ],
            ),
          )
      ),
      bottomNavigationBar: Container(
        width: width,
        height: height*0.23,
        decoration: BoxDecoration(
          color: Colors.grey[300].withOpacity(0.4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50)
            
        )
        ),

        child: Stack(
          children: <Widget>[
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.all(30),
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1549920867-1629df28cdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                              backgroundColor: Colors.redAccent,
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Myroslava', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),),
                                Text('CEO, Pinterest', style: TextStyle(
                                    fontSize: 13,
                                  color: Colors.grey

                                ),)
                              ],
                            )
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: (){
                            _showBottomSheet();
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.redAccent
                            ),
                            child: Center(child: Text('More', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                          ),
                        ),
                      )
                    ],
                  ),

            )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(

                padding: EdgeInsets.only(right: 40, left: 40, bottom: 10, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _selected == 1 ? Icon(Icons.call, color: Colors.redAccent, size: 40,) : IconButton(icon: Icon(Icons.call, color: Colors.grey,size: 40,), onPressed:(){
                      setState(() {
                        _selected = 1;
                      });
                    }),
                    _selected == 2 ? Icon(Icons.cloud_queue, color: Colors.redAccent, size: 40,) : IconButton(icon: Icon(Icons.cloud_queue, color: Colors.grey, size: 40,), onPressed:(){
                      setState(() {
                        _selected = 2;
                      });
                    }),
                    _selected == 3 ? Icon(Icons.perm_identity, color: Colors.redAccent, size: 40,) : IconButton(icon: Icon(Icons.perm_identity, color: Colors.grey, size: 40,), onPressed:(){
                      setState(() {
                        _selected = 3;
                      });
                    }),
                  ],

                ),
              ),
            ),

          ],

        ),
      ),

    );
  }
}
