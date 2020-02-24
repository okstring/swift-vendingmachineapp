//
//  Milk.swift
//  VendingMachineApp
//
//  Created by TTOzzi on 2020/02/21.
//  Copyright © 2020 TTOzzi. All rights reserved.
//

import Foundation

class Milk: Beverage {
    private var fatRatio: Double
    
    func isLowFat() -> Bool {
        return fatRatio < 3
    }
    
    init(brand: String, amount: Int, price: Int, name: String, fatRatio: Double) {
        self.fatRatio = fatRatio
        super.init(brand: brand, amount: amount, price: price, name: name)
    }
}
