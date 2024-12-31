void main() {

  // Declaring Variables
  int num1 = 2;
  double num2 = 2.1;
  bool isTrue = true;
  String myString = 'Helllllo';


  // Dynamic variable types
  var myDnymicVariable; // Dart has no idea what is about. Not good
  var myDnymicVariable_v2 = 'Test'; // Dart infer that this is a String. 


  print('LOL');
  print(num1 + num2);
  print(isTrue);


  // Runtime Type Checking
  print((num1 + num2) is int);
  print((num1 + num2).runtimeType);


  // String Interpolation
  print('Hi, this is my string and the value is $myString. Amazing, right?');

  // Use {} for complex expressions
  print('What is this an int variable? ${myString is int}');


  // Reassinable values
  var username = 'User Name';
  username = 'Leandro'; // normal re-assignment

  // use final to avoid reassignment of variables. Make the code more explicit. 
  final String username_v2 = 'Master Name';
  //username_v2 = 'New Boss Name'; // ERROR - The final variable 'username_v2' can only be set once.



  // The const keys is almost identical to final, but it creates an immutable compile-time constant.
  // It may improve app performance, but can only be used for values known at compile time.
  const int age = 75;
  //const int favNumber = num1 + 5; // error



}