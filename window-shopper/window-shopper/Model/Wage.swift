//
//  Wage.swift
//  window-shopper
//
//  Created by Xantes Fabela on 10/13/17.
//  Copyright © 2017 Xantes Fabela. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
