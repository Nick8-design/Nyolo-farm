import 'package:birds/models/bird_model.dart';
import 'package:birds/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ItemDetails extends ConsumerStatefulWidget{
  final Bird item;

  const ItemDetails({
    super.key,
    required this.item,
});

  @override
  ConsumerState<ItemDetails> createState() => _ItemDetailsState();
}


class _ItemDetailsState extends ConsumerState<ItemDetails> {

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    String gen='';
    if(widget.item.gender=='unknown'){
      gen='';

    }else{
      gen=widget.item.gender;
    }


    final colorTheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${widget.item.name} ${widget.item.category}", style: textTheme.headlineMedium),
                const SizedBox(height: 16.0 ),
                 Text("Colour ${widget.item.color}"),
                const SizedBox(height: 16.0),
                Text("${widget.item.ageBracket} $gen"),
                const SizedBox(height: 16.0),
                _itemImage(widget.item.imgurl),
                const SizedBox(height: 16.0),
                _addToCartControl(widget.item)


              ]),


        ],
      ),
    );

  }







  Widget _itemImage(String imageUrl) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        // 3
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }



  Widget _addToCartControl(Bird item) {
    return FilledButton(
      onPressed: () {
        ref.read(cartProvider.notifier).toggleFavorite(widget.item.id);
        Navigator.pop(context);
      },
      child: const Text('Add to Cart'),

    );
  }




}