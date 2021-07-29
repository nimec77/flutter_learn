class CreatePhoneNumber {
  String createPhoneNumber(List<int> numbers) {

    return '(${numbers.take(3).join()}) ${numbers.skip(3).take(3).join()}-${numbers.skip(6).join()}';
  }
}