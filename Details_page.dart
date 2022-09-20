import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade600,
        title: Text('Details'),
      ),

      drawer: Drawer(
        elevation: 49,
        child: Column(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:90.0),
                child: Row(
                  children: const [
                    Icon(Icons.account_circle, size: 130, color: Colors.white,),
                    Text("abcd@gmail.com", style: TextStyle(
                      fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),
            ),

           Padding(
             padding: const EdgeInsets.only(right: 250, top: 30),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [

                 Icon(Icons.call,),
                 SizedBox(height: 30,),

                 Icon(Icons.call),
                 SizedBox(height: 30,),

                 Icon(Icons.call),
                 SizedBox(height: 30),

                 Icon(Icons.call),
                 SizedBox(height: 30),
               ],
             ),
           ),


          ],
        ),


      ),

      body: ListView(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.topCenter, colors: [Colors.cyan.shade600, Colors.white],
          //       end: Alignment.bottomCenter,
          //     )
          //   ),
          // ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://res.klook.com/image/upload/c_fill,w_1160,h_460,f_auto/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/51988759-Sarangkot-Sunrise-View.webp"), fit: BoxFit.cover, )
            )
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Oeschinen Lake Campground ", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600
                       ), ),

                      const SizedBox(height: 10,),

                      Text("Kandersteg, Switzerland ", style: TextStyle(
                          fontSize: 15, color: Colors.grey.shade400,
                      ),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.red, size: 27,),
                    Text("41", style: TextStyle(fontSize: 16),)
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.cyan.shade600,) ),
                IconButton(onPressed: (){}, icon: Icon(Icons.route,color: Colors.cyan.shade600,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.share), color: Colors.cyan.shade600,),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 25, bottom: 10),
            child: const Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',),

          ),
        ],
      ),
    );
  }
}
