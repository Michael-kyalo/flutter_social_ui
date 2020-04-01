import 'package:flutter/material.dart';
import 'package:fluttersocialui/details.dart';

class Sheet extends StatefulWidget {
  @override
  _SheetState createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50)
          ),
            color: Colors.teal[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Row(
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
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900],
                    ),),
                    Text('CEO, Pinterest', style: TextStyle(
                        fontSize: 13,
                       color: Colors.indigo[900],

                    ),)
                  ],
                )
              ],
            ),

            Divider(thickness: 1,
              height: 40,
            ),

            Text('About:', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[900],
            ),),
            Row(
              children: <Widget>[
                Expanded(child: Text(

                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.indigo[900],
                  ),
                ))
              ],
            ),
            SizedBox(height: 30,),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                  return Details();

                }));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.redAccent
                ),
                child: Center(child: Text('Visit Profile', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
