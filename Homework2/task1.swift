import Foundation

class Apartment {
    let number: Int
    weak var tenant: Person? // when here unowned code appers to work just the same as with the weak ref
    
    init(number: Int) {
        self.number = number
    }
    
    func getInfo() {
        print("Apartment \(number) hosting \(tenant?.name.description ?? "empty")")
    }
    
    deinit {
        print("Apartment deinitialized")
    }
}

class Person {
    let name: String
    var apartment: Apartment? // when both references are weak Apartment appears empty. When here unowned, code throws Fatal error: Attempt to read already deallocated reference
    
    init(name: String) {
        self.name = name
    }
    
    func setupApartment(_ apartment: Apartment) {
        self.apartment = apartment
    }
    
    func getInfo() {
        print("Person \(name) is in Apartment \(apartment?.number.description ?? "empty")")
    }
    
    deinit {
        print("Person deinitialized")
    }
}
