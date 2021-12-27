import 'package:flutter/material.dart';
import 'package:test_project/network/model/address.dart';
import 'package:test_project/ui/home/widget/address_item.dart';

class AddressList extends StatefulWidget {
  const AddressList({
    Key? key,
    required this.addresses,
  }) : super(key: key);
  final List<Address> addresses;

  @override
  State<AddressList> createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: widget.addresses.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemBuilder: (context, index) {
          final address = widget.addresses[index];

          return Dismissible(
              key: Key(address.title),
              onDismissed: (direction) {
                setState(() {
                  widget.addresses.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Address has been removed!'),
                  ),
                );
              },
              // Show a red background as the item is swiped away.
              background: Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.delete,
                      size: 24,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              child: AddressItem(
                address: address,
                index: index,
              ));
        });
  }
}
