
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/bird_model.dart';


class BuyBard extends StatelessWidget{
  final Bird bird;
  BuyBard({super.key,required this.bird});

  


   String phoneNumber = '+2540700742362'; // Hardcoded phone number
    // Predefined message


  Future<void> sendMessage() async {
    String message = 'Hello, I saw ${bird.name} it is a ${bird.category} and ${bird.gender} with this colour ${bird.color} and I would like to buy it';
    final Uri smsUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
      queryParameters: {
        'body': message
      },
    );

    await launchUrl(smsUri);


  }
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(
title: const Text("Order"),
       leading: IconButton(
         icon: const Icon(Icons.arrow_back),
         onPressed: () => Navigator.of(context).pop(),
       ),
     ),
     body: Padding(
       padding: const EdgeInsets.only(left: 8,right: 8,bottom: 32),
       child: CustomScrollView(
         slivers: [
           imagbard(),
           size5(),
           name(),
           size5(),
           call(),
           size5(),
           birdinfo(),
           size5(),
           serious()




         ],
       ),
     )







   );


  }

  Widget size5()=> const SliverToBoxAdapter(child: SizedBox(height: 5),);

  Widget name()=>  SliverToBoxAdapter(child: Text(
    '${bird.category} - ${bird.name}',
    overflow: TextOverflow.ellipsis,
  ),);


  Widget imagbard() {
    return SliverToBoxAdapter(
      child: Image.asset(
        bird.imgurl,
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) =>
        const Center(child: Text('Image not found')),
      ),
    );
  }

  Widget birdinfo(){


    return SliverToBoxAdapter(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: ttle(),
              subtitle: tail(),



            ),

          ],
        )
      ),
    );

  }

  Widget ttle(){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${bird.name} -${bird.category} for sale'),
        const SizedBox(height: 5),
        Text('Ksh ${bird.price}'),
        const SizedBox(height: 5),
        const Text('More information'),
        const SizedBox(height: 5),
      ],
    );
  }

  Widget tail(){
    String gen='';
    if(bird.gender=='unknown'){
      gen='';

    }else{
      gen=bird.gender;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Colour : ${bird.color} ',
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),
        Text('Age group : ${bird.ageBracket}  $gen'),
      ],
    );
  }

Widget call(){
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Expanded(child:
        ElevatedButton(
               onPressed: (){
                  FlutterPhoneDirectCaller.callNumber('+2540700742362');
               //  launchUrl('tel:+2540700742362' as Uri);
               },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          backgroundColor: Colors.yellow

        ),
               child: const Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Icon(Icons.call_outlined),
                   SizedBox(width: 3,),
                 Text('CALL'),

  ],
               ),
        )


           ),
          const SizedBox(width: 3,),
          Expanded(child:
          ElevatedButton(
            onPressed: sendMessage,

            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                backgroundColor: Colors.purple[200]

            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.message_outlined),
                 SizedBox(width: 3,),
                Text('CHART'),
              ],
            ),
          ),
  ),
        ],
      ),
    );

}

Widget serious(){
  String gen='';
  if(bird.gender=='unknown'){
    gen='';

  }else{
    gen=bird.gender;
  }

  return SliverToBoxAdapter(
      child: Card(

        child:Padding(
          padding: const EdgeInsets.all(5),
        child:

        Column(

          children: [
            Text(
                '${bird.name} $gen for sale. Only serious person contact.',
                maxLines: 2),
             ListTile(
              trailing: ttail(),
            ),
          ],
        ),

      ),
      ),
    );
}


Widget ttail(){
return GestureDetector(
  onTap: (){
    launch('tel:+2540700742362');},

    child:


    const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[

        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person),
            SizedBox(width: 3),
            Text('Nick Dieda'),
          ],
        ),
        SizedBox(width: 3),
        Text('+254700742362'),

      ],)

  );
}

  }


