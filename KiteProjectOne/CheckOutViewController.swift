//
//  CheckOutViewController.swift
//  KiteProjectOne
//
//  Created by Cake on 10/4/18.
//  Copyright © 2018 Zoe Paula Xanos. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    var ticketQuantity = 5
    var pricePerTicket = 20
    var calculator = Calculator()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator.price = pricePerTicket
        calculator.quantity = ticketQuantity
        _ = calculator.getTotalPrice(price: ticketQuantity, quantity: pricePerTicket)
     
        priceLabel.text = "Ticket cost $ \(calculator.price)"
        quantityLabel.text = "for \(calculator.quantity) people"
        totalLabel.text = "your total cost would be $ \(calculator.total)"

    }
    

    
}
