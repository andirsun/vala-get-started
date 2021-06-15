// To pass the argument of name run with this code
// ❯ vala helloObjectWorld.vala --run-args Anderson
// It displays Hello Anderson!

class HelloWorld {
  private string name;

  public HelloWorld( string name ) {
    this.name = name;
  }

  public void greet() {
    var fullGreeting = "Hello " + this.name + "!\n";
    print( fullGreeting );
  }
}

int main( string[] args ) {
  var helloWorldObject = new HelloWorld( args[1] );
  helloWorldObject.greet();
  return 0;
}