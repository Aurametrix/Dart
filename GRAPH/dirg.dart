part of graphlab;

class DirectedGraph extends IterableBase {
  final HashMap dGraph = new HashMap();

  /// Adds a new node to the graph.  If the node already exists, then the
  /// graph is unchanged.
  HashMap addNode(var node) {
    if (!dGraph.containsKey(node)) {
      dGraph[node] = new HashSet();
    }
  }
  /// Given a start and destination node, adds an arc from the start node
  /// to the destination.  If the edge already exists, then the graph is
  /// unchanged.  If either endpoint does not exist in the graph, throws a
  /// NoSuchElementException.
  HashMap addEdge(var start, var dest) {
    if (dGraph.containsKey(start) && dGraph.containsKey(dest)) {
      dGraph[start].add(dest);
    } else {
      throw new NoSuchElementException("Both nodes must be in the graph.");
    }
  }
  /// Removes the edge from start to dest from the graph.  If the edge does
  /// not exist, then returns the HashMap unchanged.  If either endpoint does
  /// not exist in the graph, throws a NoSuchElementException.
  HashMap removeEdge(var start, var dest) {
    if (dGraph.containsKey(start) && dGraph.containsKey(dest)) {
      dGraph[start].remove(dest);
    } else {
      throw new NoSuchElementException("Both nodes must be in the graph.");
    }
  }
  /// Given two nodes in the graph, returns whether there is an edge from
  /// the first node to the second node.  If either node does not exist in
  /// the graph, throws a NoSuchElementException.
  bool edgeExists(var start, var end) {
    if (dGraph.containsKey(start) && dGraph.containsKey(end)) {
      return dGraph[start].contains(end);
    } else {
      throw new NoSuchElementException("Both nodes must be in the graph.");
    }
  }
  /// Given a node in the graph, returns set of the edges leaving that
  /// node as a set of endpoints.  If the node doesn't exist, throws a
  /// NoSuchElementException.
  HashSet edgesFrom(var node) {
    final HashSet arcs = dGraph[node];
    if (arcs == null) {
      throw new NoSuchElementException("Source node does not exist.");
    } else {
      return arcs;
    }
  }
  /// Getter iterator returns an iterator to the directed graph's
  /// keys to allow traversing the nodes in the graph.
  Iterator get iterator => dGraph.keys.iterator;
  /// Getter length returns the length of the directed graph.
  int get length => dGraph.length;
}

