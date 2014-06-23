## takes a number and inserts commas as separators
import 'dart:io';

main(){ 
var input = '1234.56789'; 
print("Enter a number - for example, $input");
var input = stdin.readLineSync();

final matcher = new RegExp(r'(\d+)(\d{3})'); 

List input_parts = input.split('.'); 
String first_part = input_parts[0]; 

String second_part = first_part.length > 1 ? ".${input_parts[1]}" : ''; 
print (first_part); 
while ((first_part).contains(matcher)) { 
first_part = (first_part.replaceAllMapped(matcher, (m) => '${m[1]},${m[2]}') ); 
} 
print ('$first_part$second_part'); 
}
