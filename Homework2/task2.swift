import Foundation

class TreeNode
{
    var value: Int;
    var children: [TreeNode];
    var neighbors: [TreeNode];
    
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
        self.neighbors.append(node)
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
}

func createTree(childrenRangeStart x: Int, childrenRangeEnd y: Int, depth: Int) -> TreeNode?
{
    if ((x < 0 || y <= 0) || (x >= y))
    {
        return nil;
    }
    else if (depth == 0)
    {
        return TreeNode(value: 0);
    }
    
    let childrenCount = Int.random(in: x...y);
    let node = TreeNode(value: abs(depth - childrenCount));
    for _ in 0..<childrenCount
    {
        if let child = createTree(childrenRangeStart: x, childrenRangeEnd: y, depth: depth - 1)
        {
            node.addChild(child);
        }
        else { return nil; }
    }
    return node;
}
