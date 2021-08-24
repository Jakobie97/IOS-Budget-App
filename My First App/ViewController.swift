//
//  ViewController.swift
//  My First App
//
//  Created by Jacob Stockwell on 8/13/21.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var budgetTxt: UITextField!
    
    @IBOutlet weak var rentTxt: UITextField!
    @IBOutlet weak var UtliTxt: UITextField!
    @IBOutlet weak var FoodTxt: UITextField!
    @IBOutlet weak var SubTxt: UITextField!
    @IBOutlet weak var luxTxt: UITextField!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       
    }
   
    @IBAction func CalculateBtn(_ sender: Any) {
        
        let budget = Double(budgetTxt.text!)!
        let rent = Double(rentTxt.text!)!
        let utility = Double(UtliTxt.text!)!
        let food = Double(FoodTxt.text!)!
        let sub = Double(SubTxt.text!)!
        let lux = Double(luxTxt.text!)!
        
        let totalExpense = rent + utility + food + sub + lux
        let totalResult = budget - totalExpense
        
        totalLabel.text = "My Spendable Balance: $" + "\(totalResult)"
        
        
    }
    
}
