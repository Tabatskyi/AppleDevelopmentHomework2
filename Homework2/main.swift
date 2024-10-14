import Foundation

// task 1 (all classes are in task1.swift)
var person: Person? = Person(name: "/*WRITE YOUR NAME HERE*/")

person?.setupApartment(Apartment(number: 42))

person?.apartment?.tenant = person
person?.getInfo()
person?.apartment?.getInfo()

person = nil

//task 2 (same idea as with task 1)

guard let treeRoot = createTree(childrenRangeStart: 2, childrenRangeEnd: 5, depth: 10) else
{
    print("Error in creating tree");
    exit(1);
}
let node1 = TreeNode(value: 1);
let node2 = TreeNode(value: 2);
let node3 = TreeNode(value: 3);

node1.addNeighbor(node2);
node2.addNeighbor(node3);
node3.addNeighbor(node1);
print("Done");
