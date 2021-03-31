//
//  ViewController.swift
//  AlertDSL
//
//  Created by Artem Chabannyi on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onAlert() {
        Alert {
            Title("Alert title")
            Message("Alert Message")
            Action(title: "Ok") { print("Ok action") }
            Action.cancel(title: "Cancel") { print("Cancel action") }
        }.present(on: self)
    }
    
    @IBAction func onActionSheet() {
        ActionSheet {
            Title("Action Sheet title")
            Message("Action Sheet Message")
            Action(title: "Ok") { print("Ok action") }
            Action(title: "Destructive-1", style: .destructive) { print("Destructive-1 action") }
            Action.destructive(title: "Destructive-2") { print("Destructive-2 action") }
            Action.cancel(title: "Cancel") { print("Cancel action") }
        }.present(on: self)
    }
}

