//
//  Calculator.swift
//  KiteProjectOne
//
//  Created by Cake on 10/4/18.
//  Copyright © 2018 Zoe Paula Xanos. All rights reserved.
//

import Foundation

class Calculator {

    var price = 0
    var quantity = 0
    var total = 0
    
    func getTotalPrice(price : Int, quantity : Int)-> Int{
        total = price * quantity
        return total
    }
}
