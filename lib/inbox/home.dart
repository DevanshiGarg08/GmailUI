import 'package:flutter/material.dart';
import 'package:navigation/inbox/internal.dart';
import 'package:navigation/model/mails.dart';


class App extends StatefulWidget
{
  @override
  Home createState() {
    // TODO: implement createState
    return Home();
    throw UnimplementedError();
  }
  
}

class Home extends State<App>
{
  
  @override
  Widget build(BuildContext context) {
    var obj = Mails();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu
        ),
        title:Text("Unread"),
        actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.search,
          size: 26.0,
        ),
      )
    ),
   
  ],
    ),
    body: ListView.separated(
      itemCount: obj.main.length,
      itemBuilder: (context,index)
      {
        return ListTile(
          isThreeLine: true,
          // leading: Icon(
          //   Icons.person,
          //   size: 25.0,
          //   color: Colors.black,
          // ),
          leading: CircleAvatar(
            backgroundColor:obj.colors[index],
            child:Text(obj.main[index].substring(0,1),
            style: TextStyle(
              fontSize:25.0,
              color:Colors.white
            ),),
            radius: 26,
            
          ),
         title: Text(obj.main[index],
       
         style: TextStyle(
           fontSize:20.0,
           fontWeight:FontWeight.w700,
           fontFamily: 'Poppins',
           
         ),
         ),
         
         subtitle: Column(

                children: <Widget>[
                  Text(obj.title[index],
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  style: TextStyle(
                     fontSize:16.0,
           fontWeight:FontWeight.w700,
           fontFamily: 'Poppins',
           color: Colors.black
                  ),
                  ),
                  Text(obj.subtitle[index],
                  overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  style: TextStyle(
                     fontSize:16.0,
           fontWeight:FontWeight.w500,
           fontFamily: 'Poppins',
           color: Colors.grey
                  ),)
                  
                ],
              ),

        // subtitle: Text(title[index],
        // style: TextStyle(
        //   fontSize:16.0,
        //    fontWeight:FontWeight.w700,
        //    fontFamily: 'Poppins',
        //    color: Colors.black
        // ),
        // ),
         onTap: ()
         {
           Navigator.push(context, MaterialPageRoute(builder: (context){
           return Internal(obj.main[index],obj.title[index],obj.time[index],obj.colors[index],obj.heading[index],obj.para[index]);
           },
            settings: RouteSettings(
                    arguments:obj.main[index],
                   
                  )
           ),
           );
         },
         trailing: Container(
           child: Column(
           children:[
            
             Text(obj.time[index],
             style: TextStyle(
               color:Colors.blue,
               fontWeight: FontWeight.w600
             ),),
             SizedBox(height:10.0),
              Icon(Icons.star_border),
           ]
         ),
         
         height: 80.0,
         //color: Colors.yellow,
         )
        
         
        
        //  contentPadding: EdgeInsets.all(8.0),
        );
        
      },
      separatorBuilder: (context, index) {
    return Divider();
  },
      
      ),
    floatingActionButton: FloatingActionButton(onPressed: ()
    {
      
    },
   child: IconButton(
        icon: Icon(Icons.edit),
         onPressed: () {  },
        )
        ),
    );
    throw UnimplementedError();
  }

}