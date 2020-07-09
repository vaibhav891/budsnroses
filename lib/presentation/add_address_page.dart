import 'package:budsnroses/domain/address/bloc/address_bloc.dart';
import 'package:budsnroses/domain/user.dart';
import 'package:budsnroses/presentation/myappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressPage extends StatelessWidget {
  final userid;
  const AddAddressPage({Key key, this.userid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addressBloc = BlocProvider.of<AddressBloc>(context);
    return Scaffold(
      appBar: MyAppBar("Add an Address"),
      body: BlocBuilder<AddressBloc, AddressState>(
        bloc: addressBloc,
        builder: (BuildContext context, state) => AddAddressBody(
          uid: userid,
        ),
      ),
    );
  }
}

class AddAddressBody extends StatelessWidget {
  final String uid;
  String address1;
  String address2;
  String city;
  String state;
  String country;
  String pincode;

  final _formKey = GlobalKey<FormState>();

  AddAddressBody({Key key, @required this.uid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addressBloc = BlocProvider.of<AddressBloc>(context);

    return BlocListener<AddressBloc, AddressState>(
      //bloc: BlocProvider.of<AddressBloc>(context),
      listener: (BuildContext context, state) {
        if (state is AddressFinalState) {
          addressBloc.add(GetAddressesEvent(uid));
          Navigator.of(context).pop();
          //Navigator.of(context).pushAndRemoveUntil(newRoute, (route) => false);
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text("Added successfully")));
        } else {
          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text("Unable to add. Try again later.")));
        }
      },
      child: Form(
        key: _formKey,
        autovalidate: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // FormField(
                //     onSaved: (newValue) => pincode = newValue,
                //     validator: (String input) =>
                //         double.tryParse(input) == null ? "invalid pin" : null,
                //     builder: (_) => TextField(
                //           decoration:
                //               InputDecoration(hintText: 'enter pin code'),
                //           keyboardType: TextInputType.number,
                //         )),
                TextFormField(
                  //validator: ,
                  onSaved: (newValue) => pincode = newValue.trim(),
                  decoration: InputDecoration(hintText: "enter pincode"),
                ),

                TextFormField(
                  //validator: ,
                  onSaved: (newValue) => address1 = newValue.trim(),
                  decoration:
                      InputDecoration(hintText: "flat no, building, street"),
                ),
                TextFormField(
                  //validator: ,
                  onSaved: (newValue) => address2 = newValue.trim(),
                  decoration: InputDecoration(hintText: "landmark, street"),
                ),
                TextFormField(
                  //validator: ,
                  onSaved: (newValue) => city = newValue.trim(),
                  decoration: InputDecoration(hintText: "city"),
                ),
                TextFormField(
                  //validator: ,
                  onSaved: (newValue) => state = newValue.trim(),
                  decoration: InputDecoration(hintText: "State"),
                ),
                TextFormField(
                  //validator: ,
                  onSaved: (newValue) => country = newValue.trim(),
                  decoration: InputDecoration(hintText: "country"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    //add this to address bloc
                    print(_formKey.toString());
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                    }
                    Address address = Address(
                      address1: address1,
                      address2: address2,
                      city: city,
                      state: state,
                      country: country,
                      pincode: pincode,
                    );
                    print(address);
                    addressBloc.add(AddAddressEvent(uid, address));
                  },
                  child: Text('Add this address'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
