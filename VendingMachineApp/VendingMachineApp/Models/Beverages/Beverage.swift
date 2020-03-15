//
//  Beverage.swift
//  VendingMachineApp
//
//  Created by kimdo2297 on 2020/03/04.
//  Copyright © 2020 Jason. All rights reserved.
//

import Foundation

class Beverage {
    
    private let brand: String
    private let name: String
    private let volume: Int
    private let manufacturingDate: Date
    let price: Int
    let kind: Kind
    
    
    init?(builder: Beverage.Builder,
          manufacturingDateInfo: String) {
        guard let manufacturingDate = Date.dateFormatter.date(from: manufacturingDateInfo)
            else {
                return nil
        }
        self.brand = builder.brand
        self.name = builder.name
        self.volume = builder.volume
        self.price = builder.price
        self.manufacturingDate = manufacturingDate
        self.kind = Kind(name: self.name,
                         price: self.price)
    }
    
}

extension Beverage: Equatable {
    
    static func == (lhs: Beverage, rhs: Beverage) -> Bool {
        return lhs.kind == rhs.kind
    }
    
}

extension Beverage: CustomStringConvertible {
    
    @objc var description: String {
        return "\(brand), \(volume)ml, \(price)원, \(name)" +
        ", \(manufacturingDate.toStringYearMonthDay)"
    }
    
}

extension Beverage {
    
    class Builder {
        
        let brand: String
        let name: String
        let volume: Int
        let price: Int
        
        init(brand: String,
             name: String,
             volume: Int,
             price: Int) {
            self.brand = brand
            self.name = name
            self.volume = volume
            self.price = price
        }
    }
    
}

extension Beverage {
    
    struct Kind: Hashable {
        
        private let name: String
        private let price: Int
        
        init(name: String, price: Int) {
            self.name = name
            self.price = price
        }
        
        func hash(into hasher: inout Hasher) {
            return hasher.combine(name + String(price))
        }
        
    }
    
}
