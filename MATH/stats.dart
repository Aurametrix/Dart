/* Import math library to get:
 *     	1) Square root function 	        : Math.sqrt(x)
 *	2) Power function 		: Math.pow(base, exponent)
 *	3) Random number generator 	: Math.Random()
 */		
import 'dart:math' as Math show sqrt, pow, Random;
 
// Returns average/mean of a list of numbers
num mean(List<num> l)  => l.reduce((num value,num element)=>value+element)/l.length;
 
// Returns standard deviation of a list of numbers
num stdev(List<num> l) => Math.sqrt((1/l.length)*l.map((num x)=>x*x).reduce((num value,num element) => value+element) - Math.pow(mean(l),2));
 
/* CODE TO PRINT THE HISTOGRAM STARTS HERE
 *
 * 	Histogram has ten fields, one for every tenth between 0 and 1
 * 	To do this, we save the histogram as a global variable
 * 	that will hold the number of occurences of each tenth in the sample
 */
List<num> histogram = new List.filled(10,0);
