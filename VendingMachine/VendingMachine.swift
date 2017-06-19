//
//  VendingMachine.swift
//  VendingMachine
//
//  Created by Andrew Taylor on 19/06/2017.
//  Copyright © 2017 Treehouse Island, Inc. All rights reserved.
//

import Foundation

//Enum to store the items that I have in my vending machine. Use this over string to avoid typos
enum VendingSelection {
    case soda
    case dietSoda
    case chips
    case cookie
    case sandwich
    case wrap
    case candyBar
    case popTart
    case water
    case fruitJuice
    case sportsDrink
    case gum
}

//setup a protcol for a a vending machine item
protocol VendingItem {
    var price: Double {get}
    var quantity: Int { get set }
}

//setup the rules for my vending machine
protocol VenchingMachine {
    var selecion: [VendingSelection] { get}
    var inventory: [VendingSelection: VendingItem] { get set }
    var amountDeposited: Double { get set }
    
    init(inventory: [VendingSelection: VendingItem])
    func vend(_ quantity: Int, _ selection: VendingSelection) throws
    func deposit(_ amount: Double)
    
}


//struct to represent an item that get the vending item proctol. Using a struct as it is value type
struct Item: VendingItem {
    let price: Double
    var quantity: Int
}

//implementing the vending machine with the protocl. Use a class as it is reference type and the venching machine will need to be updated.
//for example, the qty will change amount deposited etc
class FoodVendingMachine: VenchingMachine {
    let selecion: [VendingSelection] = [.candyBar, .chips, .cookie, .dietSoda, .fruitJuice, .gum, .popTart, .sandwich, .soda, .sportsDrink, .water, .wrap]
    var inventory: [VendingSelection : VendingItem]
    var amountDeposited: Double = 10.0
    
    required init(inventory: [VendingSelection : VendingItem]) {
        self.inventory = inventory
    }
    
    func vend(_ quantity: Int, _ selection: VendingSelection) throws {
        
    }
    
    func deposit(_ amount: Double) {
        
    }
}
