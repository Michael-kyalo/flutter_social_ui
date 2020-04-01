import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersocialui/itemData.dart';


class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<ItemData> datalist = [
    ItemData('connect',
  'https://banner2.cleanpng.com/20180401/cyw/kisspng-workplace-communication-business-communication-cli-communication-5ac0ba322ff323.2196710315225800181964.jpg',
  "Lorem Ipsum Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
    ItemData('coordinate',
        'https://banner2.cleanpng.com/20180326/sqe/kisspng-geometry-joint-entrance-examination-main-jee-ma-math-5ab8a560271d34.6101427815220504001602.jpg',
        "Lorem Ipsum Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
    ItemData('share',
        'https://banner2.cleanpng.com/20180508/cyw/kisspng-share-the-love-stephen-sharer-logo-symbol-5af19b0ecb5cf5.254666201525783310833.jpg',
        "Lorem Ipsum Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
    ItemData('connect',
        'https://banner2.cleanpng.com/20180401/cyw/kisspng-workplace-communication-business-communication-cli-communication-5ac0ba322ff323.2196710315225800181964.jpg',
        "Lorem Ipsum Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),

          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.short_text,
                    color: Colors.indigo[900],
                    size: 40,
                  ),
                  Text('Features', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900]
                  ),),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1549920867-1629df28cdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                    backgroundColor: Colors.redAccent,
                  ),

                ],

              ),
              SizedBox(height: 30.0,),
              Text('Reliable and Secure', style: TextStyle(
                color: Colors.redAccent,

              ), ),
              SizedBox(height: 10.0,),
              Text('It\'s More Than A\nMessage', style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 33,
                fontWeight: FontWeight.bold

              ), ),
              SizedBox(height: 10.0,),
              SizedBox(
                height: height*0.4,
//
                child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                  return ListDataItem(context,index);
                },
                itemCount: datalist.length,),
              ),
              SizedBox(height: 1,),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 20),


                width: double.infinity,
                height: height*0.2,
                child: Image.network('https://png2.cleanpng.com/sh/9035b5adf15e21e8007e5c336d68f587/L0KzQYm3VsI3N5NugZH0aYP2gLBuTfNwdZ56httsYYTsf7A0gB9vfpZ3i9NsaXBxPYbpU8I1bpdoetRvZUK2PoK9VMc5PmU9Sac8MEC1Q4q6Usc4NqFzf3==/kisspng-communication-conversacion-5b324ffcbbfe23.16478648153002393277.png'),
              ),

            ],
          ),

        ),
      ));
  }
  Widget ListDataItem(BuildContext context, int index){
    var width = MediaQuery.of(context).size.width;
    return new Container(

        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.5)
          ),
          padding: EdgeInsets.all(20),
          width: width*0.60,

          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
            
            children: <Widget>[
              Container(
                  height: 50,
                  width: 50,
                  child: Image.network(datalist[index].iconurl, fit: BoxFit.cover,)),
              SizedBox(height: 20,),
              Text(datalist[index].title),
              SizedBox(height: 30,),
              Row(
                children: <Widget>[
                  Expanded(child: Text(datalist[index].body))
                ],
              )


            ],
          ),
        ),
      );
    
  }
}


