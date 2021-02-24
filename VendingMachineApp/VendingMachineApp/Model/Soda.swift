import Foundation

enum SodaType: String {
    case coke
    case cider
    case fanta
}

class Soda: Beverage {
    private var sodaType: SodaType
    
    init(brand: String, capacity: Int, price: Int, name: String, sodaType: SodaType, date: Date = Date()) {
        self.sodaType = sodaType
        super.init(brand: brand, capacity: capacity, price: price, name: name, date: date)
    }
}
