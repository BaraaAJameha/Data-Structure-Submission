//Linked List:
//Challenge 1: Print in Reverse 

import java.util.*;
class Reverse_Nodes
{	
	public static void main(String[] args)
	{
		LinkedList list = new LinkedList();
		list.head = new Node(34);
		list.head.next = new Node(18);
		list.head.next.next = new Node(23);
		list.head.next.next.next = new Node(2);
		list.head.next.next.next.next = new Node(9);
 
		System.out.println("Given Linked list");
		list.printList(head);
		head = list.reverse(head);
		System.out.println("");
		System.out.println("Reversed Linked list ");
		list.printList(head);
	}
 
	static Node head;
	static class Node {
 
		int data;
		Node next;
 
		Node(int d)
		{
			data = d;
			next = null;
		}
	}
 
	Node reverse(Node node)
	{
		Node prev = null;
		Node current = node;
		Node next = null;
		while (current != null) {
			next = current.next;
			current.next = prev;
			prev = current;
			current = next;
		}
		node = prev;
		return node;
	}
 
	void printList(Node node)
	{
		while (node != null) {
			System.out.print(node.data + " ");
			node = node.next;
		}
	}	
}
//-------------------------------------------------------------


//Challenge 2: Find the Middle Node 

class LinkedList<T> {
  Node<T>? head; // Reference to the first node in the list

  LinkedList();

  bool get isEmpty => head == null; // Check if the list is empty

  // Add a new node to the end of the list
  void add(T value) {
    final newNode = Node<T>(value);
    if (isEmpty) {
      // If the list is empty, set the new node as the head
      head = newNode;
    } else {
      var current = head;
      while (current!.next != null) {
        // Traverse the list to find the last node
        current = current.next;
      }
      current.next = newNode; // Set the new node as the next node of the last node
    }
  }

  // Remove the first node with the given value
  void remove(T value) {
    if (isEmpty) return;

    if (head!.value == value) {
      // If the value is in the head node, update the head to the next node
      head = head.next;
      return;
    }

    var current = head;
    while (current!.next != null) {
      if (current.next!.value == value) {
        // If the value is found in the next node, skip the next node
        current.next = current.next.next;
        return;
      }
      current = current.next;
    }
  }

  // Print the values of all nodes in the list
  void printList() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}



//---------------------------------------------------------------

import 'package:starter/linked_list.dart';

class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}
@override
String toString() {
  if (next == null) return '$value';
  return '$value -> ${next.toString()}';
}



void main(){
final node1 = Node(value: 1);
final node2 = Node(value: 2);
final node3 = Node(value: 3);

node1.next = node2;
node2.next = node3;

print(node1);




final list = LinkedList<int>();
list.push(3);
list.push(2);
list.push(1);

print('Before: $list');

final poppedValue = list.pop();

print('After:  $list');
print('Popped value: $poppedValue');

}




class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }


E? pop() {
  final value = head?.value;
  head = head?.next;
  if (isEmpty) {
    tail = null;
  }
  return value;
}

}
