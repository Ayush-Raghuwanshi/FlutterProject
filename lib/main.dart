import 'package:ayush/my_flutter_app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: BottomBar());
  }
}



class BottomBar extends StatefulWidget{
 
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>{
  
  
  int _selectedIndex = 0;
  
  double rating= 4.96;
  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  }
  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: Icon(Icons.search,size: 30,),
                color: Colors.black,
                onPressed: () {
                },
              );
            }),
          actions: <Widget> [
            IconButton(onPressed: (){}, icon: Icon(MyFlutterApp.sliders,size: 30,),color: Colors.black )
          ],  
        ),
        body: 
        SingleChildScrollView(
        child:Column( 
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Container (
            padding: const EdgeInsets.only(top: 20),
            child:Text('  Profile',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight. bold),)),
          Row( 
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
            Container(
              width: width*0.50,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  padding: const EdgeInsets.only(right: 15,top: 15,bottom: 5),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 30,),color: Colors.white,padding: const EdgeInsets.all(5),),),
                Container(
              padding: const EdgeInsets.all(5),
              child:Text('George Tomson      ',style: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight. bold),),),
                Container(
              padding: const EdgeInsets.all(5),
              child:Text(' UI/UX Designer      ',style: TextStyle(color: Colors.grey,fontSize:15,),),)],
                
                ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
            width: width*0.35,
            child:Column(

            children: [
              Container(
                height: 40,
              ),
              Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  IconButton(onPressed: (){}, icon: Icon(Icons.star,size: 30,),color: Colors.black,padding: const EdgeInsets.all(10),),
                  Container(
              padding: const EdgeInsets.all(5),
              child:Text(' $rating                       ',style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight. bold),),),
                Container(
              padding: const EdgeInsets.all(5),
              child:Text('  Rate                        ',style: TextStyle(color: Colors.grey[700],fontSize:15,),),)
                ],  
              ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(25),
              ),  
            )])
            ,)
          ],),
          Row(children: [Center(child: Container (
            padding: const EdgeInsets.only(top: 20,left: 25),
            child:Text('Jobs',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight. bold),)),),
          IconButton(onPressed: (){
            
            Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage()));
          }
          , icon: Icon(Icons.arrow_forward),color: Colors.black,padding: const EdgeInsets.only(top: 25),),
          ])
          ,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue[50],
                  ),
                  
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('UX DESIGN' , style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text('Wireframes',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20,),),
                        Text('1h ago',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Container(
                          height: 30,
                        ),
                        Row(
                          children: [
                          Text('Fixed',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                          Text('          \$32/h',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w900,fontSize: 20,),) 
                          ]
                        )
                      ],
                    )
                    ),
              Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue[100],
                  ),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('UI DESIGN'  , style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text('Landing Page' ,style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20,),),
                        Text('1h ago',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Container(
                          height: 30,
                        ),
                        Row(
                          children: [
                          Text('From',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                          Text('          \$24/h',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w900,fontSize: 20,),) 
                          ]
                        )
                      ],
                    )
                    ),
              Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.green[100],
                  ),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('UI DESIGN'  , style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Text('Shopping Page' ,style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20,),),
                        Text('2h ago',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold,fontSize: 15,),),
                        Container(
                          height: 30,
                        ),
                        Row(
                          children: [
                          Text('From',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                          Text('          \$30/h',style: TextStyle(color:Colors.black,fontWeight: FontWeight.w900,fontSize: 20,),)
                          ]
                        )
                      ],
                    )
                    )            
                

              ],
            ),
          ),
          Container(
              child: Row(
                children: [
                  Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.cases_rounded)),),
                  Center(child: Text('Work with Top Companies', textAlign: TextAlign.center,))
                ],
              ),
              
              
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(25),
              ),
            ) 
          
                

              
            

        
      ]),
        ),
      
      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),title:Text('Home',style: TextStyle(color:Colors.black),)),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded,color: Colors.black),title: Text('Jobs',style: TextStyle(color:Colors.black),))
      ],
      currentIndex: _selectedIndex, 
      onTap: (index){
        switch(index){
          case 0:
            
            break;
          case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage()));
            break;
        
    }
 } 
      ),

    );
    
  }
}
class Secondpage extends StatefulWidget{
    @override
    State<Secondpage> createState() => _SecondPage();
    
}

class _SecondPage extends State<Secondpage>{
  
  int _selectedIndex = 0;
  

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: Icon(Icons.arrow_back,size: 30,),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBar()));
                },
              );
            }),
          actions: <Widget> [
            Center(child: Container (child:Text("Jobs",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight:FontWeight.bold ),),padding: const EdgeInsets.only(right: 150,top: 10,left:100),),
            ),IconButton(onPressed: (){}, icon: Icon(Icons.save_outlined,size: 30,),color: Colors.black ),
            
          ], 
        ),
        body: SingleChildScrollView (child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container( padding:const EdgeInsets.all(20),child:Text('Categories', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),),
           Row(
             children: [
               Container(
                 
                 width: 150,
                 margin: const EdgeInsets.all(10),
                 padding: const EdgeInsets.only(left: 10,right: 10),
                 decoration: BoxDecoration(color: Colors.blue[50],borderRadius: BorderRadius.circular(30)),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[Center( child:Text('   UX',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                 Center(child: IconButton(icon: Icon(Icons.cancel_sharp),onPressed: (){},))
                 ])
               ),
               Container(
                 
                 margin: const EdgeInsets.all(10),
                 padding: const EdgeInsets.only(left: 10,right: 10),
                 decoration: BoxDecoration(color: Colors.blue[100],borderRadius: BorderRadius.circular(30)),
                 child: Row(children:[Center( child:Text('Design System',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                  Center(child: IconButton(icon: Icon(Icons.cancel_sharp),onPressed: (){},))
                 ])
               )
             ],
           ),
           Row(
             children: [
               Container(
                 
                 width: 150,
                 margin: const EdgeInsets.all(10),
                 padding: const EdgeInsets.only(left: 10,right: 10),
                 decoration: BoxDecoration(color: Colors.blue[50],borderRadius: BorderRadius.circular(30)),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[Center( child:Text('   Wireframe',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                 Center(child: IconButton(icon: Icon(Icons.cancel_sharp),onPressed: (){},))
                 ])
               ),
               Container(
                 
                 margin: const EdgeInsets.all(10),
                 padding: const EdgeInsets.only(left: 10,right: 10),
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.black)),
                 child: Container(padding: const EdgeInsets.only(top: 5,bottom: 5,left :10,right: 10) ,child:Center( child:Text('Add More',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                 )
               )
             ],
           ),
           

           Column(
               children: [
               Container(
                   padding: const EdgeInsets.all(15),
                   margin: const EdgeInsets.all(10),
                   height: 70,
                   decoration: BoxDecoration( color: Colors.grey[200],borderRadius: BorderRadius.circular(30)),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Wireframes for Web',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       Text('30 minutes ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey))
                     ],
                    
                   ),
                   Text('\$21/hour',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
                 ],)),  
               Container(
                   padding: const EdgeInsets.all(15),
                   margin: const EdgeInsets.all(10),
                   height: 70,
                   decoration: BoxDecoration( color: Colors.grey[200],borderRadius: BorderRadius.circular(30)),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('App UI Design',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       Text('5 minutes ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey))
                     ],
                    
                   ),
                   Text('\$29/hour',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
                 ],)),
               Container(
                   padding: const EdgeInsets.all(15),
                   margin: const EdgeInsets.all(10),
                   height: 70,
                   decoration: BoxDecoration( color: Colors.grey[200],borderRadius: BorderRadius.circular(30)),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Wireframes for Web',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       Text('30 minutes ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey))
                     ],
                    
                   ),
                   Text('\$21/hour',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
                 ],)),
               Container(
                   padding: const EdgeInsets.all(15),
                   margin: const EdgeInsets.all(10),
                   height: 70,
                   decoration: BoxDecoration( color: Colors.grey[200],borderRadius: BorderRadius.circular(30)),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('UX Research',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       Text('1 hour ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey))
                     ],
                    
                   ),
                   Text('\$32/hour',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
                 ],))      
               ],
             ),
           
           
           
        ],)
        ),
    bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),title:Text('Home',style: TextStyle(color:Colors.black),)),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded,color: Colors.black),title: Text('Jobs',style: TextStyle(color:Colors.black),))
      ],
      currentIndex: _selectedIndex, 
      onTap: (index){
        switch(index){
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  BottomBar()));
            break;
          case 1:
            
            break;
        
    }
 } 
      ),    
    ),);
  }
}