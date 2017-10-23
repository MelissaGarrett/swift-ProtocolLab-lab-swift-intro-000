//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault : ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        if password.isEmpty {
            return false
        }
        
        if password.count > 10 {
            return false
        }
        
        for num in stride(from: 0, to: password.count - 1, by: 2) {
            if num % 2 != 0 {
                return false
            }
        }
        
        return true
    }
}





