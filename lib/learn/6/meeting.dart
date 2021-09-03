import 'package:flutter/foundation.dart';

class Meeting {
  String meeting(String s) {
    final friends = s.split(';').map((e) => Friend(e)).toList()..sort((a, b) => a.toString().compareTo(b.toString()));
    return friends.join();
  }

  String meetingBest(String s) {
    return (s.toUpperCase().split(';').map((friend) {
      final names = friend.split(':');
      return '(${names.last}, ${names.first})';
    }).toList()
          ..sort())
        .join();
  }
}

@immutable
class Friend {
  factory Friend(String s) {
    final names = s.split(':');

    return Friend._(names.first.toUpperCase(), names.last.toUpperCase());
  }

  const Friend._(this.firstName, this.lastName);

  final String firstName;
  final String lastName;

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode;

  @override
  String toString() => '($lastName, $firstName)';

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is Friend && firstName == other.firstName && lastName == other.lastName;
  }
}
