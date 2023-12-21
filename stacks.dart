void main(){
  // Stacks: Reverse a List Create a function that prints the contents of a list in reverse   // order.

  var orgList = [1, 2, 3, 4, 5];
  print(orgList);


  var objList = orgList.reversed ;
    
  var revList = new List.from(objList);
  print(revList);
}

//--------------------------------


class A {
  // 
  bool isValid(String s) {
    if (s.isEmpty) return true;
    s.split("");

    List<String> parenthesisStack = [];
    for (var i = 0; i < s.length; i++) {
      if (s[i] == "(" ||
          s[i] == "{" ||
          s[i] == "[" && parenthesisStack.isEmpty) {
        return false;
      } else if (s[i] == "(" && parenthesisStack.last == ")" ||
          s[i] == "{" && parenthesisStack.last == "}" ||
          s[i] == "[" && parenthesisStack.last == "]") {
        parenthesisStack.removeLast();
      } else {
        parenthesisStack.add(s[i]);
      }
    }

    return parenthesisStack.length == 0;
  }
}

//--------------------------------------------------