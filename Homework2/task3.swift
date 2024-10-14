import Foundation

// https://blog.devgenius.io/swift-copy-on-write-e3551848c743
class Storage
{
    var array: [Int];
    init(_ array: [Int])
    {
        self.array = array;
    }
}

struct MyData
{
    var storage: Storage;
    
    init(_ array: [Int])
    {
        self.storage = Storage(array);
    }
    
    mutating func append(_ value: Int)
    {
        if (!isKnownUniquelyReferenced(&storage))
        {
            storage = Storage(storage.array);
        }
        storage.array.append(value);
    }
}
