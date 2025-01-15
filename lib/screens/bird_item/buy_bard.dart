
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/bird_model.dart';


class BuyBard extends StatelessWidget{
  final Bird bird;
  BuyBard({super.key,required this.bird});

  


   String phoneNumber = '+2540700742362'; // Hardcoded phone number
   String message = 'Hello, this is hardcoded message'; // Predefined message


  Future<void> sendMessage() async {
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

       leading: IconButton(
         icon: const Icon(Icons.arrow_back),
         onPressed: () => Navigator.of(context).pop(),
       ),
     ),
     body: Padding(
       padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
       child: CustomScrollView(
         slivers: [
           imagbard(),
           size5(),
           name(),
           size5(),
           birdinfo(),




         ],
       ),
     )







//      Center(
//        child: Column(
//
//          children: [
//            ElevatedButton(
//                onPressed: (){
//                  //  FlutterPhoneDirectCaller.callNumber('+2540700742362');
//                  launch('tel:+2540700742362');
//
//
//                },
//                child: const ListTile(
//                  leading: Icon(Icons.call_outlined),
//                  title: Text('VIEW'),
//                )
//            ),
// const SizedBox(height: 20,),
//            ElevatedButton(
//                onPressed: (){
//                   FlutterPhoneDirectCaller.callNumber('+2540700742362');
//
//
//
//                },
//                child: const ListTile(
//                  leading: Icon(Icons.call_outlined),
//                  title: Text('CALL'),
//                )
//            ),
//
//            const SizedBox(height: 20,),
//            ElevatedButton(
//                onPressed: sendMessage,
//                child: const ListTile(
//                  leading: Icon(Icons.message_outlined),
//                  title: Text('CHAT'),
//                )
//            ),
//
//          ],
//        )
//
//
//
//      )
//      ,
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
          children: [
            ListTile(
              title:  Column(
                children: [
                  Text('${bird.name} -${bird.category} for sale'),
                  const SizedBox(height: 5),
                  Text('Ksh ${bird.price}'),
                  const SizedBox(height: 5),
                  const Text('More information'),
                  const SizedBox(height: 5),
                ],
              )
            ),

          ],
        )
      ),
    );

  }






  }


