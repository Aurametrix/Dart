// collection that can be manipulated at both ends. 

// constructor examples
void main() {
  Queue<String> queue = new Queue<String>(); 
  queue.add("a");
  queue.add("b");
  queue.add("c");
  print(queue); // prints "{a, b, c}"

// with type annotation
  List<String> other = ["a","b","c"];
  Queue<String> queue = new Queue<String>.from(other); 
  print(queue); // prints "{a, b, c}"

//without type annottion
 List<String> other = ["a","b","c"];
  var queue = new Queue.from(other); 
  print(queue); // prints "{a, b, c}"

}
