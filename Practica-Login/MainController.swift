//
//  MainController.swift
//  Practica-Login
//
//  Created by Mac18 on 21/10/21.
//
import UIKit

class MainController: UIViewController {
    var username: String?
    
    @IBOutlet weak var usernamelbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        usernamelbl.text = username
    }
    @IBAction func homebtn(_ sender: Any) {
        performSegue(withIdentifier: "unwind", sender: self)
    }
 
    
}
