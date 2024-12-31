void main() {

  // Sound null safety is a feature added to Dart 2.0. It means variables can no longer be assigned null by default. 
  // This reduces the risk of runtime bugs and general makes our code more concise because “null checking” is no longer necessary.

  int age = 75; // non-nullable
  // int age2 = null; // error


  // Allow Null
  // In some cases, it is useful to allow a variable to be null, which is achieved by adding question mark to the end of the variable’s type.

  int? age3; // nullable - not necessary to write "null", it is implied
  int? age4 = null; // nullable



  // Assertion Operator
  // Another possible situation is that you want to assign a nullable value TO a non-nullable variable. 
  // Dart will not allow this by default, but you can use the assertion operator ! to force the compiler to think the value it is non-null.
  String? answer;
  //String result = answer; // error
  String result = answer!; // works

  // Try not to use this ! technique 

}



// Late Variable Initialization
// In many cases, we can’t set the value of a variable during initialization, BUT we know that it WILL be assigned at runtime. 
// This is known as late variable initialization and can be achieved by adding an late keyword to the variable’s declaration. 
// This is also known as a “lazy” variable and should only be used when absolutely necessary.
class Animal {
  late final String _size;
  // String _size_v2;

  void goBig() {
    _size = 'big';
    // _size_v2 = 'big'; // Error: Field '_size_v2' should be initialized because its type 'String' doesn't allow null.

    print(_size);
  }
}