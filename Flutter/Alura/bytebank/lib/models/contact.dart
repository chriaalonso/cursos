class Contact {
  final String name;
  final accountNumber;

  Contact(this.name, this.accountNumber);

  @override
  String toString() {
    return 'Contact{name: $name, accountNumber: $accountNumber}';
  }
}
