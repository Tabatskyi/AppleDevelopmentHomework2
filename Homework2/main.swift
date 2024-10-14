import Foundation

// task 1 (all classes are in task1.swift)
var person: Person? = Person(name: "/*WRITE YOUR NAME HERE*/")

person?.setupApartment(Apartment(number: 42))

person?.apartment?.tenant = person
person?.getInfo()
person?.apartment?.getInfo()

person = nil

// task 2 (same idea as with task 1)

let node1 = TreeNode(value: 1);
let node2 = TreeNode(value: 2);
let node3 = TreeNode(value: 3);

node1.addNeighbor(node2);
node2.addNeighbor(node3);
node3.addNeighbor(node1);
print("Done");

// task 3
func printAddress(address o: UnsafeRawPointer )
{
    print(String(format: "%p", Int(bitPattern: o)));
}

var myData1 = MyData([1, 2, 3]);
var myData2 = myData1;
print(myData1.storage.array)
printAddress(address: &myData1.storage.array);
print(myData2.storage.array)
printAddress(address: &myData2.storage.array);

myData1.append(4)
print(myData1.storage.array)
printAddress(address: &myData1.storage.array);
print(myData2.storage.array)
printAddress(address: &myData2.storage.array);

RunLoop.main.run();
