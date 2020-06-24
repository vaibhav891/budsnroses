part of 'address_bloc.dart';

abstract class AddressEvent extends Equatable {
  const AddressEvent();

  @override
  List<Object> get props => [];
}

class AddAddressEvent extends AddressEvent{
  final String uid;
  final Address address;

  const AddAddressEvent(this.uid, this.address);

  @override
  List<Object> get props => [uid, address];
}

class GetAddressesEvent extends AddressEvent{
  final String uid;

  const GetAddressesEvent(this.uid);

  @override
  List<Object> get props => [uid];
}

// TODO event for update and delete