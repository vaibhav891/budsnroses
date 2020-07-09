import 'dart:convert';

class Address {
  //final String uid;
  final String address1;
  final String address2;
  final String city;
  final String state;
  final String country;
  final String pincode;
  Address({
    //this.uid,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.country,
    this.pincode,
  });

  Address copyWith({
    String uid,
    String address1,
    String address2,
    String city,
    String state,
    String country,
    String pincode,
  }) {
    return Address(
      //uid: uid ?? this.uid,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      //'uid': uid,
      'address1': address1,
      'address2': address2,
      'city': city,
      'state': state,
      'country': country,
      'pincode': pincode,
    };
  }

  static Address fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Address(
      //uid: map['uid'],
      address1: map['address1'],
      address2: map['address2'],
      city: map['city'],
      state: map['state'],
      country: map['country'],
      pincode: map['pincode'],
    );
  }

  String toJson() => json.encode(toMap());

  static Address fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Address( address1: $address1, address2: $address2, city: $city, state: $state, country: $country, pincode: $pincode)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Address &&
        //o.uid == uid &&
        o.address1 == address1 &&
        o.address2 == address2 &&
        o.city == city &&
        o.state == state &&
        o.country == country &&
        o.pincode == pincode;
  }

  @override
  int get hashCode {
    return //uid.hashCode ^
        address1.hashCode ^
            address2.hashCode ^
            city.hashCode ^
            state.hashCode ^
            country.hashCode ^
            pincode.hashCode;
  }
}

// class User {
//   final String uid;
//   final String fname;
//   final String email;
//   final List<Address> addresses;
//   User({
//     this.uid,
//     this.fname,
//     this.email,
//     this.addresses,
//   });

//   User copyWith({
//     String uid,
//     String fname,
//     String email,
//     List<Address> addresses,
//   }) {
//     return User(
//       uid: uid ?? this.uid,
//       fname: fname ?? this.fname,
//       email: email ?? this.email,
//       addresses: addresses ?? this.addresses,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'uid': uid,
//       'fname': fname,
//       'email': email,
//       'addresses': addresses?.map((x) => x?.toMap())?.toList(),
//     };
//   }

//   static User fromMap(Map<String, dynamic> map) {
//     if (map == null) return null;

//     return User(
//       uid: map['uid'],
//       fname: map['fname'],
//       email: map['email'],
//       addresses:
//           List<Address>.from(map['addresses']?.map((x) => Address.fromMap(x))),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   static User fromJson(String source) => fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'User(uid: $uid, fname: $fname, email: $email, addresses: $addresses)';
//   }

//   @override
//   bool operator ==(Object o) {
//     if (identical(this, o)) return true;

//     return o is User &&
//         o.uid == uid &&
//         o.fname == fname &&
//         o.email == email &&
//         listEquals(o.addresses, addresses);
//   }

//   @override
//   int get hashCode {
//     return uid.hashCode ^ fname.hashCode ^ email.hashCode ^ addresses.hashCode;
//   }
// }
