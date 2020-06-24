import 'package:budsnroses/domain/address/bloc/address_bloc.dart';
import 'package:budsnroses/infrastructure/user/firestore_address.dart';
import 'package:budsnroses/presentation/myappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressPage extends StatelessWidget {
  final FirestoreAddress _firestoreAddress = FirestoreAddress();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: BlocBuilder(
        builder: (context, state) {
          if (state is AddressLoadedState && state.addresses != null) {
            //print(state.addresses);
            return ListView(
                children: state.addresses
                    .map((e) => RadioListTile(
                      title: Text(e.address1+', '+e.address2),
                      subtitle: Text(e.city+', '+e.state+'-'+e.pincode),
                        value: null, groupValue: null, onChanged: null))
                    .toList());
          }else{
            return Text('No data to display');
          }
        },
        bloc: AddressBloc(_firestoreAddress)..add(GetAddressesEvent('vaibhav')),
      ),
    );
  }
}
