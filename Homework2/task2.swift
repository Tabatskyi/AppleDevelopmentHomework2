import Foundation

class TreeNode
{
    var value: Int;
    var children: [TreeNode];
    var neighbors: [WeakNode];
    
    init(value: Int)
    {
        self.value = value;
        self.children = [];
        self.neighbors = [];
    }
    
    func addChild(_ node: TreeNode)
    {
        self.children.append(node);
    }
    
    func addNeighbor(_ node: TreeNode)
    {
        self.neighbors.append(WeakNode(node));
    }
    
    func DFSSearch(value: Int, depth: Int = 0) -> Bool
    {
        print("\(String(repeating: " ", count: depth)) Node with value \(self.value)");  // https://stackoverflow.com/questions/27806693/create-a-string-with-n-blank-spaces-or-other-repeated-character
        if (self.value == value)
        {
            print("Found \(value)");
            return true;
        }
        for child in children
        {
            if child.DFSSearch(value: value, depth: (depth + 1))
            {
                return true
            }
        }
        return false;
    }
    
    struct WeakNode  // https://stackoverflow.com/questions/24127587/how-do-i-declare-an-array-of-weak-references-in-swift
    {
        weak var value : TreeNode?;
        init (_ value: TreeNode)
        {
            self.value = value;
        }
    }
}
