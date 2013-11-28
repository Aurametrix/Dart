/**
 * Bubble Sort
 *
 * If data are nearly sorted, takes O(n) time, but with 2 or more passes through the data 
 *
 *   
 */
class Bubble {

  // bubble sort
  static void sort(List<Comparable> a) {
    bool swapped = true;
    while (swapped) {
      swapped = false;  // assume this is last pass over array
      for (int i=0; i<a.length-1; i++) {
        if (_less( a[i+1], a[i])) {
             // exchange elements
            _exch(a, i, i+1);
            swapped = true;  // after an exchange, must look again    
        }
      }
    }
    
    assert(_isSorted(a));
  }
  
  // use a custom order and Comparator interface 
  static void sortWithComparer(List<Object> a, var c) {   
    bool swapped = true;
    while (swapped) {
      swapped = false;  // assume this is last pass over array
      for (int i=0; i<a.length-1; i++) {
        if (_lessWithComparer(c, a[i+1], a[i])) {
            // exchange elements
            _exch(a, i, i+1);
            swapped = true;  // after an exchange, must look again   
        }
      }
    }
    assert(_isSorted(a));
  }
  
  //
  // Helper sorting functions
  // 
  
  // is v < w ?
  static bool _less(Comparable v, Comparable w) {
    return (v.compareTo(w) < 0);
  }
  
  // is v < w ?
  static bool _lessWithComparer(var c, Object v, Object w) {
    return (c.compareTo(v,w) < 0);
  }
  
  // exchange a[i] and a[j] 
  static void _exch(List a, int i, int j) {
    var swap = a[i];
    a[i] = a[j];
    a[j] = swap;
  }
  
  //
  // Check list is sorted - useful for debugging
  //
  // is the list sorted
  static bool _isSorted(List<Comparable> a) {
    return _isSortedInRange(a, 0, a.length-1);
  }
  
  // is the list sorted from a[lo] to a[hi]
  static bool _isSortedInRange(List<Comparable> a, int lo, int hi) {
    for (int i= lo + 1; i <= hi; i++) {
      if (_less(a[i], a[i-1])) {
        return false;
      }
    }
    
    return true;
  }
  
  // is the list sorted from a[lo] to a[hi]
  static bool _isSortedInRangeWithComparer(List<Object> a, var c, int lo, int hi) {
    for (int i = lo + 1; i <= hi; i++) {
      if (_lessWithComparer(c, a[i], a[i-1])) {
        return false;
      }
    }
    
    return true;
  }
  
  // print to standard output
  static show(List<Comparable> a) {
    for (int i = 0; i < a.length; i++) {
      print(a[i]);
    }
  }
}

