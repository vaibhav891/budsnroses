part of 'address_bloc.dart';

abstract class AddressState extends Equatable {
  const AddressState();

  @override
  List<Object> get props => [];
}

class AddressInitialState extends AddressState {}

class AddressFinalState extends AddressState {}

class AddressLoadedState extends AddressState {
  final List<Address> addresses;

  const AddressLoadedState(this.addresses);

  @override
  List<Object> get props => [addresses];
}
