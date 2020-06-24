import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:budsnroses/infrastructure/user/firestore_address.dart';
import 'package:equatable/equatable.dart';
import '../../user.dart';

part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final FirestoreAddress _firestoreAddress;

  AddressBloc(this._firestoreAddress);

  @override
  AddressState get initialState => AddressInitialState();

  @override
  Stream<AddressState> mapEventToState(
    AddressEvent event,
  ) async* {
    if (event is GetAddressesEvent) {
      final addresses = await _firestoreAddress.fetchAddresses(event.uid);
      yield AddressLoadedState(addresses);
      //
    } else if (event is AddAddressEvent) {
      _firestoreAddress.addAddress(event.address, event.uid);
      yield AddressFinalState();
    }
  }
}
