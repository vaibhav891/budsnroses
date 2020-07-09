import 'package:budsnroses/domain/address/bloc/address_bloc.dart';
import 'package:budsnroses/infrastructure/user/firestore_address.dart';
import 'package:budsnroses/presentation/add_address_page.dart';
import 'package:budsnroses/presentation/myappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressPage extends StatelessWidget {
  final FirestoreAddress _firestoreAddress = FirestoreAddress();
  final String userId;
  //final addressBloc = AddressBloc(_firestoreAddress)..add(GetAddressesEvent(userId));

  AddressPage({Key key, @required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //userId = 'vaibhav';
    print(userId);
    return BlocProvider(
      create: (BuildContext context) =>
          AddressBloc(_firestoreAddress)..add(GetAddressesEvent(userId)),
      child: AddressPageBody(userId: userId),
    );
  }
}

class AddressPageBody extends StatelessWidget {
  const AddressPageBody({
    Key key,
    @required this.userId,
  }) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    final addressBloc = BlocProvider.of<AddressBloc>(context);
    print('first hash ${context.hashCode.toString()}');

    return Scaffold(
      appBar: MyAppBar("Select Address"),
      body: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          print('second hash ${context.hashCode.toString()}');

          if (state is AddressLoadedState) {
            if (state.addresses != null && state.addresses.length > 0) {
              print(state.addresses.length);
              return Column(
                children: <Widget>[
                  Flexible(
                    child: ListView(
                        children: state.addresses
                            .map((e) => RadioListTile(
                                title: Text(e.address1 + ', ' + e.address2),
                                subtitle: Text(
                                    e.city + ', ' + e.state + '-' + e.pincode),
                                value: null,
                                groupValue: null,
                                onChanged: null))
                            .toList()),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute<AddAddressPage>(
                        builder: (context) => BlocProvider.value(
                          value: addressBloc,
                          child: AddAddressPage(
                            userid: userId,
                          ),
                        ),
                      ));
                    },
                    child: Text("Add another one"),
                  )
                ],
              );
            } else {
              return Center(
                  child: Column(
                children: <Widget>[
                  Text('No data to display'),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute<AddAddressPage>(
                        builder: (context) => BlocProvider.value(
                          value: addressBloc,
                          child: AddAddressPage(
                            userid: userId,
                          ),
                        ),
                      ));
                    },
                    child: Text("Add one"),
                  )
                ],
              ));
            }
          } else {
            //circular progress indicator
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      bottomNavigationBar: RaisedButton(
        onPressed: () {},
        child: Text('Proceed to pay'),
      ),
    );
  }
}
