void main() {
  List<String> cities = ['delhi', 'gurugram', 'faridabad', 'noida', 'sohna'];
  String FinalCities = '';
  for (int i = 0; i < cities.length; i++) {
    FinalCities = FinalCities + cities[i] + " ";

    print(identityHashCode(FinalCities));
  }
  print('cities list: ${FinalCities}');
  //there is a way to make string mutable
  StringBuffer buffer = new StringBuffer();

  // for each loop
  for (String city in cities) {
    buffer.write(city + " ");
    print(identityHashCode(buffer));
  }
  //change mutable buffer to immutable
  print(buffer.toString());
}
